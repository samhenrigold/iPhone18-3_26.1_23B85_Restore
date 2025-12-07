void sub_1858(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  switch(a3)
  {
    case 2uLL:
      v11 = [NTKComplication anyComplicationOfType:18];
      [(NTKFace *)v5 setComplication:v11 forSlot:NTKComplicationSlotTop];

      v12 = [NTKComplication anyComplicationOfType:15];
      [(NTKFace *)v5 setComplication:v12 forSlot:NTKComplicationSlotBottom];

      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:4000];
      v14[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
      v14[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
      v14[2] = v8;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v14[3] = v10;
      v13 = [NSArray arrayWithObjects:v14 count:4];
      [(NTKFace *)v5 setCurationPlacements:v13];

      goto LABEL_8;
    case 1uLL:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
      v15[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
      v15[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v15[2] = v8;
      v9 = v15;
      goto LABEL_6;
    case 0uLL:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:8000];
      v16[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
      v16[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v16[2] = v8;
      v9 = v16;
LABEL_6:
      v10 = [NSArray arrayWithObjects:v9 count:3];
      [(NTKFace *)v5 setCurationPlacements:v10];
LABEL_8:

      break;
  }
}

id sub_1D94(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_119E0);
  if (qword_119E8)
  {
    v3 = qword_119E8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_119F0))
  {
    qword_119E8 = v2;
    qword_119F0 = [v2 version];
    v5 = qword_119D8;
    qword_119D8 = &off_CB88;
  }

  v6 = qword_119D8;
  os_unfair_lock_unlock(&unk_119E0);

  return v6;
}

void sub_1F64(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = qword_119F8;
  qword_119F8 = v2;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) device];
  v6 = [v4 _orderedValuesForDevice:v5];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"color %lu", [v11 unsignedIntValue]);
        [qword_119F8 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_3D54(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v9;
  if (isKindOfClass)
  {
    v7 = [v9 display];
    v8 = v7;
    if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
    {
      [v7 transitionToMonochromeWithFraction:*(a1 + 32)];
    }

    else
    {
      [v7 updateMonochromeColor];
    }

    v6 = v9;
  }
}

void sub_413C(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v9;
  if (isKindOfClass)
  {
    v7 = [v9 display];
    v8 = v7;
    if (*(a1 + 32) == 1)
    {
      [v7 transitionToMonochromeWithFraction:0.0];
    }

    else
    {
      [v7 updateMonochromeColor];
    }

    v6 = v9;
  }
}

void sub_4768(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

double sub_49AC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11A18);
  if (qword_11A20)
  {
    v3 = qword_11A20 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_11A28))
  {
    v5 = *&qword_11A10;
  }

  else
  {
    qword_11A20 = v2;
    qword_11A28 = [v2 version];
    [NTKAnalogUtilities whistlerMediumDialDiameterForDevice:v2];
    v5 = *&v6;
    qword_11A10 = v6;
  }

  os_unfair_lock_unlock(&unk_11A18);

  return v5;
}