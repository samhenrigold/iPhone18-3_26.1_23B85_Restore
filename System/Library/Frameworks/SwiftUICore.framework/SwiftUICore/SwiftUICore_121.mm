uint64_t GlassContainer.Effect.description.getter()
{
  v1 = *(v0 + 192);
  _StringGuts.grow(_:)(18);

  v2 = GlassContainer.DisplayMaterial.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v4 = MEMORY[0x193ABF1C0](v1, &type metadata for GlassContainer.Entry);
  MEMORY[0x193ABEDD0](v4);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0x28746365666645;
}

uint64_t specialized static GlassContainer.Appearance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a2 + 16);
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      v8 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
      if (v8 && v2 == v5)
      {
        return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56))))) & 1;
      }
    }

    return 0;
  }

  if (v3 != v6)
  {
    v4 = 0;
  }

  if (v4 != 1 || v2 != v5)
  {
    return 0;
  }

  return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56))))) & 1;
}

BOOL specialized static GlassContainer.ScalePulse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v6 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 32) == *(a2 + 32))
  {
    v20 = v2;
    v21 = v3;
    v7 = *(a1 + 152);
    v18[6] = *(a1 + 136);
    v18[7] = v7;
    v18[8] = *(a1 + 168);
    v19 = *(a1 + 184);
    v8 = *(a1 + 88);
    v18[2] = *(a1 + 72);
    v18[3] = v8;
    v9 = *(a1 + 120);
    v18[4] = *(a1 + 104);
    v18[5] = v9;
    v10 = *(a1 + 56);
    v18[0] = *(a1 + 40);
    v18[1] = v10;
    v11 = *(a2 + 152);
    v16[6] = *(a2 + 136);
    v16[7] = v11;
    v16[8] = *(a2 + 168);
    v17 = *(a2 + 184);
    v12 = *(a2 + 88);
    v16[2] = *(a2 + 72);
    v16[3] = v12;
    v13 = *(a2 + 120);
    v16[4] = *(a2 + 104);
    v16[5] = v13;
    v14 = *(a2 + 56);
    v16[0] = *(a2 + 40);
    v16[1] = v14;
    return specialized static GlassContainer.ScalePulseSettings.== infix(_:_:)(v18, v16);
  }

  return v4;
}

BOOL specialized static GlassContainer.ResolvedPhase.== infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      if ((a2 & 0xC000) == 0x4000)
      {
        return ((a2 ^ a1) & 1) == 0;
      }
    }

    else if (a2 == 0x8000)
    {
      return 1;
    }

    return 0;
  }

  if (a2 >= 0x4000u)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0x100) == 0;
}

BOOL specialized static GlassContainer.TranslationKick.== infix(_:_:)(void *a1, void *a2)
{
  v2 = (a1 + 3);
  v3 = (a2 + 3);
  if (*a1 == *a2)
  {
    v4 = a2[2];
    v5 = a1[2];
    v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo6CGSizeV_Tt1g5(a1[1], a2[1]);
    v7 = 0;
    if ((v6 & 1) != 0 && v5 == v4)
    {
      v8 = v2[3];
      v15[2] = v2[2];
      v15[3] = v8;
      v16 = v2[4].f64[0];
      v9 = v2[1];
      v15[0] = *v2;
      v15[1] = v9;
      v10 = v3[3];
      v13[2] = v3[2];
      v13[3] = v10;
      v14 = v3[4].f64[0];
      v11 = v3[1];
      v13[0] = *v3;
      v13[1] = v11;
      return specialized static GlassContainer.TranslationKickSettings.== infix(_:_:)(v15, v13);
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

BOOL specialized static GlassContainer.TransitionState.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v62 = a1[2];
  v63 = v4;
  v5 = *(a1 + 9);
  *&v64 = *(a1 + 8);
  v6 = a1[1];
  v60 = *a1;
  v61 = v6;
  v7 = *(a1 + 10);
  v8 = *(a1 + 11);
  v9 = a1[19];
  v72 = a1[18];
  v73 = v9;
  v10 = a1[20];
  v11 = a1[21];
  v12 = a1[23];
  v76 = a1[22];
  v77 = v12;
  v74 = v10;
  v75 = v11;
  v13 = a2[3];
  v50 = a2[2];
  v51 = v13;
  v14 = *(a2 + 9);
  *&v52 = *(a2 + 8);
  v15 = a2[1];
  v48 = *a2;
  v49 = v15;
  v16 = *(a2 + 10);
  v17 = *(a2 + 11);
  v18 = a2[19];
  v78 = a2[18];
  v79 = v18;
  v19 = a2[20];
  v20 = a2[21];
  v21 = a2[23];
  v82 = a2[22];
  v83 = v21;
  v80 = v19;
  v81 = v20;
  v22 = 0;
  if ((specialized static GlassContainer.Appearance.== infix(_:_:)(&v60, &v48) & 1) != 0 && v5 == v14 && v7 == v16 && v8 == v17)
  {
    v23 = a1[15];
    v68 = a1[14];
    v69 = v23;
    v24 = a1[17];
    v70 = a1[16];
    v71 = v24;
    v25 = a1[11];
    v64 = a1[10];
    v65 = v25;
    v26 = a1[13];
    v66 = a1[12];
    v67 = v26;
    v27 = a1[7];
    v60 = a1[6];
    v61 = v27;
    v28 = a1[9];
    v62 = a1[8];
    v63 = v28;
    v29 = a2[15];
    v56 = a2[14];
    v57 = v29;
    v30 = a2[17];
    v58 = a2[16];
    v59 = v30;
    v31 = a2[11];
    v52 = a2[10];
    v53 = v31;
    v32 = a2[13];
    v54 = a2[12];
    v55 = v32;
    v33 = a2[7];
    v48 = a2[6];
    v49 = v33;
    v34 = a2[9];
    v50 = a2[8];
    v51 = v34;
    if (specialized static GlassContainer.ScalePulse.== infix(_:_:)(&v60, &v48))
    {
      v44 = v74;
      v45 = v75;
      v46 = v76;
      v47 = v77;
      v42 = v72;
      v43 = v73;
      v38 = v80;
      v39 = v81;
      v40 = v82;
      v41 = v83;
      v36 = v78;
      v37 = v79;
      v22 = specialized static GlassContainer.TranslationKick.== infix(_:_:)(&v42, &v36);
      v50 = v38;
      v51 = v39;
      v52 = v40;
      v53 = v41;
      v48 = v36;
      v49 = v37;
      outlined init with copy of GlassContainer.TranslationKick(&v72, &v60);
      outlined init with copy of GlassContainer.TranslationKick(&v78, &v60);
      outlined destroy of GlassContainer.TranslationKick(&v48);
      v62 = v44;
      v63 = v45;
      v64 = v46;
      v65 = v47;
      v60 = v42;
      v61 = v43;
      outlined destroy of GlassContainer.TranslationKick(&v60);
    }

    else
    {
      return 0;
    }
  }

  return v22;
}

BOOL specialized static GlassContainer.Item.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!v2)
  {
    if (!v3)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:

    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v2 == v3)
  {
    swift_retain_n();
  }

  else
  {
    v7 = *(*v2 + 112);
    swift_retain_n();

    LOBYTE(v7) = v7(v8);

    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  return v4 == v5;
}

BOOL specialized static GlassContainer.Item.ID.Explicit.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2)
  {
    return v2 == v3;
  }

  v4 = *(**a1 + 112);

  LOBYTE(v4) = v4(v5);

  return (v4 & 1) != 0 && v2 == v3;
}

BOOL specialized static GlassContainer.DisplayMaterial.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v22 = *(a1 + 48);
  v19 = *(a1 + 56);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v20 = *(a1 + 28);
  v21 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a1 + 8);
  v14 = *(a2 + 8);
  v25 = *a1;
  v26 = v13;
  v23 = v6;
  v24 = v14;
  outlined copy of _Glass.Variant.ID(v25, v13);
  outlined copy of _Glass.Variant.ID(v6, v14);
  LOBYTE(v6) = static _Glass.Variant.ID.== infix(_:_:)(&v25, &v23);
  outlined consume of _Glass.Variant.ID(v23, v24);
  outlined consume of _Glass.Variant.ID(v25, v26);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (v3 > 0xFB)
  {
    outlined copy of _Glass.Variant.ID?(v2, v3);
    outlined copy of _Glass.Variant.ID?(v7, v8);
    if (v8 > 0xFB)
    {
      outlined consume of _Glass.Variant.ID?(v2, v3);
      goto LABEL_10;
    }

LABEL_7:
    outlined consume of _Glass.Variant.ID?(v2, v3);
    outlined consume of _Glass.Variant.ID?(v7, v8);
    return 0;
  }

  v25 = v2;
  v26 = v3;
  if (v8 > 0xFB)
  {
    outlined copy of _Glass.Variant.ID?(v2, v3);
    outlined copy of _Glass.Variant.ID?(v7, v8);
    outlined copy of _Glass.Variant.ID?(v2, v3);
    outlined consume of _Glass.Variant.ID(v2, v3);
    goto LABEL_7;
  }

  v23 = v7;
  v24 = v8;
  outlined copy of _Glass.Variant.ID?(v2, v3);
  outlined copy of _Glass.Variant.ID?(v7, v8);
  outlined copy of _Glass.Variant.ID?(v2, v3);
  v16 = static _Glass.Variant.ID.== infix(_:_:)(&v25, &v23);
  outlined consume of _Glass.Variant.ID(v23, v24);
  outlined consume of _Glass.Variant.ID(v25, v26);
  outlined consume of _Glass.Variant.ID?(v2, v3);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v4)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == v9)
    {
      v17 = v10;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v22)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    v18 = v21;
    if (v5 != v11)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (!v19)
  {
    return !v12;
  }

  return v12 && v19 == v12;
}

uint64_t outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(uint64_t a1)
{
  type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized static GlassContainer.Entry.GroupID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 9);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  v16 = *a1;
  v17 = v9;
  v14 = v5;
  v15 = v10;
  outlined copy of _Glass.Variant.ID(v16, v9);
  outlined copy of _Glass.Variant.ID(v5, v10);
  LOBYTE(v5) = specialized static _Glass.Variant.ID.== infix(_:_:)(&v16, &v14);
  outlined consume of _Glass.Variant.ID(v14, v15);
  outlined consume of _Glass.Variant.ID(v16, v17);
  result = 0;
  if ((v5 & 1) != 0 && ((v2 ^ v6) & 1) == 0)
  {
    if (v3 == v7)
    {
      return v4 == v8;
    }

    v12 = *(*v3 + 112);

    LOBYTE(v12) = v12(v13);

    return (v12 & 1) != 0 && v4 == v8;
  }

  return result;
}

BOOL specialized static GlassContainer.Entry.ModelID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v18 = *(a2 + 24);
      v19 = v3;
      LOWORD(v20) = v2 & 0x1FF;
      v21 = v5;
      v22 = v4;
      v15 = v8;
      LOWORD(v16) = v7 & 0x1FF;
      v17 = v10;
      outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 0);
      outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 0);
      outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      v12 = specialized static GlassContainer.Entry.GroupID.== infix(_:_:)(&v19, &v15);
      outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 0);
      outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 0);
      outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      return v12;
    }

    goto LABEL_11;
  }

  if (v6 != 1)
  {
    if (v11 == 2 && (v7 | v8 | v10 | v9) == 0)
    {
      outlined consume of GlassContainer.Entry.ModelID(*a1, v2, v5, v4, 2);
      outlined consume of GlassContainer.Entry.ModelID(0, 0, 0, 0, 2);
      return 1;
    }

    goto LABEL_11;
  }

  if (v11 != 1)
  {
LABEL_11:
    outlined copy of GlassContainer.Entry.ModelID(*a2, *(a2 + 8), v10, v9, v11);
    outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, v6);
    outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, v6);
    outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, v11);
    return 0;
  }

  LODWORD(v19) = *a1;
  v20 = v2;
  v21 = v5;
  LODWORD(v15) = v8;
  v16 = v7;
  v17 = v10;
  outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 1);
  outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 1);
  outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  v12 = specialized static GlassContainer.Item.ID.== infix(_:_:)(&v19, &v15);
  outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 1);
  outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 1);
  outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  return v12;
}

void destroy for GlassContainer.DisplayMaterial.ID(uint64_t a1)
{
  outlined consume of _Glass.Variant.ID(*a1, *(a1 + 8));
  v2 = *(a1 + 24);
  if (v2 <= 0xFB)
  {
    v3 = *(a1 + 16);

    outlined consume of _Glass.Variant.ID(v3, v2);
  }
}

uint64_t initializeWithCopy for GlassContainer.DisplayMaterial.ID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  if (v6 <= 0xFB)
  {
    v7 = *(a2 + 16);
    outlined copy of _Glass.Variant.ID(v7, *(a2 + 24));
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for GlassContainer.DisplayMaterial.ID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.ID(v6, v7);
  v8 = *(a2 + 24);
  if (*(a1 + 24) <= 0xFBu)
  {
    if (v8 <= 0xFB)
    {
      v12 = *(a2 + 16);
      outlined copy of _Glass.Variant.ID(v12, *(a2 + 24));
      v13 = *(a1 + 16);
      *(a1 + 16) = v12;
      v14 = *(a1 + 24);
      *(a1 + 24) = v8;
      outlined consume of _Glass.Variant.ID(v13, v14);
    }

    else
    {
      outlined destroy of _Glass.Variant.ID(a1 + 16);
      v10 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v10;
    }
  }

  else if (v8 <= 0xFB)
  {
    v11 = *(a2 + 16);
    outlined copy of _Glass.Variant.ID(v11, *(a2 + 24));
    *(a1 + 16) = v11;
    *(a1 + 24) = v8;
  }

  else
  {
    v9 = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = v9;
  }

  v15 = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = v15;
  v16 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v16;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for GlassContainer.DisplayMaterial.ID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Glass.Variant.ID(v5, v6);
  v7 = *(a1 + 24);
  if (v7 <= 0xFB)
  {
    v8 = *(a2 + 24);
    if (v8 <= 0xFB)
    {
      v9 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v8;
      outlined consume of _Glass.Variant.ID(v9, v7);
      goto LABEL_6;
    }

    outlined destroy of _Glass.Variant.ID(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.DisplayMaterial.ID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 64))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GlassContainer.DisplayMaterial.ID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t assignWithTake for GlassContainer.Storage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for GlassContainer.DataStorage(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithCopy for GlassContainer.ItemData(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t assignWithTake for GlassContainer.ItemData(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for GlassContainer.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v9 = *(a2 + 104);
  if (*(a1 + 104) == 1)
  {
    if (v9 == 1)
    {
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
    }

    else
    {
      v14 = *(a2 + 80);
      v15 = *(a2 + 88);
      outlined copy of _Glass.Variant.Role(v14, v15);
      *(a1 + 80) = v14;
      *(a1 + 88) = v15;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (v9 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
    v12 = *(a2 + 105);
    v13 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v13;
    *(a1 + 105) = v12;
  }

  else
  {
    v16 = *(a2 + 80);
    v17 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v16, v17);
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    *(a1 + 80) = v16;
    *(a1 + 88) = v17;
    outlined consume of _Glass.Variant.Role(v18, v19);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);

    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
  }

  v20 = *(a2 + 152);
  if (*(a1 + 152) == 1)
  {
    if (v20 == 1)
    {
      v21 = *(a2 + 128);
      v22 = *(a2 + 144);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 128) = v21;
      *(a1 + 144) = v22;
    }

    else
    {
      v25 = *(a2 + 128);
      v26 = *(a2 + 136);
      outlined copy of _Glass.Variant.Role(v25, v26);
      *(a1 + 128) = v25;
      *(a1 + 136) = v26;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (v20 == 1)
  {
    outlined destroy of _Glass(a1 + 128);
    v23 = *(a2 + 153);
    v24 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v24;
    *(a1 + 153) = v23;
  }

  else
  {
    v27 = *(a2 + 128);
    v28 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v27, v28);
    v29 = *(a1 + 128);
    v30 = *(a1 + 136);
    *(a1 + 128) = v27;
    *(a1 + 136) = v28;
    outlined consume of _Glass.Variant.Role(v29, v30);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
  }

  v31 = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 172) = v31;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  return a1;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for GlassContainer.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  if (*(a1 + 104) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 104);
  if (v6 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
LABEL_4:
    v7 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v7;
    *(a1 + 105) = *(a2 + 105);
    goto LABEL_6;
  }

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  outlined consume of _Glass.Variant.Role(v8, v9);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
LABEL_6:
  if (*(a1 + 152) != 1)
  {
    v10 = *(a2 + 152);
    if (v10 != 1)
    {
      v12 = *(a1 + 128);
      v13 = *(a1 + 136);
      *(a1 + 128) = *(a2 + 128);
      outlined consume of _Glass.Variant.Role(v12, v13);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = v10;

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 128);
  }

  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  *(a1 + 153) = *(a2 + 153);
LABEL_11:
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Effect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.Effect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.Entry.GroupID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = *(a2 + 9);
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Entry.GroupID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.ID(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Entry.GroupID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Glass.Variant.ID(v5, v6);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t initializeWithCopy for GlassContainer.TransitionState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 112);
  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  v8 = *(a2 + 160);
  v9 = *(a2 + 176);
  v10 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v10;
  *(a1 + 160) = v8;
  *(a1 + 176) = v9;
  v11 = *(a2 + 224);
  v12 = *(a2 + 240);
  v13 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v13;
  *(a1 + 224) = v11;
  *(a1 + 240) = v12;
  v14 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v14;
  *(a1 + 304) = *(a2 + 304);
  v15 = *(a2 + 360);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v15;
  *(a1 + 376) = *(a2 + 376);
  v16 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v16;

  return a1;
}

uint64_t assignWithCopy for GlassContainer.TransitionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  return a1;
}

uint64_t assignWithTake for GlassContainer.TransitionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  v4 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v4;

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v5 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v5;
  v6 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.TransitionState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 296);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.TransitionState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 296) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for GlassContainer.Item.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Item.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Item.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

