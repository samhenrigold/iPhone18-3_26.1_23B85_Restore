void sub_1FE8(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqual:NTKComplicationSlotCenter];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) device];
  _NTKDigitalModularLayoutConstants();
  if (v2)
  {
    v5 = &v9;
  }

  else
  {
    v5 = &v8;
  }

  [v3 setContentHeight:*v5];

  v6 = *(a1 + 48);
  v7 = [v6 faceColorPalette];
  [v6 _applyFaceColorPalette:v7 toModuleView:*(a1 + 40)];
}

void sub_26FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 faceColorPalette];
  [v2 _applyFaceColorPalette:v3 toModuleView:v4];

  [v4 setHighlightAlpha:0.0];
}

void sub_28C0(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3 == 2 || a3 == 1 || (v5 = 0.0, !a3))
  {
    CLKCompressFraction();
  }

  v6 = v5 + -0.5;
  if (v5 + -0.5 < 0.0)
  {
    v6 = -(v5 + -0.5);
  }

  v7 = 0.5 - v6;
  [v11 applyTransitionFraction:*(a1 + 32) fromFaceColorPalette:*(a1 + 40) toFaceColorPalette:71 units:1 brightenedUnits:?];
  [v11 setHighlightAlpha:v7];
  v8 = *(a1 + 48);
  if (([*(a1 + 32) isMulticolor] & 1) != 0 || objc_msgSend(*(a1 + 40), "isMulticolor"))
  {
    if ([*(a1 + 40) isMulticolor])
    {
      v9 = [*(a1 + 32) isMulticolor];
      v10 = v11;
      if ((v9 & 1) == 0)
      {
        v8 = 1.0 - *(a1 + 48);
      }
    }

    else
    {
      v10 = v11;
    }

    [v10 transitionToMonochromeWithFraction:v8];
  }

  else
  {
    [v11 updateMonochromeColor];
  }
}

void sub_2E64(uint64_t a1, uint64_t a2)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) _complicationSlotsForRow:a2];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(a1 + 32) _moduleViewForComplicationSlot:*(*(&v16 + 1) + 8 * v7)];
        v9 = objc_opt_class();
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_3014;
        v12[3] = &unk_8328;
        v13 = v8;
        v14 = *(a1 + 40);
        v15 = a2;
        v10 = v8;
        [v9 _performIfNonRichModuleView:v10 actions:v12];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

void *sub_3014(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return (*(result[5] + 16))(result[5], v1, result[6]);
  }

  return result;
}