double destroy for GlassContainer.Item(void *a1)
{

  outlined consume of _Glass.Variant.Role(a1[4], a1[5]);

  if (a1[28] != 1)
  {
  }

  if (a1[31] != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);

  outlined copy of _Glass.Variant.Role(v5, v6);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v9;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v10 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v10;
  v11 = *(a2 + 224);

  if (v11 == 1)
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    v12 = *(a2 + 232);
    *(a1 + 224) = v11;
    *(a1 + 232) = v12;
  }

  v13 = *(a2 + 248);
  if (v13 == 1)
  {
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
  }

  else
  {
    *(a1 + 240) = *(a2 + 240);
    v14 = *(a2 + 256);
    *(a1 + 248) = v13;
    *(a1 + 256) = v14;
  }

  *(a1 + 328) = *(a2 + 328);
  v15 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v15;
  v16 = *(a2 + 280);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = v16;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  v17 = *(a2 + 360);
  v18 = *(a2 + 376);
  v19 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v19;
  *(a1 + 360) = v17;
  *(a1 + 376) = v18;
  v20 = *(a2 + 424);
  v21 = *(a2 + 440);
  v22 = *(a2 + 472);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = v22;
  *(a1 + 424) = v20;
  *(a1 + 440) = v21;
  v23 = *(a2 + 488);
  v24 = *(a2 + 504);
  v25 = *(a2 + 536);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 536) = v25;
  *(a1 + 488) = v23;
  *(a1 + 504) = v24;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v26 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v26;
  *(a1 + 640) = *(a2 + 640);
  v27 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v27;
  *(a1 + 648) = *(a2 + 648);

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  outlined copy of _Glass.Variant.Role(v4, v5);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  v8 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v8;
  v9 = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 152) = v9;
  *(a1 + 177) = *(a2 + 177);
  v10 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v10;
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  v11 = *(a2 + 224);
  if (*(a1 + 224) == 1)
  {
    if (v11 == 1)
    {
      v12 = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 216) = v12;
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
    }
  }

  else if (v11 == 1)
  {
    outlined destroy of GlassContainer.Item.ID(a1 + 216);
    v13 = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v13;
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);

    *(a1 + 232) = *(a2 + 232);
  }

  v14 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v14 == 1)
    {
      v15 = *(a2 + 240);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 240) = v15;
    }

    else
    {
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
    }
  }

  else
  {
    if (v14 == 1)
    {
      outlined destroy of GlassContainer.Item.ID(a1 + 240);
      v16 = *(a2 + 256);
      *(a1 + 240) = *(a2 + 240);
    }

    else
    {
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);

      v16 = *(a2 + 256);
    }

    *(a1 + 256) = v16;
  }

  *(a1 + 264) = *(a2 + 264);
  v17 = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 272) = v17;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  if (*(a1 + 224) == 1)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 224);
  if (v7 == 1)
  {
    outlined destroy of GlassContainer.Item.ID(a1 + 216);
LABEL_4:
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_6;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v7;

  *(a1 + 232) = *(a2 + 232);
LABEL_6:
  if (*(a1 + 248) != 1)
  {
    v8 = *(a2 + 248);
    if (v8 != 1)
    {
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v8;

      goto LABEL_11;
    }

    outlined destroy of GlassContainer.Item.ID(a1 + 240);
  }

  *(a1 + 240) = *(a2 + 240);
LABEL_11:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  v9 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v9;
  v10 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v10;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  v11 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v11;
  v12 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v12;
  v13 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v13;
  v14 = *(a2 + 512);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = v14;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  v15 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v15;
  v16 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v16;
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 649))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.Item(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 648) = 0;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 649) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 649) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type GlassContainer.ResolvedPhase.PreparingConfiguration and conformance GlassContainer.ResolvedPhase.PreparingConfiguration()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.ResolvedPhase.PreparingConfiguration and conformance GlassContainer.ResolvedPhase.PreparingConfiguration)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.ResolvedPhase.PreparingConfiguration, &type metadata for GlassContainer.ResolvedPhase.PreparingConfiguration, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.ResolvedPhase.PreparingConfiguration and conformance GlassContainer.ResolvedPhase.PreparingConfiguration);
  }
}

void lazy protocol witness table accessor for type GlassContainer.ResolvedUpdate and conformance GlassContainer.ResolvedUpdate()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.ResolvedUpdate and conformance GlassContainer.ResolvedUpdate)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.ResolvedUpdate, &type metadata for GlassContainer.ResolvedUpdate, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.ResolvedUpdate and conformance GlassContainer.ResolvedUpdate);
  }
}

void lazy protocol witness table accessor for type GlassContainer.Entry.GroupID and conformance GlassContainer.Entry.GroupID()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.GroupID and conformance GlassContainer.Entry.GroupID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.Entry.GroupID, &type metadata for GlassContainer.Entry.GroupID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.Entry.GroupID and conformance GlassContainer.Entry.GroupID);
  }
}

void specialized GlassContainer.Storage.matches(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a1 + 16))
  {

    if (v2)
    {
      v5 = (a2 + 32);
      v6 = (a1 + 32);
      do
      {
        memcpy(v8, v6, 0x154uLL);
        memcpy(__dst, v5, sizeof(__dst));
        GlassContainer.Entry.matches(_:)(v8);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v6 += 344;
        v5 += 344;
        --v2;
      }

      while (v2);
    }
  }
}

void specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v71 = *(a1 + 16);
  if (!v71)
  {
    return;
  }

  v6 = a3;
  v7 = a2;
  v8 = 0;
  v70 = a1 + 32;
  while (1)
  {
    v9 = v70 + 200 * v8;
    v10 = *(v9 + 48);
    v89[2] = *(v9 + 32);
    v89[3] = v10;
    v11 = *(v9 + 112);
    v89[6] = *(v9 + 96);
    v89[7] = v11;
    v12 = *(v9 + 80);
    v89[4] = *(v9 + 64);
    v89[5] = v12;
    v13 = *(v9 + 192);
    v90 = v13;
    v14 = *(v9 + 176);
    v89[10] = *(v9 + 160);
    v89[11] = v14;
    v15 = *(v9 + 144);
    v89[8] = *(v9 + 128);
    v89[9] = v15;
    v16 = *(v9 + 16);
    v89[0] = *v9;
    v89[1] = v16;
    v82 = *(v13 + 16);
    if (v82)
    {
      break;
    }

LABEL_4:
    if (++v8 == v71)
    {
      return;
    }
  }

  v72 = v8;
  v81 = v13 + 32;
  outlined init with copy of GlassContainer.Effect(v89, __dst);

  v17 = 0;
  while (1)
  {
    memcpy(__dst, (v81 + 344 * v17), sizeof(__dst));
    if (!*&__dst[64])
    {
      goto LABEL_9;
    }

    v77 = *&__dst[8];
    v78 = *__dst;
    v93 = *__dst;
    v76 = *&__dst[16];
    v94 = *&__dst[16];
    v80 = *&__dst[24];
    v79 = __dst[32];
    v95 = __dst[32];
    v87[0] = v7;
    v87[1] = v6;
    v18 = *(**&__dst[64] + 120);
    outlined init with copy of GlassContainer.Entry(__dst, &v83);

    v18(&v91, v87);
    v19 = *(a4 + 8);
    swift_beginAccess();
    v20 = *(v19 + 184);
    v21 = *(v20 + 16);

    if (v21)
    {
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(&v93);
      if (v23)
      {
        break;
      }
    }

    swift_endAccess();

LABEL_8:
    outlined destroy of GlassContainer.Entry(__dst);
LABEL_9:
    if (++v17 == v82)
    {
      outlined destroy of GlassContainer.Effect(v89);

      v8 = v72;
      goto LABEL_4;
    }
  }

  v24 = a4;
  v25 = *(v20 + 56) + 32 * v22;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 12);
  v29 = *(v25 + 16);
  v30 = *(v25 + 20);
  v31 = *(v25 + 24);
  v32 = *(v19 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87[0] = *(v19 + 184);
  v34 = v87[0];
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(&v93);
  v37 = *(v34 + 16);
  v38 = (v35 & 1) == 0;
  v39 = v37 + v38;
  if (!__OFADD__(v37, v38))
  {
    v40 = v35;
    if (*(v34 + 24) < v39)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(&v93);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_56;
      }

      v36 = v41;
      v43 = v87[0];
      if ((v40 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_20:
      v44 = v43[7] + 32 * v36;
      *v44 = v26;
      *(v44 + 8) = v27;
      *(v44 + 12) = v28;
      *(v44 + 16) = v29;
      *(v44 + 20) = v30;
      *(v44 + 24) = v31;
      *(v44 + 28) = v32;
LABEL_24:
      *(v19 + 184) = v43;
      swift_endAccess();

      a4 = v24;
      v51 = *(v24 + 24);
      v52 = *(v51 + 2);
      v6 = a3;
      if (!v52)
      {
        goto LABEL_44;
      }

      v53 = 0;
      v54 = 60;
      while (1)
      {
        v55 = *&v51[v54 - 28] == v26 && *&v51[v54 - 20] == v27;
        v56 = v55 && *&v51[v54 - 16] == v28;
        v57 = v56 && *&v51[v54 - 12] == v29;
        v58 = v57 && *&v51[v54 - 8] == v30;
        if (v58 && *&v51[v54 - 4] == v31)
        {
          break;
        }

        ++v53;
        v54 += 32;
        if (v52 == v53)
        {
          goto LABEL_44;
        }
      }

      if ((v26 & ~*a5) != 0)
      {
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *(v24 + 24) = v51;
        v7 = a2;
        if ((v59 & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
          *(v24 + 24) = v51;
        }

        if (v53 >= *(v51 + 2))
        {
          goto LABEL_54;
        }

        v60 = &v51[v54];
        *(v60 - 20) = v91;
        *(v60 - 1) = v92;
        *(*(v24 + 24) + v54) = *(v24 + 32);
        v61 = *(v24 + 8);
        v62 = *(v24 + 24) + v54;
        v63 = *(v62 - 28);
        v64 = *(v62 - 4);
        v69 = *(v62 - 20);
        swift_beginAccess();
        v65 = *(v61 + 192);
        v96 = v63;
        v97 = v69;
        v98 = v64;
        v99 = v65;
        outlined copy of GlassContainer.Entry.ModelID(v78, v77, v76, v80, v79);

        v66 = swift_isUniquelyReferenced_nonNull_native();
        v87[0] = *(v61 + 184);
        *(v61 + 184) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v96, &v93, v66);
        outlined consume of GlassContainer.Entry.ModelID(v78, v77, v76, v80, v79);
        *(v61 + 184) = v87[0];
        swift_endAccess();

        outlined copy of GlassContainer.Entry.ModelID(v78, v77, v76, v80, v79);
        specialized Set._Variant.insert(_:)(&v83, &v93);
        outlined consume of GlassContainer.Entry.ModelID(v83.i64[0], v83.i64[1], v84, v85, v86);
        v67 = *(v24 + 24);
        if (v53 >= *(v67 + 16))
        {
          goto LABEL_55;
        }

        v68 = *(v67 + v54 - 28);

        if ((v68 & ~*a5) != 0)
        {
          *a5 |= v68;
        }
      }

      else
      {
LABEL_44:

        v7 = a2;
      }

      goto LABEL_8;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = v87[0];
      if (v35)
      {
        goto LABEL_20;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v43 = v87[0];
      if (v40)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v43[(v36 >> 6) + 8] |= 1 << v36;
    v45 = v43[6] + 40 * v36;
    v46 = v94;
    *v45 = v93;
    *(v45 + 16) = v46;
    *(v45 + 32) = v95;
    v47 = v43[7] + 32 * v36;
    *v47 = v26;
    *(v47 + 8) = v27;
    *(v47 + 12) = v28;
    *(v47 + 16) = v29;
    *(v47 + 20) = v30;
    *(v47 + 24) = v31;
    *(v47 + 28) = v32;
    v48 = v43[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_53;
    }

    v43[2] = v50;
    outlined copy of GlassContainer.Entry.ModelID(v78, v77, v76, v80, v79);
    goto LABEL_24;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v10 = 0;
    v22 = a1 + 32;
    do
    {
      v11 = v22 + 200 * v10;
      v12 = *(v11 + 48);
      v26[2] = *(v11 + 32);
      v26[3] = v12;
      v13 = *(v11 + 112);
      v26[6] = *(v11 + 96);
      v26[7] = v13;
      v14 = *(v11 + 80);
      v26[4] = *(v11 + 64);
      v26[5] = v14;
      v27 = *(v11 + 192);
      v15 = *(v11 + 176);
      v26[10] = *(v11 + 160);
      v26[11] = v15;
      v16 = *(v11 + 144);
      v26[8] = *(v11 + 128);
      v26[9] = v16;
      v17 = *(v11 + 16);
      v26[0] = *v11;
      v26[1] = v17;
      v18 = v27;
      v19 = *(v27 + 16);
      if (v19)
      {
        outlined init with copy of GlassContainer.Effect(v26, __dst);

        v20 = v19 - 1;
        for (i = 32; ; i += 344)
        {
          memcpy(__dst, (v18 + i), 0x154uLL);
          memcpy(v24, (v18 + i), 0x154uLL);
          outlined init with copy of GlassContainer.Entry(__dst, v23);
          closure #1 in GlassContainerResolvedTintConfig.updateRemainingTints(resolved:updatedIDs:env:)(v24, a2, a3, a4, a5);
          outlined destroy of GlassContainer.Entry(__dst);
          if (!v20)
          {
            break;
          }

          --v20;
        }

        outlined destroy of GlassContainer.Effect(v26);
      }

      ++v10;
    }

    while (v10 != v5);
  }
}

void outlined copy of _Glass.Variant.ID?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    outlined copy of _Glass.Variant.ID(a1, a2);
  }
}

void lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef()
{
  if (!lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef)
  {
    type metadata accessor for AGSubgraphRef(255);
    swift_getWitnessTable(protocol conformance descriptor for AGSubgraphRef, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef);
  }
}

{
  if (!lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef)
  {
    type metadata accessor for AGSubgraphRef(255);
    swift_getWitnessTable(protocol conformance descriptor for AGSubgraphRef, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef);
  }
}

uint64_t outlined init with copy of GlassContainer.TranslationKick(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 24) = *(a1 + 24);

  return a2;
}

uint64_t initializeWithCopy for GlassContainer.TranslationKick(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for GlassContainer.TranslationKick(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  return a1;
}

uint64_t assignWithTake for GlassContainer.TranslationKick(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.TranslationKick(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GlassContainer.TranslationKick(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GlassContainer.ScalePulse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.ScalePulse(uint64_t result, unsigned int a2, unsigned int a3)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type GlassContainer.Item.ID.Explicit and conformance GlassContainer.Item.ID.Explicit()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.Item.ID.Explicit and conformance GlassContainer.Item.ID.Explicit)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.Item.ID.Explicit, &type metadata for GlassContainer.Item.ID.Explicit, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.Item.ID.Explicit and conformance GlassContainer.Item.ID.Explicit);
  }
}

void lazy protocol witness table accessor for type GlassContainer.DisplayMaterial.ComparableID and conformance GlassContainer.DisplayMaterial.ComparableID()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ComparableID and conformance GlassContainer.DisplayMaterial.ComparableID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.DisplayMaterial.ComparableID, &type metadata for GlassContainer.DisplayMaterial.ComparableID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ComparableID and conformance GlassContainer.DisplayMaterial.ComparableID);
  }
}

void (*Transaction.isContinuous.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.isContinuous.modify;
}

double key path setter for Transaction.isContinuous : Transaction(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *, __n128))
{
  v7 = *a1;

  (a5)(a2, v7, &v9);

  return result;
}

void (*Transaction.fromScrollView.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.fromScrollView.modify;
}

void Transaction.isContinuous.modify(uint64_t a1, char a2, void (*a3)(void, uint64_t, void *, __n128))
{
  v5 = *a1;
  v6 = *(*a1 + 40);

  if (a2)
  {
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v8 = v5 + 1;
    v7 = v6;
  }

  (a3)(v5[2], v7, v8);

  free(v5);
}

uint64_t keypath_getTm_1@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result & 1;
  return result;
}

uint64_t static DynamicContainerAdaptor<>.containsItem(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 32);
  v7 = swift_checkMetadataState();
  return v6(a2, v7, AssociatedConformanceWitness) & 1;
}

uint64_t DynamicContainerAdaptor<>.foreachItem(items:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = a3;
  v29 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = swift_getAssociatedTypeWitness();
  v25 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  (*(v14 + 16))(v16, v29, v13, v18);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v28 = v20;
  v29 = v17;
  dispatch thunk of IteratorProtocol.next()();
  v21 = *(v7 + 48);
  if (v21(v12, 1, AssociatedTypeWitness) != 1)
  {
    v22 = *(v7 + 32);
    do
    {
      v22(v9, v12, AssociatedTypeWitness);
      v26(v9);
      (*(v7 + 8))(v9, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v21(v12, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v25 + 8))(v28, v29);
}

uint64_t closure #1 in static DynamicContainerAdaptor<>.containsItem(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 32);
  v7 = swift_checkMetadataState();
  return v6(a2, v7, AssociatedConformanceWitness) & 1;
}

uint64_t DynamicViewListItem.matchesIdentity(of:)(uint64_t a1)
{
  v2 = *(a1 + 76);
  if (*(v1 + 76))
  {
    if (!*(a1 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 72) != *(a1 + 72))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*v1 != *a1 || *(v1 + 4) != *(a1 + 4))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(v1 + 8);

  v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v6, v5);

  return v7 & 1;
}

uint64_t protocol witness for DynamicContainerItem.count.getter in conformance DynamicViewListItem()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for DynamicContainerItem.needsTransitions.getter in conformance DynamicViewListItem()
{
  v1 = *(v0 + 64);
  CanTransitiondJ0V_Tt0B5 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, v1);
  v3 = 0;
  if (CanTransitiondJ0V_Tt0B5)
  {
    if (one-time initialization token for opacity != -1)
    {
      swift_once();
    }

    v4 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v1);
    v5 = (*(*v4 + 96))(v4);

    v3 = v5 ^ 1;
  }

  return v3 & 1;
}

uint64_t specialized closure #1 in static DynamicContainerAdaptor<>.containsItem(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *a2 || *(a1 + 20) != *(a2 + 4))
  {
    return 1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 24);

  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v5, v4);

  return (v6 ^ 1) & 1;
}

BOOL protocol witness for static DynamicContainerAdaptor.containsItem(_:_:) in conformance DynamicLayoutViewAdaptor(void *a1, uint64_t a2)
{
  v8 = 0;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v6[2] = a2;
  v7 = 1;
  return (ViewList.applySublists(from:list:to:)(&v8, 0x100000000uLL, partial apply for specialized closure #1 in static DynamicContainerAdaptor<>.containsItem(_:_:), v6, v3, v4) & 1) == 0;
}

__n128 __swift_memcpy77_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for DynamicViewListItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewListItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
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

uint64_t storeEnumTagSinglePayload for DynamicViewListItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ObservedObject.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

void *assignWithTake for ObservedObject(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t *assignWithCopy for ObservedObjectPropertyBox(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for ObservedObjectPropertyBox(void *a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v4;
  swift_unknownObjectRelease();
  return a1;
}

void specialized UnaryLayout.spacing(in:child:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a3))
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v4 = *InputValue;
  v5 = one-time initialization token for lockAssertionsAreEnabled;

  if (v5 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v4 + 112))();
  }
}

SwiftUI::Spacing UnaryLayout.spacing(in:child:)()
{
  return LayoutProxy.spacing()();
}

{
  return UnaryLayout.spacing(in:child:)();
}

uint64_t static UnaryLayout._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v10[4] = *(a2 + 64);
  v11 = *(a2 + 80);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v12 = v6;
  return (*(a6 + 80))(&v12, v10, a3, a4, a5);
}

void lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>);
  }
}

void type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>);
  }
}

ValueMetadata *Font.StaticModifierTag.type.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (!(v5 >> 6))
  {
    return type metadata accessor for Font.UndoModifier(0, off_1E7243BB8[v5], off_1E7243BD0[v5], a4);
  }

  if (v5 >> 6 == 1)
  {
    return off_1E7243BB8[v5 & 0x3F];
  }

  return &type metadata for Font.MonospacedDigitModifier;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.StaticModifierTag.CodingKeys()
{
  v1 = 1868852853;
  if (*v0 != 1)
  {
    v1 = 28516;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636170736F6E6F6DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.StaticModifierTag.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Font.StaticModifierTag.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StaticModifierTag.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StaticModifierTag.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StaticModifierTag.DoCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StaticModifierTag.DoCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StaticModifierTag.MonospacedDigitCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StaticModifierTag.MonospacedDigitCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StaticModifierTag.UndoCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StaticModifierTag.UndoCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.StaticModifierTag.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys, &unk_1F007D008, MEMORY[0x1E69E6F58]);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v23 - v5;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StaticModifierTag.UndoCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys, &unk_1F007CF78, v3);
  v26 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StaticModifierTag.MonospacedDigitCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys, &unk_1F007CEE8, v3);
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StaticModifierTag.CodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys, &unk_1F007CEC8, v3);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!(v15 >> 6))
  {
    v19 = v23;
    v34 = 1;
    lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys();
    v17 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v15;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag();
    v20 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v8, v20);
    return (*(v30 + 8))(v14, v17);
  }

  if (v15 >> 6 == 1)
  {
    v36 = 2;
    lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys();
    v16 = v27;
    v17 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v15 & 0x3F;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag();
    v18 = v29;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v16, v18);
    return (*(v30 + 8))(v14, v17);
  }

  v32 = 0;
  lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys();
  v22 = v31;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v24 + 8))(v11, v25);
  return (*(v30 + 8))(v14, v22);
}

void lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.DoCodingKeys, &unk_1F007D008, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.DoCodingKeys, &unk_1F007D008, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.DoCodingKeys, &unk_1F007D008, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.DoCodingKeys, &unk_1F007D008, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys);
  }
}

void lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.UndoCodingKeys, &unk_1F007CF78, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.UndoCodingKeys, &unk_1F007CF78, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.UndoCodingKeys, &unk_1F007CF78, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.UndoCodingKeys, &unk_1F007CF78, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys);
  }
}

void lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.MonospacedDigitCodingKeys, &unk_1F007CEE8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.MonospacedDigitCodingKeys, &unk_1F007CEE8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.MonospacedDigitCodingKeys, &unk_1F007CEE8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys);
  }
}

void lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.CodingKeys, &unk_1F007CEC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.CodingKeys, &unk_1F007CEC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.CodingKeys, &unk_1F007CEC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierTag.CodingKeys, &unk_1F007CEC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag()
{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag, &type metadata for Font.UndoableStaticModifierTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag, &type metadata for Font.UndoableStaticModifierTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag, &type metadata for Font.UndoableStaticModifierTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag);
  }
}

uint64_t Font.StaticModifierTag.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StaticModifierTag.DoCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys, &unk_1F007D008, MEMORY[0x1E69E6F48]);
  v35 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v34 - v5;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StaticModifierTag.UndoCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys, &unk_1F007CF78, v3);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v34 - v8;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StaticModifierTag.MonospacedDigitCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys, &unk_1F007CEE8, v3);
  v10 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StaticModifierTag.CodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys, &unk_1F007CEC8, v3);
  v14 = v13;
  v40 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys();
  v18 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v19 = v41;
    v20 = v42;
    v44 = v10;
    v21 = v43;
    v22 = v40;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v46 = v23;
    v47 = v23 + 32;
    v48 = 0;
    v49 = v24;
    v25 = specialized Collection<>.popFirst()();
    if (v25 == 3 || v48 != v49 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v30 = &type metadata for Font.StaticModifierTag;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v22 + 8))(v16, v14);
      swift_unknownObjectRelease();
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        v50 = 1;
        lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v26 = v39;
        lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag();
        v27 = v36;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v37 + 8))(v20, v27);
        (*(v22 + 8))(v16, v14);
        swift_unknownObjectRelease();
        *v26 = v50;
      }

      else
      {
        v50 = 2;
        lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v39;
        lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag();
        v33 = v35;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v38 + 8))(v21, v33);
        (*(v22 + 8))(v16, v14);
        swift_unknownObjectRelease();
        *v32 = v50 | 0x40;
      }
    }

    else
    {
      v50 = 0;
      lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v19 + 8))(v12, v44);
      (*(v22 + 8))(v16, v14);
      swift_unknownObjectRelease();
      *v39 = 0x80;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.UndoableStaticModifierTag.BoldCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.UndoableStaticModifierTag.BoldCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.UndoableStaticModifierTag.CodingKeys()
{
  v1 = 0x63696C617469;
  if (*v0 != 1)
  {
    v1 = 0x636170736F6E6F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684828002;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.UndoableStaticModifierTag.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Font.UndoableStaticModifierTag.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.UndoableStaticModifierTag.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.UndoableStaticModifierTag.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.UndoableStaticModifierTag.ItalicCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.UndoableStaticModifierTag.ItalicCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.UndoableStaticModifierTag.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.UndoableStaticModifierTag.MonospacedCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys, &unk_1F007CE38, MEMORY[0x1E69E6F58]);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - v5;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.UndoableStaticModifierTag.ItalicCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys, &unk_1F007CE18, v3);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - v7;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.UndoableStaticModifierTag.BoldCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys, &unk_1F007CDF8, v3);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.UndoableStaticModifierTag.CodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys, &unk_1F007CDD8, v3);
  v31 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = (v12 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys();
      v17 = v25;
      v18 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v26 + 8))(v17, v27);
      return (*v16)(v14, v18);
    }

    v34 = 2;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys();
    v10 = v28;
    v20 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v29;
    v21 = v30;
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys();
    v20 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v10, v21);
  return (*v16)(v14, v20);
}

void lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.MonospacedCodingKeys, &unk_1F007CE38, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.MonospacedCodingKeys, &unk_1F007CE38, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.MonospacedCodingKeys, &unk_1F007CE38, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys);
  }
}

void lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.ItalicCodingKeys, &unk_1F007CE18, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.ItalicCodingKeys, &unk_1F007CE18, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.ItalicCodingKeys, &unk_1F007CE18, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys);
  }
}

void lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.BoldCodingKeys, &unk_1F007CDF8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.BoldCodingKeys, &unk_1F007CDF8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.BoldCodingKeys, &unk_1F007CDF8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys);
  }
}

void lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.CodingKeys, &unk_1F007CDD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.CodingKeys, &unk_1F007CDD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.CodingKeys, &unk_1F007CDD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.UndoableStaticModifierTag.CodingKeys, &unk_1F007CDD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys);
  }
}

Swift::Int Font.UndoableStaticModifierTag.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t Font.UndoableStaticModifierTag.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.UndoableStaticModifierTag.MonospacedCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys, &unk_1F007CE38, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - v5;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.UndoableStaticModifierTag.ItalicCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys, &unk_1F007CE18, v3);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v7;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.UndoableStaticModifierTag.BoldCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys, &unk_1F007CDF8, v3);
  v9 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.UndoableStaticModifierTag.CodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys, &unk_1F007CDD8, v3);
  v13 = v12;
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys();
  v16 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_8;
  }

  v18 = v38;
  v17 = v39;
  v41 = a1;
  v19 = v15;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v42 = v20;
  v43 = v20 + 32;
  v44 = 0;
  v45 = v21;
  v22 = specialized Collection<>.popFirst()();
  if (v22 == 3 || v44 != v45 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v27 = &type metadata for Font.UndoableStaticModifierTag;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v40 + 8))(v15, v13);
    swift_unknownObjectRelease();
    a1 = v41;
LABEL_8:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  if (v22)
  {
    LODWORD(v32) = v22;
    v23 = v40;
    if (v22 == 1)
    {
      v46 = 1;
      lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v37;
      (*(v34 + 8))(v18, v35);
    }

    else
    {
      v46 = 2;
      lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v37;
      (*(v33 + 8))(v17, v36);
    }

    (*(v23 + 8))(v19, v13);
    swift_unknownObjectRelease();
    v30 = v32;
  }

  else
  {
    v30 = v22;
    v46 = 0;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v40;
    (*(v32 + 8))(v11, v9);
    (*(v31 + 8))(v15, v13);
    swift_unknownObjectRelease();
    v24 = v37;
  }

  *v24 = v30;
  v28 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

void type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void *static UndoableStaticFontModifier.tag.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 16))(&v4);
  *a2 = v4 | 0x40;
  return result;
}

void *static Font.UndoModifier.tag.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 16))(&v4);
  *a2 = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for Font.StaticModifierTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Font.StaticModifierTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for Font.StaticModifierTag(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *destructiveInjectEnumTag for Font.StaticModifierTag(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

uint64_t specialized Font.StaticModifierTag.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636170736F6E6F6DLL && a2 == 0xEF74696769446465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1868852853 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28516 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized Font.UndoableStaticModifierTag.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684828002 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63696C617469 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636170736F6E6F6DLL && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static DerivedLayout.layoutProperties.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t DerivedLayout.makeCache(subviews:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 17);
  (*(a3 + 32))(a2, a3, v9);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t DerivedLayout.updateCache(_:subviews:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  v12 = *a2;
  v13 = *(a2 + 1);
  v14 = *(a2 + 16);
  LOBYTE(a2) = *(a2 + 17);
  (*(a4 + 32))(a3, a4, v9);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v17, &v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance ZStackLayout@<X0>(uint64_t a1@<X0>, int64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  return _ZStackLayout.spacing(subviews:cache:)(&v6, a2);
}

uint64_t DerivedLayout.spacing(subviews:cache:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v18 - v11;
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 17);
  (*(a4 + 32))(a3, a4, v10);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v20, v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

void protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance ZStackLayout(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v9 = *(a5 + 17);
  v10 = *v6;
  v11 = v6[1];
  v12 = *a5;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  _ZStackLayout.sizeThatFits(proposal:subviews:cache:)(a1, a2 & 1, a3, a4 & 1, &v12, a6, v10, v11);
}

double DerivedLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a3;
  v27 = a6;
  v23 = a2;
  v24 = a4;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v22 - v14;
  v16 = *a5;
  v17 = *(a5 + 1);
  v18 = *(a5 + 16);
  LOBYTE(a5) = *(a5 + 17);
  (*(a8 + 32))(a7, a8, v13);
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = a5;
  v19 = *(swift_getAssociatedConformanceWitness() + 56);
  v29 = v23 & 1;
  v28 = v24 & 1;
  v20 = v19(v25);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  return v20;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance ZStackLayout(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a9 + 8);
  v12 = *(a9 + 16);
  v13 = *(a9 + 17);
  v14 = *v10;
  v15 = v10[1];
  v17 = *a9;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  return specialized _ZStackLayout.placeSubviews(in:proposal:subviews:cache:)(&v17, a1, a2, a3, a4, a10, v14, v15);
}

uint64_t DerivedLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v33 = a3;
  v34 = a6;
  v30 = a2;
  v31 = a4;
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v29 - v22;
  v24 = *a5;
  v25 = *(a5 + 1);
  v26 = *(a5 + 16);
  LOBYTE(a5) = *(a5 + 17);
  (*(a8 + 32))(a7, a8, v21);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = a5;
  v27 = *(swift_getAssociatedConformanceWitness() + 64);
  v36 = v30 & 1;
  v35 = v31 & 1;
  v27(v32, a9, a10, a11, a12);
  return (*(v20 + 8))(v23, AssociatedTypeWitness);
}

uint64_t DerivedLayout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v34 = a4;
  v35 = a7;
  v30 = a3;
  v31 = a5;
  v32 = a1;
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v30 - v22;
  v24 = *a6;
  v25 = *(a6 + 1);
  v26 = *(a6 + 16);
  LOBYTE(a6) = *(a6 + 17);
  (*(a13 + 32))(a8, a13, v21);
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = a6;
  v27 = *(swift_getAssociatedConformanceWitness() + 72);
  v37 = v30 & 1;
  v36 = v31 & 1;
  v28 = v27(v32, v33, a9, a10, a11, a12);
  (*(v20 + 8))(v23, AssociatedTypeWitness);
  return v28;
}

{
  v34 = a4;
  v35 = a7;
  v30 = a3;
  v31 = a5;
  v32 = a1;
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v30 - v22;
  v24 = *a6;
  v25 = *(a6 + 1);
  v26 = *(a6 + 16);
  LOBYTE(a6) = *(a6 + 17);
  (*(a13 + 32))(a8, a13, v21);
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = a6;
  v27 = *(swift_getAssociatedConformanceWitness() + 80);
  v37 = v30 & 1;
  v36 = v31 & 1;
  v28 = v27(v32, v33, a9, a10, a11, a12);
  (*(v20 + 8))(v23, AssociatedTypeWitness);
  return v28;
}

uint64_t LayoutChildGeometries.init(parentSize:parentPosition:layoutComputer:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance LayoutChildGeometries@<X0>(uint64_t *a1@<X8>)
{
  result = LayoutChildGeometries.value.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance LayoutChildGeometry@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 8);
  type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    v5 = (*result + (v3 << 6));
    v6 = v5[2];
    v7 = v5[3];
    v8 = v5[5];
    v12[2] = v5[4];
    v12[3] = v8;
    v12[0] = v6;
    v12[1] = v7;
    v9 = v5[3];
    *a1 = v5[2];
    a1[1] = v9;
    v10 = v5[5];
    a1[2] = v5[4];
    a1[3] = v10;
    return outlined init with copy of ViewGeometry(v12, &v11);
  }

  __break(1u);
  return result;
}

uint64_t specialized StaticLayoutComputer.description.getter(uint64_t a1)
{
  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](0x209286E220, 0xA500000000000000);
  MEMORY[0x193ABEDD0](0x6F4374756F79614CLL, 0xEE0072657475706DLL);
  return v2;
}

double View.overlayPreferenceValue<A, B>(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, _UNKNOWN **), uint64_t a13, uint64_t a14)
{
  v35 = a8;
  v36 = a2;
  v41 = a9;
  v42 = a7;
  v39 = a13;
  v40 = a14;
  v37 = a3;
  v38 = a12;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v14, v22, v20);
  v23 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = a4;
  *(v25 + 3) = a5;
  v26 = v42;
  *(v25 + 4) = a6;
  *(v25 + 5) = v26;
  v27 = v35;
  *(v25 + 6) = v35;
  *(v25 + 7) = a10;
  (*(v18 + 32))(&v25[v23], v21, a4);
  v28 = &v25[v24];
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  v44[0] = a5;
  v44[1] = a6;
  v44[2] = v27;
  v44[3] = a10;
  v30 = type metadata accessor for _PreferenceReadingView(255, v44);
  v31 = v38(255, v30, &protocol witness table for _PreferenceReadingView<A, B>);
  v33 = type metadata accessor for ModifiedContent(0, a4, v31, v32);
  v43[0] = v42;
  v43[1] = v39;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v33, v43);
  static PreferenceKey._delay<A>(_:)(v40, v25, v41);

  return result;
}

double closure #1 in View.overlayPreferenceValue<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *, void, void, uint64_t, uint64_t, uint64_t, _UNKNOWN **))
{
  type metadata accessor for _PreferenceValue(0, a6, a9, a4);
  _PreferenceValue._force<A>(_:)(a3, a4, v21);
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  v16 = static Alignment.center;
  v20[0] = a6;
  v20[1] = a7;
  v20[2] = a9;
  v20[3] = a10;
  v17 = type metadata accessor for _PreferenceReadingView(0, v20);
  a11(v21, v16, *(&v16 + 1), a5, v17, a8, &protocol witness table for _PreferenceReadingView<A, B>);

  return result;
}

double partial apply for closure #1 in View.overlayPreferenceValue<A, B>(_:_:)(uint64_t a1, void (*a2)(void *, void, void, uint64_t, uint64_t, uint64_t, _UNKNOWN **))
{
  v3 = (*(*(v2[2] - 8) + 80) + 64) & ~*(*(v2[2] - 8) + 80);
  v4 = (v2 + ((*(*(v2[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in View.overlayPreferenceValue<A, B>(_:_:)(a1, v2 + v3, *v4, v4[1], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], a2);
}

void _OverlayPreferenceModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t _OverlayPreferenceModifier.alignment.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

void specialized makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a5@<X8>)
{
  v6 = a1;
  v75 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[1];
  v62 = a2[2];
  v63 = v8;
  v35 = *a2;
  v11 = *(a2 + 9);
  v64 = v9;
  v65 = *(a2 + 20);
  v60 = *a2;
  v61 = v10;
  outlined init with copy of _ViewInputs(a2, v73);
  PreferenceKeys.add(_:)(&type metadata for Text.LayoutKey, &protocol witness table for Text.LayoutKey);
  v36 = v11;
  if ((v11 & 0x100) != 0)
  {
    specialized _GraphInputs.pushScope<A>(id:)(0);
  }

  v39 = a5;
  v12 = *(a2 + 18);
  v13 = *(a2 + 16);
  v73[2] = v62;
  v73[3] = v63;
  v73[4] = v64;
  v74 = v65;
  v73[0] = v60;
  v73[1] = v61;
  outlined init with copy of _ViewInputs(v73, &v67);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v73, &v67);
  outlined destroy of _ViewInputs(v73);
  v14 = v67;
  v37 = DWORD2(v67);
  v15 = HIDWORD(v67);
  v40 = v6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v17 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v18 = specialized CachedEnvironment.attribute<A>(id:_:)(v17, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  v19 = *MEMORY[0x1E698D3F8];
  *&v67 = __PAIR64__(v18, OffsetAttribute2);
  *(&v67 + 1) = __PAIR64__(v12, v13);
  *&v68 = __PAIR64__(v19, v15);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
  v66 = v35;
  v20 = a2[3];
  v56 = a2[2];
  v57 = v20;
  v58 = a2[4];
  v59 = *(a2 + 20);
  v21 = a2[1];
  v54 = *a2;
  v55 = v21;
  outlined init with copy of _ViewInputs(a2, &v67);
  outlined init with copy of PropertyList(&v66, &v67);
  LODWORD(v58) = AGGraphCreateOffsetAttribute2();
  DWORD2(v58) = AGGraphCreateOffsetAttribute2();
  LODWORD(v56) = v56 | 0x18;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v54, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);
  outlined destroy of PropertyList(&v66);
  if ((v36 & 0x100) != 0)
  {
    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  v22 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA4TextV06LayoutI0V_TtB5(v14);
  if ((v22 & 0x100000000) != 0)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v69 = v56;
  v70 = v57;
  v71 = v58;
  v72 = v59;
  v67 = v54;
  v68 = v55;
  v24 = _s7SwiftUI27makeSecondaryPreferenceView33_E16FB36220E60E9D0940B6710E02DAD28modifier6inputs4body9flipOrderAA01_F7OutputsV14AttributeGraph0U0VyAA08_OverlayE8ModifierVyxq_GG_AA01_F6InputsVAiA01_V0V_ARtcSbtAA0E3KeyRzAA0F0R_r0_lFAiT_ARtcfU0_AA4TextV06LayoutZ0V_AA7ForEachVySnySiGSiAA15ModifiedContentVyA3_yAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA017_ValueTransactionX0VySdGGAA13_OffsetEffectVGGTt0B5(&v67, v40 | (v23 << 32), v52);
  v25 = *&v52[0];
  v41 = DWORD2(v52[0]);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v26);
  AGGraphMutateAttribute();
  v27 = v41;
  if (a3)
  {
    v28 = v25;
    v29 = v41;
    v25 = v14;
    v27 = v37;
  }

  else
  {
    v28 = v14;
    v29 = v37;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v49 = 0;
  v44 = v28;
  v45 = v29;
  v46 = v25;
  v47 = v27;
  v30 = *(a2 + 6);
  v42 = v30;
  v43 = *(a2 + 14);
  v31 = *(v30 + 16);
  if (v31)
  {

    outlined init with copy of PreferencesInputs(&v42, v52);
    v32 = (v30 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v44, *(v32 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v32, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v32 += 2;
      --v31;
    }

    while (v31);
  }

  else
  {

    outlined init with copy of PreferencesInputs(&v42, v52);
  }

  v50[2] = v56;
  v50[3] = v57;
  v50[4] = v58;
  v51 = v59;
  v50[0] = v54;
  v50[1] = v55;
  outlined destroy of _ViewInputs(v50);
  v52[2] = v62;
  v52[3] = v63;
  v52[4] = v64;
  v53 = v65;
  v52[0] = v60;
  v52[1] = v61;
  outlined destroy of _ViewInputs(v52);
  *(v39 + 12) = v15;
  v33 = v48;
  v34 = v49;

  *v39 = v33;
  *(v39 + 8) = v34;
}

double get_witness_table_7SwiftUI4ViewRzAA13PreferenceKeyRd__AaBRd_0_r_0_lAA15ModifiedContentVyxAA08_OverlayD8ModifierVyqd__qd_0_GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v12[0] = *(a1 + 8);
  v12[1] = v6;
  v7 = a2(255, v12);
  v9 = type metadata accessor for ModifiedContent(255, v4, v7, v8);
  v11[0] = v5;
  v11[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v11);
}

void *_s7SwiftUI27makeSecondaryPreferenceView33_E16FB36220E60E9D0940B6710E02DAD2LL8modifier6inputs4body9flipOrderAA01_F7OutputsV14AttributeGraph0U0VyAA08_OverlayE8ModifierVyxq_GG_AA01_F6InputsVAiA01_V0V_ARtcSbtAA0E3KeyRzAA0F0R_r0_lFAiT_ARtcfU0_AA4TextV06LayoutZ0V_AA7ForEachVySnySiGSiAA15ModifiedContentVyA3_yAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA017_ValueTransactionX0VySdGGAA13_OffsetEffectVGGTt0B5@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0);
  *&v23 = a2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>(0);
  lazy protocol witness table accessor for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>();
  v6 = Attribute.init<A>(body:value:flags:update:)();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = a1[3];
  v33 = a1[2];
  v34 = v8;
  v35 = a1[4];
  v9 = *(a1 + 20);
  v10 = a1[1];
  v31 = *a1;
  v32 = v10;
  v11 = v33;
  v36 = v9;
  LODWORD(v33) = 0;
  v37[0] = v31;
  v37[1] = v10;
  v38 = v9;
  v37[3] = v8;
  v37[4] = v35;
  v37[2] = v33;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  LODWORD(v28) = v36;
  v23 = v31;
  v24 = v32;
  *(&v28 + 1) = partial apply for specialized closure #1 in static View.makeImplicitRoot(view:inputs:);
  v29 = v12;
  v30 = 0;
  v13 = *&v37[0];
  outlined init with copy of _ViewInputs(v37, v21);
  outlined init with copy of _ViewInputs(v37, v21);
  outlined init with copy of _ViewInputs(a1, v21);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v13);
  (*(v14 + 8))(&v23, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
  v15 = *(&v29 + 1);
  if (!*(&v29 + 1))
  {
    __break(1u);
  }

  v16 = v30;
  v17 = HIDWORD(v30);
  v21[4] = v27;
  v21[5] = v28;
  v21[6] = v29;
  v22 = v30;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;

  outlined destroy of MakeViewRoot(v21);

  outlined destroy of _ViewInputs(v37);
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 12) = v17;
  LODWORD(v33) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v31);
    AGSubgraphEndTreeElement();
  }

  v19[2] = v33;
  v19[3] = v34;
  v19[4] = v35;
  v20 = v36;
  v19[0] = v31;
  v19[1] = v32;
  return outlined destroy of _ViewInputs(v19);
}

void type metadata accessor for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>)
  {
    type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>> and conformance <> ForEach<A, B, C>();
    v7[0] = &type metadata for Text.LayoutKey;
    v7[1] = v3;
    v7[2] = &protocol witness table for Text.LayoutKey;
    v7[3] = v4;
    v5 = type metadata accessor for SecondaryChild(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>);
    }
  }
}

void lazy protocol witness table accessor for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>()
{
  if (!lazy protocol witness table cache variable for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>)
  {
    type metadata accessor for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>(255);
    swift_getWitnessTable(protocol conformance descriptor for SecondaryChild<A, B>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>);
  }
}

uint64_t specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = a3;
  v6 = a2[3];
  v12 = a2[2];
  v13 = v6;
  v14 = a2[4];
  v15 = *(a2 + 20);
  v7 = a2[1];
  v10 = *a2;
  v11 = v7;
  type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0);
  _ViewInputs.implicitRootBodyInputs.getter(v9);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSnySiG_SiAA15ModifiedContentVyARyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_L19TransactionModifierVySdGGAA13_OffsetEffectVGTt2B5(v4, v9, x8_0);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSnySiG_SiAA15ModifiedContentVyARyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_L19TransactionModifierVySdGGAA13_OffsetEffectVGTt2B5(v4, v9, x8_0);
  }

  return outlined destroy of _ViewListInputs(v9);
}

uint64_t AnyLayout.makeCache(subviews:)(int *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  return (*(*a2 + 88))(&v6);
}

uint64_t AnyLayout.updateCache(_:subviews:)(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*a3 + 96))(a1, &v7);
}

uint64_t AnyLayout.spacing(subviews:cache:)(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*a3 + 104))(&v7, a2);
}

uint64_t AnyLayout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(*a8 + 128))(a1, a2);
}

{
  return (*(*a8 + 136))(a1, a2);
}

void key path setter for AnyLayout.animatableData : AnyLayout(void *a1, uint64_t *a2)
{
  outlined init with copy of _AnyAnimatableData(a1, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(v7, v6);
    (*(*v4 + 152))(v6);
    outlined destroy of _AnyAnimatableData(v7);
  }

  else
  {
    v5 = (*(*v4 + 168))(v7);
    outlined destroy of _AnyAnimatableData(v7);

    *a2 = v5;
  }
}

void AnyLayout.animatableData.setter(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(a1, v7);
    (*(*v5 + 152))(v7);
    outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    v6 = (*(*v5 + 168))(a1);
    outlined destroy of _AnyAnimatableData(a1);

    *v2 = v6;
  }
}

uint64_t (*AnyLayout.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  (*(**v1 + 144))();
  return AnyLayout.animatableData.modify;
}

void AnyLayout.animatableData.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[15];
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      outlined init with copy of _AnyAnimatableData(v2 + 5, v2 + 10);
      (*(*v5 + 152))(v2 + 10);
      outlined destroy of _AnyAnimatableData((v2 + 5));
    }

    else
    {
      v8 = v2[15];
      v9 = (*(*v5 + 168))(v2 + 5);
      outlined destroy of _AnyAnimatableData((v2 + 5));

      *v8 = v9;
    }

    goto LABEL_7;
  }

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v3;
  if (v6)
  {
    outlined init with copy of _AnyAnimatableData(v2, v2 + 5);
    (*(*v7 + 152))(v2 + 5);
LABEL_7:
    outlined destroy of _AnyAnimatableData(v2);
    goto LABEL_9;
  }

  v10 = v2[15];
  v11 = (*(*v7 + 168))(v2);
  outlined destroy of _AnyAnimatableData(v2);

  *v10 = v11;
LABEL_9:

  free(v2);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance AnyLayout(int *a1)
{
  v2 = *v1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*v2 + 88))(&v7);
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance AnyLayout(uint64_t a1, int *a2)
{
  v3 = *v2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v8 = *a2;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return (*(*v3 + 96))(a1, &v8);
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance AnyLayout(int *a1)
{
  v2 = *v1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*v2 + 104))(&v7);
}

void protocol witness for Animatable.animatableData.setter in conformance AnyLayout(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(a1, v7);
    (*(*v5 + 152))(v7);
    outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    v6 = (*(*v5 + 168))(a1);
    outlined destroy of _AnyAnimatableData(a1);

    *v2 = v6;
  }
}

void (*protocol witness for Animatable.animatableData.modify in conformance AnyLayout(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  (*(**v1 + 144))();
  return AnyLayout.animatableData.modify;
}

void AnyLayoutBox.explicitAlignment(of:in:proposal:subviews:cache:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _AnyLayoutBox.spacing(subviews:cache:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v5 = a1;
  v6 = *(*v3 + 184);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18[-v8];
  v11 = *(v10 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18[-v14];
  v21 = *v5;
  v20 = *(v5 + 1);
  v19 = *(v5 + 16);
  LOBYTE(v5) = *(v5 + 17);
  outlined init with copy of Any(a2 + 8, v28);
  swift_dynamicCast();
  v16 = *(*v3 + 200);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v16, v6);
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v5;
  (*(v11 + 48))(&v24, v15, v6, v11);
  (*(v7 + 8))(v9, v6);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(v22, v15, v6, v11);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

uint64_t _AnyLayoutBox.animatableData.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  swift_beginAccess();
  _AnyAnimatableData.update<A>(_:)(v1 + v4, *(v3 + 184), *(*(v3 + 192) + 8));
  swift_endAccess();
  return outlined destroy of _AnyAnimatableData(a1);
}

uint64_t _AnyLayoutBox.withAnimatableData(_:)(uint64_t a1)
{
  v14 = *v1;
  v2 = v14;
  v3 = *(v14 + 184);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *(v2 + 200);
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, &v1[v10], v3);
  _AnyAnimatableData.update<A>(_:)(v9, v3, *(*(v2 + 192) + 8));
  v11(v6, v9, v3);
  v12 = _AnyLayoutBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t LogicalCompletionModifier.animate<A, B>(base:value:time:context:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a5 + 17);
  result = (*(a9 + 16))(a4, a5, a6, a8, a7, a9);
  if ((v12 & 1) == 0)
  {
    *(a5 + 17) = a2 <= a1;
  }

  return result;
}

double protocol witness for CustomAnimationModifier.function(base:) in conformance LogicalCompletionModifier@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  v7 = *(a1 + 40);
  *(a2 + 40) = v7;
  return outlined copy of Animation.Function(v3, v2, v4, v5, v6, v7);
}

uint64_t Animation.logicallyComplete(after:)(uint64_t a1, double a2)
{
  v5 = a2;
  v2 = *(*a1 + 144);
  lazy protocol witness table accessor for type LogicalCompletionModifier and conformance LogicalCompletionModifier();
  return v2(&v5, &unk_1F007D510, v3);
}

void lazy protocol witness table accessor for type LogicalCompletionModifier and conformance LogicalCompletionModifier()
{
  if (!lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LogicalCompletionModifier, &unk_1F007D510, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LogicalCompletionModifier, &unk_1F007D510, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LogicalCompletionModifier, &unk_1F007D510, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier);
  }
}

uint64_t Color.headroom(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a2 & 1;
  if (a2)
  {
    v6 = 0.0;
  }

  else
  {
    v4 = *&a1;
    v6 = v4;
  }

  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for ColorBox<HeadroomColorProvider>, lazy protocol witness table accessor for type HeadroomColorProvider and conformance HeadroomColorProvider, &type metadata for HeadroomColorProvider, type metadata accessor for ColorBox);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 28) = v5;

  return v7;
}

uint64_t Color._linearScale(_:)(uint64_t a1, float a2)
{
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for ColorBox<LinearScaleColorProvider>, lazy protocol witness table accessor for type LinearScaleColorProvider and conformance LinearScaleColorProvider, &type metadata for LinearScaleColorProvider, type metadata accessor for ColorBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return v4;
}

uint64_t *assignWithCopy for LinearScaleColorProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  return a1;
}

uint64_t *assignWithTake for LinearScaleColorProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  return a1;
}

uint64_t *assignWithCopy for HeadroomColorProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = *(a2 + 2);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 2) = v4;
  return a1;
}

uint64_t *assignWithTake for HeadroomColorProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for HeadroomColorProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t storeEnumTagSinglePayload for HeadroomColorProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HeadroomColorProvider.colorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 12))
  {
    v2 = 0xE400000000000000;
    v3 = 1701736302;
  }

  else
  {
    Float.write<A>(to:)();
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = *(*v1 + 160);

  v6 = v4(v5);

  MEMORY[0x193ABEDD0](0x6F6F726461656820, 0xEA00000000003D6DLL);
  MEMORY[0x193ABEDD0](v3, v2);

  return v6;
}

uint64_t HeadroomColorProvider.encode(to:)(void *a1)
{
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HeadroomColorProvider.CodingKeys>, lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys, &unk_1F007D7F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v17 = *(v1 + 2);
  HIDWORD(v16) = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v8;
  v21 = 0;
  type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, protocol conformance descriptor for ProxyCodable<A>, v12, v13);
  v14 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v14)
  {
    v20 = 1;
    v19 = BYTE4(v16);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void HeadroomColorProvider.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  (*(**v0 + 152))();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
  }
}

Swift::Int HeadroomColorProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 12);
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v6);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFF) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

void HeadroomColorProvider.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HeadroomColorProvider.CodingKeys>, lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys, &unk_1F007D7F8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v6;
    v13 = v18;
    type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
    v20 = 0;
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, protocol conformance descriptor for ProxyCodable<A>, v14, v15);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v21;
    v19 = 1;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v12 + 8))(v8, v5);
    *v13 = v16;
    *(v13 + 8) = v17;
    *(v13 + 12) = BYTE4(v17) & 1;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HeadroomColorProvider.CodingKeys()
{
  if (*v0)
  {
    return 0x6D6F6F7264616568;
  }

  else
  {
    return 1702060386;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance HeadroomColorProvider.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D6F6F7264616568 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HeadroomColorProvider.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HeadroomColorProvider.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float protocol witness for ColorProvider.resolve(in:) in conformance HeadroomColorProvider(__int128 *a1)
{
  v2 = *v1;
  v6 = *a1;
  v3 = *(*v2 + 112);

  v4 = v3(&v6);

  return v4;
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance HeadroomColorProvider(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[2];
  v6 = *(v2 + 12);
  v9 = *a1;
  v7 = *(*v4 + 120);

  v7(&v10, &v9);

  v8 = NAN;
  if (!v6)
  {
    v8 = v5;
  }

  *a2 = v10;
  *(a2 + 16) = v8;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeadroomColorProvider(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 12);
  Hasher.init(_seed:)();
  (*(*v2 + 152))(v7);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFF) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  return Hasher._finalize()();
}

uint64_t LinearScaleColorProvider.colorDescription.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(18);
  v2 = *(*v1 + 160);

  v4 = v2(v3);
  v6 = v5;

  MEMORY[0x193ABEDD0](v4, v6);

  MEMORY[0x193ABEDD0](0x537261656E696C2ELL, 0xED000028656C6163);
  Float.write<A>(to:)();
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t LinearScaleColorProvider.encode(to:)(void *a1)
{
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<LinearScaleColorProvider.CodingKeys>, lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys, &unk_1F007D888, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v8;
  v18 = 0;
  type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, protocol conformance descriptor for ProxyCodable<A>, v12, v13);
  v14 = v16[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v14)
  {
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int LinearScaleColorProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(LODWORD(v3));
  return Hasher._finalize()();
}

void LinearScaleColorProvider.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<LinearScaleColorProvider.CodingKeys>, lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys, &unk_1F007D888, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v6;
    v13 = v20;
    type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
    v22 = 0;
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, protocol conformance descriptor for ProxyCodable<A>, v14, v15);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v23;
    v21 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    (*(v12 + 8))(v8, v5);
    *v13 = v16;
    *(v13 + 8) = v18;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LinearScaleColorProvider.CodingKeys()
{
  if (*v0)
  {
    return 0x726F74636166;
  }

  else
  {
    return 1702060386;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance LinearScaleColorProvider.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinearScaleColorProvider.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinearScaleColorProvider.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float32_t protocol witness for ColorProvider.resolveHDR(in:) in conformance LinearScaleColorProvider@<S0>(__int128 *a1@<X0>, float32x2_t *a2@<X8>)
{
  v4 = *v2;
  v9 = v2[2];
  v10 = *a1;
  v5 = *(*v4 + 120);

  v5(&v11, &v10);

  v6 = v13;
  v7 = v9 * v12;
  result = v9 * v14;
  *a2 = vmul_n_f32(v11, v9);
  a2[1].f32[0] = v7;
  a2[1].i32[1] = v6;
  a2[2].f32[0] = result;
  return result;
}

void protocol witness for Hashable.hash(into:) in conformance LinearScaleColorProvider()
{
  v1 = v0[2];
  (*(**v0 + 152))();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinearScaleColorProvider(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  Hasher.init(_seed:)();
  (*(*v2 + 152))(v6);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LinearScaleColorProvider(float *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 8);
  return (*a1 == *a2 || ((*(**a1 + 88))() & 1) != 0) && v2 == v3;
}

uint64_t instantiation function for generic protocol witness table for HeadroomColorProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

void lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider.CodingKeys, &unk_1F007D888, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider.CodingKeys, &unk_1F007D888, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider.CodingKeys, &unk_1F007D888, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider.CodingKeys, &unk_1F007D888, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys);
  }
}

void lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(unint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    type metadata accessor for ProxyCodable<Color>(255, a2, a3, a4);
    swift_getWitnessTable(a2, v6);
    atomic_store(v7, a1);
  }
}

void lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider.CodingKeys, &unk_1F007D7F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider.CodingKeys, &unk_1F007D7F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider.CodingKeys, &unk_1F007D7F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider.CodingKeys, &unk_1F007D7F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys);
  }
}

void type metadata accessor for ColorBox<HeadroomColorProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t specialized static HeadroomColorProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  if (*a1 != *a2 && ((*(**a1 + 88))() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

void *DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(uint64_t **a1, void *a2, unsigned int a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9, uint64_t a10)
{
  LODWORD(v10) = a8;
  v58 = a6;
  v59 = a5;
  v12 = a4;
  v56 = a3;
  v54 = a1;
  v14 = *a4;
  v52 = a4[1];
  v15 = a4[2];
  v57 = HIDWORD(a8);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v53 = v14;
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v14, v60);
  if (v16)
  {
    v17 = (v16 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v17 = &static ArchivedViewInput.defaultValue;
  }

  v55 = a10;
  LODWORD(v19) = *v17 & 1;
  isEscapingClosureAtFileLocation = a2[8];
  CanTransitiondJ0V_Tt0B5 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, isEscapingClosureAtFileLocation);
  v51 = v15;
  if ((CanTransitiondJ0V_Tt0B5 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for opacity != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v49 = static AnyTransition.opacity;
    v22 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, isEscapingClosureAtFileLocation);
    v23 = v22;
    if (v19 || ((*(*v22 + 96))(v22) & 1) == 0)
    {

      v50 = AGGraphClearUpdate();
      swift_beginAccess();
      Value = AGGraphGetValue();
      v26 = *Value;
      v25 = Value[1];
      if (v25)
      {

        v27 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v26);
      }

      else
      {
        v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*Value);
      }

      if (v27 == 2)
      {
        v60 = v26;
        v61 = v25;
        LOBYTE(v66[0]) = 3;
        v27 = EnvironmentValues.accessibilitySettingEnabled(_:)(v66);
      }

      v28 = AGGraphSetUpdate();
      if ((*(*v23 + 104))(v28) & 1) != 0 && (v27)
      {
        v29 = v49;

        v23 = v29;
      }

      else
      {
      }
    }

    else
    {

LABEL_11:
      v23 = 0;
    }

    v68 = v56;
    MEMORY[0x1EEE9AC00](CanTransitiondJ0V_Tt0B5);
    v39[2] = v58;
    v39[3] = a7;
    v40 = v59;
    v41 = v10;
    v42 = v57;
    v43 = a9;
    v44 = v55;
    v45 = &v68;
    v46 = v23;
    v47 = a2;
    v48 = v19;
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:);
    *(v30 + 24) = v39;
    v67 = 0;
    MEMORY[0x1EEE9AC00](v30);
    a9 = v38;
    v38[2] = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
    v38[3] = v31;
    v60 = a2[7];
    if (_ViewList_SublistSubgraphStorage.isValid.getter())
    {
      v10 = a2[5];
      v19 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v10);
      v60 = v53;
      v61 = v52;
      v62 = v51;
      v63 = *(v12 + 3);
      v64 = *(v12 + 5);
      v65[0] = *(v12 + 7);
      *(v65 + 12) = *(v12 + 68);
      (*(v19 + 16))(v66, &v67, &v60, 0, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), v38, v10, v19);
      v12 = v66[0];
      a7 = v66[1];
    }

    else
    {
      a7 = 0;
      v12 = 0;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v32 = *MEMORY[0x1E698D3F8];
  v33 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v33 = v12;
    v34 = a7;
  }

  else
  {
    v34 = 0;
  }

  if (v12)
  {
    v32 = HIDWORD(a7);
  }

  v35 = v54;
  *v54 = v33;
  *(v35 + 2) = v34;
  *(v35 + 3) = v32;
  v60 = a2[7];

  v36 = _ViewList_SublistSubgraphStorage.retain()();

  return v36;
}

uint64_t closure #1 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = type metadata accessor for TransitionHelper(0, a2, a3, a4);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - v11;
  (*(v13 + 16))(v16 - v11, a1, v9, v10);
  v14 = *(v9 + 44);
  LOBYTE(a1) = Transition.hasContentTransition.getter(a2, a3);
  result = (*(*(a2 - 8) + 8))(&v12[v14], a2);
  *a5 = a1 & 1;
  return result;
}

void *closure #2 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t *__return_ptr, __int128 *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v41 = a8;
  v42 = a5;
  v40 = a4;
  v36 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v35 = type metadata accessor for TransitionHelper(0, a6, a7, a3);
  v12 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v35 - v13;
  v37 = a6;
  v38 = a7;
  v16 = type metadata accessor for ViewListContentTransition(0, a6, a7, v15);
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v35 - v20;
  v21 = *(a1 + 16);
  v69[0] = *a1;
  v69[1] = v21;
  v22 = *(a1 + 48);
  v70 = *(a1 + 32);
  v71 = v22;
  v72 = *(a1 + 64);
  v63 = v70;
  v64 = v22;
  v65 = *(a1 + 64);
  v73 = *(a1 + 80);
  v23 = v21;
  v66 = *(a1 + 80);
  v61 = v69[0];
  v62 = v21;
  v24 = *(a2 + 64);
  outlined init with copy of _ViewInputs(v69, v67);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v25 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA32_DisplayList_StableIdentityScopeV_Tt0B5(static _DisplayList_StableIdentityScope.defaultValue, v24);
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(&v61, v25);
  }

  v26 = DWORD2(v72);
  (*(v12 + 16))(v14, v36, v35);
  swift_beginAccess();
  v27 = v43;
  ViewListContentTransition.init(helper:size:environment:)(v14, v26, *(v23 + 16), v37, v38, v43);
  v28 = v39;
  (*(v39 + 16))(v18, v27, v16);
  swift_getWitnessTable(protocol conformance descriptor for ViewListContentTransition<A>, v16);
  _GraphValue.init<A>(_:)(v18, &type metadata for ContentTransitionEffect, v16, v29, v44);
  v30 = v44[0];
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v60 = v66;
  v55 = v61;
  v56 = v62;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  swift_retain_n();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v51 = v57;
  v52 = v58;
  v53 = v59;
  v49 = v55;
  v50 = v56;
  v32 = v57;
  v54 = v60;
  LODWORD(v51) = 0;
  v68 = v60;
  v67[3] = v58;
  v67[4] = v59;
  v67[0] = v55;
  v67[1] = v56;
  v67[2] = v51;

  outlined init with copy of _ViewInputs(&v55, v47);
  outlined init with copy of _ViewInputs(v67, v47);
  v33 = v41;
  _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B503_s7a17UI24DynamicLayouti124AdaptorV14MakeTransition33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV012makeArchivedH06helperyAA0H6HelperAELLVyxG_tAA0H0RzlFAA01_E7j5VAA6_k9V_AA01_E6M18VtcfU0_AnP_ARtcfU_AnIIegnr_Tf1nnnc_n(v30, v67, v40, v41);
  outlined destroy of _ViewInputs(v67);
  LODWORD(v51) = v32;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v33, &v49);
    AGSubgraphEndTreeElement();
  }

  (*(v28 + 8))(v43, v16);
  v45[2] = v51;
  v45[3] = v52;
  v45[4] = v53;
  v46 = v54;
  v45[0] = v49;
  v45[1] = v50;
  outlined destroy of _ViewInputs(v45);
  v47[3] = v64;
  v47[4] = v65;
  v48 = v66;
  v47[0] = v61;
  v47[1] = v62;
  v47[2] = v63;
  return outlined destroy of _ViewInputs(v47);
}

uint64_t ViewListContentTransition.init(helper:size:environment:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for TransitionHelper(0, a4, a5, a4);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for ViewListContentTransition(0, a4, a5, v13);
  *(a6 + *(result + 36)) = a2;
  *(a6 + *(result + 40)) = a3;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.updatedItems() in conformance DynamicLayoutViewAdaptor@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  Value = AGGraphGetValue();
  v4 = v3;
  outlined init with copy of AnyTrackedValue(Value, v6);
  if (v4)
  {
    return outlined init with take of _ViewList_Elements(v6, a1);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v6);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.foreachItem(items:_:) in conformance DynamicLayoutViewAdaptor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v12 = 0;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v10[2] = a2;
  v10[3] = a3;
  v11 = 0;
  return ViewList.applySublists(from:list:to:)(&v12, v6, partial apply for closure #1 in DynamicLayoutViewAdaptor.foreachItem(items:_:), v10, v7, v8);
}

void *protocol witness for DynamicContainerAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:) in conformance DynamicLayoutViewAdaptor(uint64_t **a1, uint64_t *a2, void *a3, unsigned int a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8)
{
  result = DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(a1, a3, a4, a5, a6, a7, a8, *v8, *(v8 + 8), *(v8 + 16));
  *a2 = result;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.removeItemLayout(uniqueId:itemLayout:) in conformance DynamicLayoutViewAdaptor(int a1)
{
  v2 = *(v1 + 8);
  v4[4] = a1;
  return v2(_s7SwiftUI24DynamicLayoutViewAdaptorV010removeItemD08uniqueId04itemD0ys6UInt32V_AC0hD0VtFyAA0cD3MapVzXEfU_TA_0, v4);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance ViewListTransition<A>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t ViewListArchivedAnimation.value.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == result)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0uLL;
    v6 = 1;
  }

  else
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    Value = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(Value, v15);
    v8 = v16;
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v9 + 56))(&v14, v8, v9);
    v6 = 1;
    _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA017ArchivedAnimationdJ0V_Tt0B5(1, 0, 0, 0, v14, &v11);

    v10 = v11;
    v3 = v12;
    v4 = v13;
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v5 = v10;
    if (v10 == 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0uLL;
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 28) = v6;
  return result;
}

double ViewListContentTransition.environment.getter@<D0>(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  *a2 = v5;
  a2[1] = v4;

  return result;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance ViewListArchivedAnimation.Effect(uint64_t a1@<X8>)
{
  if (*(v1 + 28))
  {
    v3 = 0;
    v4 = 20;
  }

  else
  {
    v5 = *(v1 + 6);
    v7 = v1[1];
    v6 = v1[2];
    v8 = *v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v5;
    *(v3 + 36) = 0;
    *(v3 + 40) = v8;

    v4 = 19;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = v4;
}

void protocol witness for static Rule.initialValue.getter in conformance ViewListArchivedAnimation(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 1;
  *(a1 + 21) = 0;
}

double ViewListContentTransition.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v33 = *(a1 + 16);
  v6 = type metadata accessor for TransitionHelper(0, v33, v5, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v12 = type metadata accessor for UncheckedSendable(0, v6, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  if ((TransitionHelper.update()(v6) & 1) != 0 || !AGGraphGetOutputValue())
  {
    v31 = v5;
    ViewListContentTransition.environment.getter(&v34);
    v17 = v34;
    v32 = v12;
    if (v35)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v17, &v38);
    }

    else
    {
      v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v34);
      if (v18)
      {
        v19 = *(v18 + 84);
        v20 = *(v18 + 20);
        v21 = v20 | (v19 << 32);
        v22 = *(v18 + 86);
        v23 = *(v18 + 87);
        v24 = v18[11];
        v25 = *(v18 + 24);
        *&v38 = v18[9];
        BYTE12(v38) = v19;
        DWORD2(v38) = v20;
        v26 = *(v18 + 85);
        BYTE13(v38) = v26;
        BYTE14(v38) = v22;
        HIBYTE(v38) = v23;
        v39 = v24;
        v40 = v25;
        v27 = v38;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v27 = static ContentTransition.State.defaultValue;
        v21 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v38 = static ContentTransition.State.defaultValue;
        v26 = BYTE13(static ContentTransition.State.defaultValue);
        v39 = off_1ED536620;
        v40 = dword_1ED536628;
      }

      outlined copy of ContentTransition.Storage(v27, v21, v26);
    }

    (*(v7 + 16))(v9, v4, v6);
    UncheckedSendable.init(_:)(v9, v6, v15);
    Value = AGGraphGetValue();
    closure #1 in ViewListContentTransition.updateValue()(v15, &v38, v33, v31, &v34, *Value, Value[1]);
    v29 = v34;
    outlined consume of ContentTransition.Storage(v38, DWORD2(v38) | (BYTE12(v38) << 32), SBYTE13(v38));
    *&v38 = v29;
    BYTE12(v38) = 2;
    DWORD2(v38) = 6;
    *(&v38 + 13) = 1;

    v39 = 0;
    v40 = v40 & 1 | 4;
    v34 = v29;
    BYTE4(v35) = 2;
    LODWORD(v35) = 6;
    *(&v35 + 5) = 1;
    HIBYTE(v35) = HIBYTE(v38);
    v36 = 0;
    v37 = v40;
    AGGraphSetOutputValue();
    (*(v13 + 8))(v15, v32);
    outlined consume of ContentTransition.Storage(v38, DWORD2(v38) | (BYTE12(v38) << 32), SBYTE13(v38));
  }

  return result;
}

uint64_t closure #1 in ViewListContentTransition.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = type metadata accessor for TransitionHelper(0, a3, a4, a4);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22[-v16];
  (*(v18 + 16))(&v22[-v16], a1, v14, v15);
  v19 = *(v14 + 44);
  v23 = *(a2 + 15);
  v20 = Transition.contentTransitionEffects(style:size:)(&v23, a6, a7, a3, a4);
  result = (*(*(a3 - 8) + 8))(&v17[v19], a3);
  *a5 = v20;
  return result;
}

void protocol witness for static StatefulRule.initialValue.getter in conformance ViewListContentTransition<A>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ViewListContentTransition<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ViewListContentTransition<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t (*ViewTraitCollection.zIndex.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(*v1);
  *a1 = v3;
  return ViewTraitCollection.zIndex.modify;
}

double protocol witness for ScrollableContainer.children.getter in conformance DynamicLayoutScrollable()
{
  type metadata accessor for [ScrollStateRequest](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
  if (AGGraphGetWeakValue())
  {
  }

  return result;
}

uint64_t DynamicLayoutScrollable.visibleCollectionViewIDs.getter()
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of AnyTrackedValue(WeakValue, v23);
  v1 = v24;
  v2 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v3 = ViewList.allViewIDs.getter(v1, v2);
  v4 = *(*v3 + 88);
  v5 = v4();
  result = v4();
  if ((result & 0x8000000000000000) == 0)
  {
    result = v4();
    if (v5 < 0 || result < v5)
    {
      goto LABEL_22;
    }

    if (v5)
    {
      v22 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v7 = 0;
      v8 = v22;
      v19 = *(*v3 + 96);
      v18 = v5;
      while (1)
      {
        v9 = v3;
        v19(&v20, v7);
        v11 = v20;
        v10 = HIDWORD(v20);
        v12 = v21;
        v13 = *(v21 + 16);

        if (v13)
        {
          v13 = *(v12 + 32);
          v14 = *(v12 + 52);

          swift_bridgeObjectRelease_n();
          if (v14)
          {
            v10 = -1;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v22 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v8 = v22;
        }

        *(v8 + 16) = v16 + 1;
        v17 = v8 + 16 * v16;
        *(v17 + 32) = v11;
        *(v17 + 36) = v10;
        *(v17 + 40) = v13;
        v3 = v9;
        result = v4();
        if (v7 >= result)
        {
          break;
        }

        if (v18 == ++v7)
        {

          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v8;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t DynamicLayoutScrollable.forEachVisibleSubview(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  result = AGGraphGetWeakValue();
  if (result)
  {
    outlined init with copy of AnyTrackedValue(result, v20);
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v6 = *WeakValue;

      v7 = AGGraphGetWeakValue();
      if (v7)
      {
        v8 = *v7;
        v9 = v7[2];
        v23[1] = v7[1];
        v23[2] = v9;
        v23[0] = v8;
        v19 = 0;
        v17 = 0;
        v18 = 0;
        v10 = v21;
        v11 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        Attribute = AGWeakAttributeGetAttribute();
        v13 = Attribute == *MEMORY[0x1E698D3F8];
        if (Attribute == *MEMORY[0x1E698D3F8])
        {
          v14 = 0;
        }

        else
        {
          v14 = Attribute;
        }

        MEMORY[0x1EEE9AC00](Attribute);
        v15[2] = v6;
        v15[3] = &v17;
        v15[4] = v23;
        v15[5] = a1;
        v15[6] = a2;
        v15[7] = &v19;
        outlined init with copy of ViewTransform(v23, v16);
        v16[0] = v13;
        ViewList.applyIDs(from:listAttribute:to:)(&v18, v14 | (v13 << 32), partial apply for closure #1 in DynamicLayoutScrollable.forEachVisibleSubview(_:), v15, v10, v11);

        outlined destroy of ViewTransform(v23);
      }

      else
      {
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

BOOL closure #1 in DynamicLayoutScrollable.forEachVisibleSubview(_:)(double *a1, uint64_t a2, uint64_t *a3, float64x2_t *a4, void (*a5)(_OWORD *, _BYTE *), uint64_t a6, _BYTE *a7)
{
  v9 = *a3;
  if ((*a3 & 0x8000000000000000) == 0 && v9 < *(a2 + 16))
  {
    v11 = *a1;
    v12 = *(a1 + 1);
    v13 = (a2 + (v9 << 6));
    v20 = v13[4];
    v21 = v13[2];
    v30 = v21;
    v31 = v20;
    if (one-time initialization token for content != -1)
    {
      v19 = a4;
      swift_once();
      a4 = v19;
    }

    *&v23[0] = static ScrollCoordinateSpace.content;
    LOBYTE(v24.f64[1]) = 1;
    v14 = a4[1];
    v32 = *a4;
    v33 = v14;
    v34 = a4[2];
    v15 = a4;
    CGRect.convert(to:transform:)(v23, &v32);
    outlined destroy of CoordinateSpace(v23);
    v16 = v15[2];
    v38 = v15[1];
    v39 = v16;
    v17 = *v15;
    v32.f64[0] = v11;
    *&v32.f64[1] = v12;
    v33 = v21;
    v34 = v20;
    v35 = v30;
    v36 = v31;
    v37 = v17;
    v26 = v31;
    v27 = v17;
    v28 = v38;
    v29 = v16;
    v23[0] = v32;
    v23[1] = v21;
    v24 = v20;
    v25 = v30;

    outlined init with copy of ViewTransform(v15, v22);
    a5(v23, a7);
    outlined destroy of ScrollableCollectionSubview(&v32);
    v9 = *a3;
  }

  *a3 = v9 + 1;
  return (*a7 & 1) == 0;
}

_OWORD *closure #1 in DynamicLayoutScrollable.subviewClosestTo(rect:)(_OWORD *result, double a2, double a3, uint64_t a4, double *a5, _OWORD *a6)
{
  v6 = result[5];
  v36[4] = result[4];
  v36[5] = v6;
  v7 = result[7];
  v36[6] = result[6];
  v36[7] = v7;
  v8 = result[1];
  v36[0] = *result;
  v36[1] = v8;
  v9 = result[3];
  v36[2] = result[2];
  v36[3] = v9;
  v10 = sqrt((a2 - *&v8) * (a2 - *&v8) + (a3 - *(&v8 + 1)) * (a3 - *(&v8 + 1)));
  if (v10 < *a5)
  {
    *a5 = v10;
    v12 = result[5];
    v31 = result[4];
    v32 = v12;
    v13 = result[7];
    v33 = result[6];
    v34 = v13;
    v14 = result[1];
    v27 = *result;
    v28 = v14;
    v15 = result[3];
    v29 = result[2];
    v30 = v15;
    _ViewInputs.base.modify();
    v16 = a6[5];
    v35[4] = a6[4];
    v35[5] = v16;
    v17 = a6[7];
    v35[6] = a6[6];
    v35[7] = v17;
    v18 = a6[1];
    v35[0] = *a6;
    v35[1] = v18;
    v19 = a6[3];
    v35[2] = a6[2];
    v35[3] = v19;
    v20 = v27;
    v21 = v28;
    v22 = v30;
    a6[2] = v29;
    a6[3] = v22;
    *a6 = v20;
    a6[1] = v21;
    v23 = v31;
    v24 = v32;
    v25 = v34;
    a6[6] = v33;
    a6[7] = v25;
    a6[4] = v23;
    a6[5] = v24;
    outlined init with copy of ScrollableCollectionSubview(v36, &v26);
    return outlined destroy of ScrollableCollectionSubview?(v35);
  }

  return result;
}

uint64_t DynamicLayoutScrollable.applyCollectionViewIDs(from:to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, v16);
    v7 = v17;
    v8 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    Attribute = AGWeakAttributeGetAttribute();
    MEMORY[0x1EEE9AC00](Attribute);
    v14[2] = a2;
    v14[3] = a3;
    v15 = v10;
    v12 = ViewList.applyIDs(from:listAttribute:to:)(a1, v11 | (v10 << 32), partial apply for closure #1 in DynamicLayoutScrollable.applyCollectionViewIDs(from:to:), v14, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

BOOL closure #1 in DynamicLayoutScrollable.applyCollectionViewIDs(from:to:)(uint64_t *a1, void (*a2)(uint64_t *, char *))
{
  v3 = a1[1];
  v8 = 0;
  v5 = *a1;
  v6 = v3;

  _ViewList_ID.Canonical.init(id:)(&v5, v7);
  v5 = v7[0];
  v6 = v7[1];
  a2(&v5, &v8);

  return (v8 & 1) == 0;
}

void DynamicLayoutScrollable.collectionViewID(for:)(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue && (v5 = *(WeakValue + 8), v6 = *(WeakValue + 32), v7 = *(WeakValue + 40), v8 = *(WeakValue + 44), v14 = *WeakValue, v15 = v5, v16 = *(WeakValue + 16), v17 = v6, v18 = v7, v19 = v8, , , , v9 = DynamicContainer.Info.item(for:)(a1), , , v10 = , v9) && ((*(*v9 + 184))(&v14, v10), , v15))
  {
    v12[0] = v14;
    v12[1] = v15;
    _ViewList_ID.Canonical.init(id:)(v12, &v13);
    v11 = v13;
  }

  else
  {
    v11 = xmmword_18DD85550;
  }

  *a2 = v11;
}

uint64_t protocol witness for ScrollableCollection.subviewClosestTo(rect:) in conformance DynamicLayoutScrollable@<X0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v16 = 0x7FF0000000000000;
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(v17);
  v10 = v17[5];
  a1[4] = v17[4];
  a1[5] = v10;
  v11 = v17[7];
  a1[6] = v17[6];
  a1[7] = v11;
  v12 = v17[1];
  *a1 = v17[0];
  a1[1] = v12;
  v13 = v17[3];
  a1[2] = v17[2];
  a1[3] = v13;
  *&v15[2] = a2;
  *&v15[3] = a3;
  *&v15[4] = a4;
  *&v15[5] = a5;
  v15[6] = &v16;
  v15[7] = a1;
  return DynamicLayoutScrollable.forEachVisibleSubview(_:)(partial apply for closure #1 in DynamicLayoutScrollable.subviewClosestTo(rect:), v15);
}

uint64_t protocol witness for ScrollableCollection.firstCollectionViewIndex(of:) in conformance DynamicLayoutScrollable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(WeakValue, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8[0] = v1;
  v8[1] = v2;
  v6 = ViewList.firstOffset(of:)(v8, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t specialized DynamicLayoutScrollable.scroll(toCollectionViewID:anchor:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_9;
  }

  outlined init with copy of AnyTrackedValue(WeakValue, v24);
  v6 = v25;
  v7 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v23[0] = v3;
  v23[1] = v4;
  v8 = ViewList.firstOffset(of:)(v23, v6, v7);
  LOBYTE(v7) = v9;
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v7)
  {
    goto LABEL_9;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    v10 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    v10 = 0;
  }

  v11 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v10);
  v13 = v12;
  v15 = v14;

  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v2 + 32);
  *(v16 + 64) = *(v2 + 48);
  *(v16 + 72) = v8;
  *(v16 + 80) = v11;
  *(v16 + 88) = v13;
  *(v16 + 96) = v15 & 1;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
  v18 = AGGraphGetWeakValue();
  if (!v18)
  {

LABEL_9:
    v21 = 0;
    return v21 & 1;
  }

  outlined init with copy of AnyTrackedValue(v18, v24);
  v19 = v25;
  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v21 = (*(v20 + 16))(partial apply for closure #1 in DynamicLayoutScrollable.makeTarget(at:), v16, v19, v20);

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21 & 1;
}

uint64_t outlined destroy of ScrollableCollectionSubview?(uint64_t a1)
{
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for ScrollableCollectionSubview?, &type metadata for ScrollableCollectionSubview, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _TraitWritingModifier<ZIndexTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeWithCopy for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 24, a2 + 24, v5);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v8;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  v9 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v9;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  return a1;
}

uint64_t assignWithCopy for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  __swift_assign_boxed_opaque_existential_1((a1 + 24), (a2 + 24), v4);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v5 = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = v5;
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v6 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v6;

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

uint64_t assignWithTake for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicLayoutViewAdaptor.MakeTransition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for DynamicLayoutComputer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for DynamicLayoutComputer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicLayoutComputer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicLayoutComputer(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DynamicLayoutScrollable(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DynamicLayoutScrollable(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

void lazy protocol witness table accessor for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation()
{
  if (!lazy protocol witness table cache variable for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewListArchivedAnimation, &unk_1F007DE68, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation);
  }
}

void *partial apply for closure #2 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for TransitionHelper(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 109) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return closure #2 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)(a1, v3 + 32, v3 + v9, v11, v12, v6, v7, a3);
}

uint64_t type metadata completion function for ViewListContentTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TransitionHelper(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ViewListContentTransition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ((v5 + 12) & ~v5) + v6;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || (((v7 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 4 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v11 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v12 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v11 = *v12;
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v13 = *v14;
    v15 = (v13 + v5 + 4) & ~v5;
    v16 = (v14 + v5 + 4) & ~v5;
    (*(v4 + 16))(v15, v16);
    *(v15 + v6) = *(v16 + v6);
    v18 = ((v3 + v7 + 4) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((a2 + v7 + 4) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    *((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v3;
}

_DWORD *initializeWithCopy for ViewListContentTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 4) & ~v11;
  v13 = (v8 + v11 + 4) & ~v11;
  (*(v9 + 16))(v12, v13);
  v14 = *(v10 + 48);
  *(v14 + v12) = *(v14 + v13);
  v15 = v14 + ((v11 + 12) & ~v11) + 4;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  *((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *assignWithCopy for ViewListContentTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 4) & ~v11;
  v13 = (v8 + v11 + 4) & ~v11;
  (*(v9 + 24))(v12, v13);
  v14 = *(v10 + 40);
  *(v14 + v12) = *(v14 + v13);
  v15 = v14 + ((v11 + 12) & ~v11) + 4;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  *((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *initializeWithTake for ViewListContentTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 4) & ~v11;
  v13 = (v8 + v11 + 4) & ~v11;
  (*(v9 + 32))(v12, v13);
  v14 = *(v10 + 32);
  *(v14 + v12) = *(v14 + v13);
  v15 = v14 + ((v11 + 12) & ~v11) + 4;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  *((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *assignWithTake for ViewListContentTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 4) & ~v11;
  v13 = (v8 + v11 + 4) & ~v11;
  (*(v9 + 40))(v12, v13);
  v14 = *(v10 + 24);
  *(v14 + v12) = *(v14 + v13);
  v15 = v14 + ((v11 + 12) & ~v11) + 4;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  *((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewListContentTransition(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v6 + 12) & ~v6) + v7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFFC;
  if ((v9 & 0xFFFFFFFC) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    v18 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6;
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(v18 + v7);
    if (v19 >= 3)
    {
      return v19 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = *(a1 + v9);
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_24:
  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for ViewListContentTransition(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFC) + 11) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = ((((((result + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
      if (v6 < 0xFD)
      {
        result[v9] = a2 + 2;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFC) + 11) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFC) + 11) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t initializeWithCopy for ViewListArchivedAnimation.Effect(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 21) = *(a2 + 21);

  return a1;
}

uint64_t *assignWithCopy for ViewListArchivedAnimation.Effect(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = *(a2 + 1);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 1) = v4;
  return a1;
}

uint64_t *assignWithTake for ViewListArchivedAnimation.Effect(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 21) = *(a2 + 21);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewListArchivedAnimation.Effect(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 29))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ViewListArchivedAnimation.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransitionHelper(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = v7 + ((v6 + 12) & ~v6) + 1;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6;
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))(v16);
      }

      v17 = *(v16 + v7);
      if (v17 >= 3)
      {
        return v17 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for TransitionHelper(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 12) & ~v9) + 1;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v10 + ((v9 + 12) & ~v9) != -1)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_44:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v20 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;
  if (v7 < 0xFD)
  {
    *(v20 + v10) = a2 + 2;
  }

  else
  {
    v21 = *(v6 + 56);

    v21(v20);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TransitionHelper(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || v6 - ((-13 - v5) | v5) > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = (v12 + v5 + 4) & ~v5;
    v15 = (v13 + v5 + 4) & ~v5;
    (*(v4 + 16))(v14, v15);
    *(v14 + v6) = *(v15 + v6);
  }

  return v3;
}

_DWORD *assignWithCopy for TransitionHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 24))(v11, v12);
  *(*(v9 + 40) + v11) = *(*(v9 + 40) + v12);
  return a1;
}

_DWORD *initializeWithTake for TransitionHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 32))(v11, v12);
  *(*(v9 + 32) + v11) = *(*(v9 + 32) + v12);
  return a1;
}

_DWORD *assignWithTake for TransitionHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 40))(v11, v12);
  *(*(v9 + 24) + v11) = *(*(v9 + 24) + v12);
  return a1;
}

SwiftUI::LayoutProperties __swiftcall LayoutProperties.init()()
{
  *v0 = 2;
  *(v0 + 2) = 0;
  return result;
}

SwiftUI::ViewSpacing __swiftcall ViewSpacing.init(_:layoutDirection:)(SwiftUI::Spacing _, SwiftUI::LayoutDirection layoutDirection)
{
  v3 = *layoutDirection;
  *v2 = *_.minima._rawValue;
  *(v2 + 8) = v3;
  result.spacing = _;
  result.layoutDirection.value = layoutDirection;
  return result;
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance _ZStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance ZStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance VStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a4@<X3>, void (*a5)(_BYTE *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v10 = outlined init with copy of _ViewListInputs(a1, v21);
  v11 = a2(v10);
  if (v13 == -1)
  {
    static _ViewListOutputs.emptyViewList(inputs:)(v21, a6);
  }

  else
  {
    v14 = v12;
    v15 = v13;
    if (v13)
    {
      v16 = v11;
      v11();
      v17 = v16;
    }

    else
    {
      v18 = v11;
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v14;
      outlined copy of BodyInputElement(v18, v14);
      a5(v21, a4, v19);

      v17 = v18;
    }

    outlined consume of BodyInputElement?(v17, v14, v15);
  }

  return outlined destroy of _ViewListInputs(v21);
}

uint64_t _ProposedSize.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

__n128 ViewSizeCache.init(cache:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

void protocol witness for Layout.spacing(subviews:cache:) in conformance FlexibleButtonFrameLayout(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_18D3B0F84(*(a1 + 8), v2 | *(a1 + 16), a2);
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance FlexibleButtonFrameLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t ProposedViewSize.subscript.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return a4;
  }

  else
  {
    return a2;
  }
}

uint64_t ProposedViewSize.init(_:in:by:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return a4;
  }

  return a1;
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(__int128 *a1, uint64_t a2)
{
  return specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(a1, a2, 0, 128, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0oP0O6EffectVGAX15DisplayMaterialV2IDVACyAA0ouE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0op10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGG_AA21_BackdropGroupEffect2VTt2B5, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>);
}

{
  return specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(a1, a2, 88, 48, _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO5EntryVG_AS8StableIDVAA15ModifiedContentVyAXyAA6ZStackVyAA0npoE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAA0N12EffectLayoutA0_LLV3KeyVGGGA4_yAA18TransitionTraitKeyVGGTt2B5, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
}

{
  return specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(a1, a2, 488, 48, _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO4ItemVG_AS2IDVAA0npE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVTt2B5, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t x8_0@<X8>)
{
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v23 = a1[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v21, *&v10[0]);
  if (v5)
  {
    v6 = *(v5 + 72);
  }

  else
  {
    v6 = 0;
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v13 = *MEMORY[0x1E698D3F8];
  v14 = MEMORY[0x1E69E7CD0];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  swift_weakInit();
  v18 = 0;
  v19 = 0;
  v20 = -1;
  v10[0] = v21;
  v10[1] = v22;
  v10[2] = v23;
  v11 = 0;
  v12 = v6;
  if (AGSubgraphShouldRecordTree())
  {
    outlined init with copy of _GraphInputs(&v21, v9);
    AGSubgraphBeginTreeElement();
    specialized static View.makeViewList(view:inputs:)(OffsetAttribute2, v10, x8_0);
    AGSubgraphEndTreeElement();
  }

  else
  {
    outlined init with copy of _GraphInputs(&v21, v9);
    specialized static View.makeViewList(view:inputs:)(OffsetAttribute2, v10, x8_0);
  }

  return outlined destroy of _ViewListInputs(v10);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *), uint64_t (*a6)(void))
{
  v8 = a1[1];
  v25 = *a1;
  v26 = v8;
  v27 = a1[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v25, *&v14[0]);
  if (v9)
  {
    v10 = *(v9 + 72);
  }

  else
  {
    v10 = 0;
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v17 = *MEMORY[0x1E698D3F8];
  v18 = MEMORY[0x1E69E7CD0];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  swift_weakInit();
  v22 = 0;
  v23 = 0;
  v24 = -1;
  v14[0] = v25;
  v14[1] = v26;
  v14[2] = v27;
  v15 = 0;
  v16 = v10;
  if (AGSubgraphShouldRecordTree())
  {
    a6(0);
    outlined init with copy of _GraphInputs(&v25, v13);
    AGSubgraphBeginTreeElement();
    a5(OffsetAttribute2, v14);
    AGSubgraphEndTreeElement();
  }

  else
  {
    outlined init with copy of _GraphInputs(&v25, v13);
    a5(OffsetAttribute2, v14);
  }

  return outlined destroy of _ViewListInputs(v14);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  v22 = a1[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v20, *&v9[0]);
  if (v5)
  {
    v6 = *(v5 + 72);
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  v12 = *MEMORY[0x1E698D3F8];
  v13 = MEMORY[0x1E69E7CD0];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  swift_weakInit();
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v9[0] = v20;
  v9[1] = v21;
  v9[2] = v22;
  v10 = 0;
  v11 = v6;
  if (AGSubgraphShouldRecordTree())
  {
    outlined init with copy of _GraphInputs(&v20, v8);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(v9, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA019FlexibleButtonFrameL0VG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    outlined init with copy of _GraphInputs(&v20, v8);
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(v9, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA019FlexibleButtonFrameL0VG_Tt0t3g5, a3);
  }

  return outlined destroy of _ViewListInputs(v9);
}

double ViewPlacementCache.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 1;
  return result;
}

CGSize __swiftcall ProposedViewSize.replacingUnspecifiedDimensions(by:)(CGSize by)
{
  if ((v2 & 1) == 0)
  {
    by.width = v1;
  }

  if ((v4 & 1) == 0)
  {
    by.height = v3;
  }

  return by;
}

void _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12 == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v31 = a4[3];
      v32 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v31);
      v55[0] = 0;
      v33 = a2[3];
      v51 = a2[2];
      v52 = v33;
      v53 = a2[4];
      v54 = *(a2 + 20);
      v34 = a2[1];
      v49 = *a2;
      v50 = v34;
      (*(v32 + 16))(v48, v55, &v49, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v31, v32);
      v36 = v48[0];
      v35 = v48[1];
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        if (v36)
        {
          *a5 = v36;
          *(a5 + 8) = v35;
          return;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!v12 && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v37 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v37;
    return;
  }

  v46 = 0;
  v47 = 1;
  v41 = *(a2 + 9);
  v42 = v41 & 0x22;
  if ((v41 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v49 = __PAIR64__(*(v13 + 16), a1);
    *(&v49 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v49) = *(a2 + 18);
    *(&v49 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    v47 = 0;
  }

  else
  {
    v14 = 0;
  }

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v39[0] = &v46;
  v39[1] = &v44;
  v40 = &v45;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v38;
  v43 = 0;
  v19 = a2[3];
  v51 = a2[2];
  v52 = v19;
  v53 = a2[4];
  v54 = *(a2 + 20);
  v20 = a2[1];
  v49 = *a2;
  v50 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  (*(v16 + 16))(v55, &v43, &v49, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v22 = v55[0];
  v23 = v55[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = v41 & 2;
  v27 = v22 == 0;
  if (v22)
  {
    v28 = HIDWORD(v23);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v28 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    LODWORD(v23) = 0;
  }

  if (v42)
  {
    MEMORY[0x1EEE9AC00](v25);
    v40 = &v45;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    v38[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v38[1] = v39;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v26)
  {
    v30 = v14;
  }

  else
  {
    v30 = v28;
  }

  *a5 = v22;
  *(a5 + 8) = v23 | (v26 << 6);
  *(a5 + 12) = v30;
}

void _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12 == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v31 = a4[3];
      v32 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v31);
      v55[0] = 0;
      v33 = a2[3];
      v51 = a2[2];
      v52 = v33;
      v53 = a2[4];
      v54 = *(a2 + 20);
      v34 = a2[1];
      v49 = *a2;
      v50 = v34;
      (*(v32 + 16))(v48, v55, &v49, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v31, v32);
      v36 = v48[0];
      v35 = v48[1];
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        if (v36)
        {
          *a5 = v36;
          *(a5 + 8) = v35;
          return;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!v12 && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v37 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v37;
    return;
  }

  v46 = 0;
  v47 = 1;
  v41 = *(a2 + 9);
  v42 = v41 & 0x22;
  if ((v41 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v49 = __PAIR64__(*(v13 + 16), a1);
    *(&v49 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v49) = *(a2 + 18);
    *(&v49 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    v47 = 0;
  }

  else
  {
    v14 = 0;
  }

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v39[0] = &v46;
  v39[1] = &v44;
  v40 = &v45;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v38;
  v43 = 0;
  v19 = a2[3];
  v51 = a2[2];
  v52 = v19;
  v53 = a2[4];
  v54 = *(a2 + 20);
  v20 = a2[1];
  v49 = *a2;
  v50 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  (*(v16 + 16))(v55, &v43, &v49, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v22 = v55[0];
  v23 = v55[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = v41 & 2;
  v27 = v22 == 0;
  if (v22)
  {
    v28 = HIDWORD(v23);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v28 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    LODWORD(v23) = 0;
  }

  if (v42)
  {
    MEMORY[0x1EEE9AC00](v25);
    v40 = &v45;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    v38[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v38[1] = v39;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v26)
  {
    v30 = v14;
  }

  else
  {
    v30 = v28;
  }

  *a5 = v22;
  *(a5 + 8) = v23 | (v26 << 6);
  *(a5 + 12) = v30;
}

void _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA019FlexibleButtonFrameC0V_Tt4B5(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12 == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v31 = a4[3];
      v32 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v31);
      v55[0] = 0;
      v33 = a2[3];
      v51 = a2[2];
      v52 = v33;
      v53 = a2[4];
      v54 = *(a2 + 20);
      v34 = a2[1];
      v49 = *a2;
      v50 = v34;
      (*(v32 + 16))(v48, v55, &v49, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v31, v32);
      v36 = v48[0];
      v35 = v48[1];
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        if (v36)
        {
          *a5 = v36;
          *(a5 + 8) = v35;
          return;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!v12 && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v37 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v37;
    return;
  }

  v46 = 0;
  v47 = 1;
  v41 = *(a2 + 9);
  v42 = v41 & 0x22;
  if ((v41 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v49 = __PAIR64__(*(v13 + 16), a1);
    *(&v49 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v49) = *(a2 + 18);
    *(&v49 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    v47 = 0;
  }

  else
  {
    v14 = 0;
  }

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v39[0] = &v46;
  v39[1] = &v44;
  v40 = &v45;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v38;
  v43 = 0;
  v19 = a2[3];
  v51 = a2[2];
  v52 = v19;
  v53 = a2[4];
  v54 = *(a2 + 20);
  v20 = a2[1];
  v49 = *a2;
  v50 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  (*(v16 + 16))(v55, &v43, &v49, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v22 = v55[0];
  v23 = v55[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = v41 & 2;
  v27 = v22 == 0;
  if (v22)
  {
    v28 = HIDWORD(v23);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v28 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    LODWORD(v23) = 0;
  }

  if (v42)
  {
    MEMORY[0x1EEE9AC00](v25);
    v40 = &v45;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    v38[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v38[1] = v39;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v26)
  {
    v30 = v14;
  }

  else
  {
    v30 = v28;
  }

  *a5 = v22;
  *(a5 + 8) = v23 | (v26 << 6);
  *(a5 + 12) = v30;
}

void _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06ZStackC0V_Tt4B5(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12 == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v31 = a4[3];
      v32 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v31);
      v55[0] = 0;
      v33 = a2[3];
      v51 = a2[2];
      v52 = v33;
      v53 = a2[4];
      v54 = *(a2 + 20);
      v34 = a2[1];
      v49 = *a2;
      v50 = v34;
      (*(v32 + 16))(v48, v55, &v49, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v31, v32);
      v36 = v48[0];
      v35 = v48[1];
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        if (v36)
        {
          *a5 = v36;
          *(a5 + 8) = v35;
          return;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!v12 && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v37 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v37;
    return;
  }

  v46 = 0;
  v47 = 1;
  v41 = *(a2 + 9);
  v42 = v41 & 0x22;
  if ((v41 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v49 = __PAIR64__(*(v13 + 16), a1);
    *(&v49 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v49) = *(a2 + 18);
    *(&v49 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    v47 = 0;
  }

  else
  {
    v14 = 0;
  }

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v39[0] = &v46;
  v39[1] = &v44;
  v40 = &v45;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v38;
  v43 = 0;
  v19 = a2[3];
  v51 = a2[2];
  v52 = v19;
  v53 = a2[4];
  v54 = *(a2 + 20);
  v20 = a2[1];
  v49 = *a2;
  v50 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  (*(v16 + 16))(v55, &v43, &v49, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v22 = v55[0];
  v23 = v55[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = v41 & 2;
  v27 = v22 == 0;
  if (v22)
  {
    v28 = HIDWORD(v23);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v28 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    LODWORD(v23) = 0;
  }

  if (v42)
  {
    MEMORY[0x1EEE9AC00](v25);
    v40 = &v45;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    v38[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v38[1] = v39;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v26)
  {
    v30 = v14;
  }

  else
  {
    v30 = v28;
  }

  *a5 = v22;
  *(a5 + 8) = v23 | (v26 << 6);
  *(a5 + 12) = v30;
}

void _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06VStackC0V_Tt4B5(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12 == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v31 = a4[3];
      v32 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v31);
      v55[0] = 0;
      v33 = a2[3];
      v51 = a2[2];
      v52 = v33;
      v53 = a2[4];
      v54 = *(a2 + 20);
      v34 = a2[1];
      v49 = *a2;
      v50 = v34;
      (*(v32 + 16))(v48, v55, &v49, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v31, v32);
      v36 = v48[0];
      v35 = v48[1];
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        if (v36)
        {
          *a5 = v36;
          *(a5 + 8) = v35;
          return;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!v12 && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v37 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v37;
    return;
  }

  v46 = 0;
  v47 = 1;
  v41 = *(a2 + 9);
  v42 = v41 & 0x22;
  if ((v41 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v49 = __PAIR64__(*(v13 + 16), a1);
    *(&v49 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v49) = *(a2 + 18);
    *(&v49 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    v47 = 0;
  }

  else
  {
    v14 = 0;
  }

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v39[0] = &v46;
  v39[1] = &v44;
  v40 = &v45;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v38;
  v43 = 0;
  v19 = a2[3];
  v51 = a2[2];
  v52 = v19;
  v53 = a2[4];
  v54 = *(a2 + 20);
  v20 = a2[1];
  v49 = *a2;
  v50 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  (*(v16 + 16))(v55, &v43, &v49, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v22 = v55[0];
  v23 = v55[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = v41 & 2;
  v27 = v22 == 0;
  if (v22)
  {
    v28 = HIDWORD(v23);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v28 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    LODWORD(v23) = 0;
  }

  if (v42)
  {
    MEMORY[0x1EEE9AC00](v25);
    v40 = &v45;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    v38[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v38[1] = v39;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v26)
  {
    v30 = v14;
  }

  else
  {
    v30 = v28;
  }

  *a5 = v22;
  *(a5 + 8) = v23 | (v26 << 6);
  *(a5 + 12) = v30;
}

void _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06HStackC0V_Tt4B5(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12 == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v31 = a4[3];
      v32 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v31);
      v55[0] = 0;
      v33 = a2[3];
      v51 = a2[2];
      v52 = v33;
      v53 = a2[4];
      v54 = *(a2 + 20);
      v34 = a2[1];
      v49 = *a2;
      v50 = v34;
      (*(v32 + 16))(v48, v55, &v49, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v31, v32);
      v36 = v48[0];
      v35 = v48[1];
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        if (v36)
        {
          *a5 = v36;
          *(a5 + 8) = v35;
          return;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!v12 && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v37 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v37;
    return;
  }

  v46 = 0;
  v47 = 1;
  v41 = *(a2 + 9);
  v42 = v41 & 0x22;
  if ((v41 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v49 = __PAIR64__(*(v13 + 16), a1);
    *(&v49 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v49) = *(a2 + 18);
    *(&v49 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    v47 = 0;
  }

  else
  {
    v14 = 0;
  }

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v39[0] = &v46;
  v39[1] = &v44;
  v40 = &v45;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v38;
  v43 = 0;
  v19 = a2[3];
  v51 = a2[2];
  v52 = v19;
  v53 = a2[4];
  v54 = *(a2 + 20);
  v20 = a2[1];
  v49 = *a2;
  v50 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  (*(v16 + 16))(v55, &v43, &v49, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v22 = v55[0];
  v23 = v55[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = v41 & 2;
  v27 = v22 == 0;
  if (v22)
  {
    v28 = HIDWORD(v23);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v28 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    LODWORD(v23) = 0;
  }

  if (v42)
  {
    MEMORY[0x1EEE9AC00](v25);
    v40 = &v45;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    v38[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v38[1] = v39;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v26)
  {
    v30 = v14;
  }

  else
  {
    v30 = v28;
  }

  *a5 = v22;
  *(a5 + 8) = v23 | (v26 << 6);
  *(a5 + 12) = v30;
}

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v79 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v73 = v7;
  v72 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v95 = *a2;
  v96 = v10;
  v97 = *(a2 + 32);
  v11 = v95;
  outlined init with copy of _GraphInputs(&v95, &v87);
  v80 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v82 = DWORD1(v97);
  v74 = a4;
  v77 = v11;
  if ((WORD2(v97) & 0x1000) != 0)
  {
    v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v81 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v78 = v12;
  if (v79 & 1 | ((v82 & 0x22) != 0) || (v15 = v12, (v81 & 1) != 0))
  {
    v16 = v96;
    swift_beginAccess();
    *&v87 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v87) = v12;
    *&v88[0] = MEMORY[0x1E69E7CC0];
    *(&v88[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v88[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v87) = *(a2 + 72);
    *(&v87 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v91 = *(a2 + 32);
  v92 = v19;
  v93 = *(a2 + 64);
  v94 = *(a2 + 80);
  v20 = *(a2 + 16);
  v89 = *a2;
  v90 = v20;
  DWORD1(v91) = v82 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v92;
    *&v98[0] = v92;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v87);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v92;
      }
    }

    *&v87 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v87);
  }

  v26 = v78;
  if (v80 != v78)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v89, v78);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v89, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v89, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v89, v78);
  }

  v98[2] = v91;
  v98[3] = v92;
  v98[4] = v93;
  v99 = v94;
  v98[0] = v89;
  v98[1] = v90;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v83, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v98);

  v86 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v78;
  }

  if (!((v79 | v81) & 1 | (v80 != v26)))
  {
    outlined destroy of _GraphInputs(&v95);
    v38 = v74;
    goto LABEL_43;
  }

  v76 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v71 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v70 = HIDWORD(v32);
  v64 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v69 = HIDWORD(v34);
  v63 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v68 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v77) == v26)
  {
    LODWORD(v66) = 0;
    v67 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v66 = HIDWORD(v39);
    v67 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v83);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v65 = HIDWORD(v40);
  if ((v79 | v81))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v76;
    *(v43 + 24) = v31;
    *(v43 + 28) = v71;
    *(v43 + 32) = v33;
    *(v43 + 36) = v70;
    *(v43 + 40) = v35;
    *(v43 + 44) = v69;
    *(v43 + 48) = v37;
    *(v43 + 52) = v68;
    *(v43 + 56) = v67;
    *(v43 + 60) = v66;
    *(v43 + 64) = v41;
    *(v43 + 68) = v65;
    *&v87 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v87) = 0;
    v45 = v44;
    v26 = v78;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v80 != v26)
  {
    *(&v88[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v88[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v87 = v46;
    *(v46 + 16) = v76;
    *(v46 + 24) = v31;
    *(v46 + 28) = v71;
    *(v46 + 32) = v33;
    *(v46 + 36) = v70;
    *(v46 + 40) = v35;
    *(v46 + 44) = v69;
    *(v46 + 48) = v37;
    *(v46 + 52) = v68;
    *(v46 + 56) = v67;
    *(v46 + 60) = v66;
    *(v46 + 64) = v41;
    *(v46 + 68) = v65;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v87);
    *&v87 = v73;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v73 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v88[4] + 8, 0, 28);
      *(&v88[3] + 8) = 0u;
      *&v87 = __PAIR64__(v63, v64);
      *(&v87 + 1) = __PAIR64__(v47, DWORD2(v96));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      v56 = swift_endAccess();
      LODWORD(v88[0]) = v55;
      *(v88 + 8) = v95;
      *(&v88[1] + 8) = v96;
      *(&v88[2] + 8) = v97;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v87);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v73 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v87 = __PAIR64__(v47, v80);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v83);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v87 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v87) = 0;
        v26 = v78;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v95);
LABEL_41:
  v38 = v74;
  if (v81)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v77);
    v57 = *(a2 + 48);
    v88[1] = *(a2 + 32);
    v88[2] = v57;
    v88[3] = *(a2 + 64);
    LODWORD(v88[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v87 = *a2;
    v88[0] = v58;
    (*(v59 + 8))(&v87, &v83);
  }

LABEL_43:
  if ((v82 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v84 | 0x80;
  }

  else
  {

    v61 = v84;
    v60 = v85;
  }

  v88[1] = v91;
  v88[2] = v92;
  v88[3] = v93;
  LODWORD(v88[4]) = v94;
  v87 = v89;
  v88[0] = v90;
  outlined destroy of _ViewInputs(&v87);

  *v38 = v83;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
}