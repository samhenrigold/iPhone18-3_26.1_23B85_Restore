uint64_t PlainDataNodeWithValidity<float>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 32) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t PlainDataNodeWithValidity<SAEventInfo>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 64) == 1)
  {
    *(a3 + 56) = result + 32;
    return a2(a3);
  }

  return result;
}

__n128 PlainDataNode<SAEventInfo>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v3;
  return result;
}

uint64_t PlainDataNodeWithValidity<BOOL>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 29) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t SADynamicArray<ContactReclassificationRegion,(unsigned short)3>::sendCallback(unsigned __int16 *a1, uint64_t (*a2)(void *), void *a3)
{
  if (*(a1 + 128) == 1 || (result = (*(*a1 + 40))(a1), result))
  {
    a3[4] = a1[14];
    a3[5] = a1 + 14;
    a3[7] = (*(*a1 + 48))(a1);
    a3[6] = 28 * (*(*a1 + 40))(a1);

    return a2(a3);
  }

  return result;
}

void SADynamicArray<ContactReclassificationRegion,(unsigned short)3>::injectBuffer(uint64_t a1, unsigned __int16 *a2)
{
  if ((*(a1 + 129) & 1) != 0 || (*(a1 + 21) & 1) == 0)
  {
    v3 = a2[3];
    *(a1 + 34) = v3;
    v4 = a2[2];
    v5 = v4 >= 0x1C ? 28 : a2[2];
    if (v3)
    {
      v6 = 0;
      v7 = a2 + *a2;
      if (v4 <= 0x1C)
      {
        v8 = 28 - v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = (a1 + 36);
      do
      {
        memcpy(v9, &v7[v6 * a2[2]], v5);
        if (v4 <= 0x1B)
        {
          bzero(&v9[v5], v8);
        }

        ++v6;
        v9 += 28;
      }

      while (v6 < a2[3]);
    }
  }
}

double PassiveStylus3rdPartyDetection::initialize(void *a1)
{
  result = 2.84809454e-306;
  *a1 = 0x80000000800000;
  return result;
}

uint64_t PassiveStylus3rdPartyDetection::updateMaxValues(uint64_t result, uint64_t a2, float a3, float a4)
{
  v4 = a3 - a4;
  v5 = *a2;
  if (v4 <= *a2)
  {
    if (v4 > *(a2 + 4))
    {
      *(a2 + 4) = v4;
      *(a2 + 10) = result;
    }
  }

  else
  {
    *(a2 + 10) = *(a2 + 8);
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = result;
  }

  return result;
}

BOOL PassiveStylus3rdPartyDetection::isPathPassiveStylusCandidate(float *a1)
{
  v1 = a1[19];
  v2 = a1[20];
  v3 = sqrtf(v1 * v2);
  v4 = a1[42];
  v5 = a1[43];
  v6 = a1[22];
  v7 = a1[45];
  v8 = sqrtf(v4 * v5);
  if (fminf(a1[86], a1[87]) <= -3000.0)
  {
    v10 = 0;
    if (v6 < 1.37 && v7 < 1.41 && v2 < 5600.0 && v5 < 5400.0 && v1 < 7100.0)
    {
      v10 = 0;
      if (v4 < 7200.0 && v3 < 6300.0 && v8 < 6200.0)
      {
        return a1[2] < 150.0;
      }
    }
  }

  else
  {
    if (v6 >= 1.5 || v7 >= 1.5)
    {
      v9 = 0;
      if (v6 < 1.8 && v7 < 1.8 && v2 < 5800.0 && v5 < 5800.0)
      {
        v9 = a1[2] < 150.0;
      }
    }

    else
    {
      v9 = 1;
    }

    v11 = 0;
    if (v2 < 6600.0 && v5 < 6500.0 && v1 < 10100.0)
    {
      v11 = 0;
      if (v4 < 9100.0 && v3 < 7700.0 && v8 < 7200.0)
      {
        v11 = a1[2] < 190.0;
      }
    }

    return v9 && v11;
  }

  return v10;
}

float PassiveStylus3rdPartyDetection::calcEllipseDistance(float *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 88);
  v12[0] = *(a2 + 72);
  v12[1] = v5;
  v13 = *(a2 + 104);
  v6 = PalmRejUtil::calculateSAEllipseFoci(v12, v4);
  v7 = a1[1];
  return (((sqrtf(((v7 - v8) * (v7 - v8)) + ((*a1 - v6) * (*a1 - v6))) + sqrtf(((v7 - v10) * (v7 - v10)) + ((*a1 - v9) * (*a1 - v9)))) * 0.5) - *(a2 + 76)) - a1[19];
}

void PassiveStylus3rdPartyDetection::findNearestPath(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 400 * a1);
  v6 = *(a3 + 1148);
  if (v6 < 1)
  {
    v8 = 0;
    v10 = 3.4028e38;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 3.4028e38;
    do
    {
      v11 = *(a2 + 8252 + 2 * v9);
      if (v11 != a1)
      {
        v12 = PassiveStylus3rdPartyDetection::calcEllipseDistance(v5, a2 + 400 * *(a2 + 8252 + 2 * v9));
        if (v12 < v10)
        {
          v8 = v11;
          v10 = v12;
        }

        LOWORD(v6) = *(a3 + 1148);
      }

      ++v9;
    }

    while (v9 < v6);
  }

  v13 = a2 + 400 * v8;
  v14 = *v13;
  v15 = *(v13 + 88);
  v26[0] = *(v13 + 72);
  v26[1] = v15;
  v27 = *(v13 + 104);
  v16 = PalmRejUtil::calculateSAEllipseFoci(v26, v14);
  v17 = v5[1];
  v19 = sqrtf(((v18 - v17) * (v18 - v17)) + ((v16 - *v5) * (v16 - *v5)));
  v22 = sqrtf(((v21 - v17) * (v21 - v17)) + ((v20 - *v5) * (v20 - *v5)));
  *(a3 + 1768) = v8;
  *(a3 + 1772) = v10;
  v23 = v19 <= v22;
  v24 = v22 / v19;
  v25 = v19 / v22;
  if (!v23)
  {
    v25 = v24;
  }

  *(a3 + 1776) = v25;
}

uint64_t PassiveStylus3rdPartyDetection::isPassiveStylus(uint64_t a1)
{
  v1 = *(a1 + 332);
  if (v1 <= 6249.2)
  {
    v5 = 0.0;
    v6 = fminf(fminf(*(a1 + 344), *(a1 + 348)), 0.0);
    if ((*(a1 + 68) & 0xFFFE) != 0)
    {
      v5 = 1.0;
    }

    v7 = *(a1 + 340) * v5;
    if (v6 <= -1269.4)
    {
      v4 = *(a1 + 180) <= 1.1608 && v7 > -0.5;
    }

    else
    {
      v4 = v7 <= -6.5;
      if (*(a1 + 336) <= 116.5)
      {
        v4 = 1;
      }
    }
  }

  else
  {
    v3 = *(a1 + 204) <= 169.5 && v1 <= 6583.1;
    v4 = v3 && *(a1 + 336) > 87.5;
  }

  return v4 & 1;
}

uint64_t PassiveStylus3rdPartyDetection::identifyPassiveStylus(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 1764);
  v6 = *(a2 + 1766);
  v7 = a2 + 1780;
  v8 = 1;
  do
  {
    v9 = v8;
    result = PassiveStylus3rdPartyDetection::isPathPassiveStylusCandidate((a1 + 400 * v5));
    if (result)
    {
      PassiveStylus3rdPartyDetection::findNearestPath(v5, a1, a2);
      result = PassiveStylus3rdPartyDetection::isPassiveStylus(a1 + 400 * v5);
      if (result)
      {
        *(v7 + 2 * v4) = v5;
      }
    }

    v8 = 0;
    v5 = v6;
    v4 = 1;
  }

  while ((v9 & 1) != 0);
  return result;
}

void Device0x038FireflyTask::Device0x038FireflyTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *v19 = &unk_2876F0950;
  AlgDataNode::AlgDataNode((v19 + 13), 0x202823EF9EB16D97, 0);
  v53 = v20;
  *(a1 + 132) = 0;
  *(a1 + 148) = 0;
  *(a1 + 140) = 0;
  *(a1 + 156) = 0;
  v21 = *(a3 + 4);
  *(a1 + 200) = 0;
  *(a1 + 104) = &unk_2876F0B58;
  *(a1 + 120) = 20658;
  *(a1 + 128) = 28;
  *(a1 + 160) = a3;
  *(a1 + 168) = a4;
  *(a1 + 176) = a5;
  *(a1 + 184) = a6;
  *(a1 + 192) = a7;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *(a1 + 256) = 0;
  v22 = 12000 / v21;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = v22;
  *(a1 + 248) = v22;
  *(a1 + 232) = 0;
  SA3DArrayDynamicSize<short>::SA3DArrayDynamicSize((a1 + 264), 0xBB59D9CDEC2382FFLL, 3, 2, *(a5 + 13), 0);
  *(a1 + 264) = &unk_2876F0BA8;
  *(a1 + 296) = &unk_2876F0C00;
  *(a1 + 336) = a1 + 2832;
  SA3DArrayDynamicSize<short>::SA3DArrayDynamicSize((a1 + 344), 0xBB59D9CDEC238300, 3, 2, *(a5 + 10), 0);
  *(a1 + 344) = &unk_2876F0BA8;
  *(a1 + 376) = &unk_2876F0C00;
  *(a1 + 416) = a1 + 2832;
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((a1 + 424), 0x5CF65C0F2F3957D9, 3, 2, *(a5 + 13), 0);
  *(a1 + 424) = &unk_2876F0C50;
  *(a1 + 456) = &unk_2876F0CA8;
  *(a1 + 496) = a1 + 2832;
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((a1 + 504), 0x5CFBCD05B4960D1ALL, 3, 2, *(a5 + 10), 0);
  *(a1 + 504) = &unk_2876F0C50;
  *(a1 + 536) = &unk_2876F0CA8;
  *(a1 + 576) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 584), 0xBFDBEF53D0DAF87BLL, 2, *(a5 + 13), 0, 0);
  *(a1 + 584) = &unk_2876F0CF8;
  *(a1 + 616) = &unk_2876F0D48;
  *(a1 + 648) = a1 + 2832;
  v49 = SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 656), 0xBFDBEF53D0DAF87CLL, 2, *(a5 + 10), 0, 0);
  *(a1 + 656) = &unk_2876F0CF8;
  *(a1 + 688) = &unk_2876F0D48;
  *(a1 + 720) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 728), 0xBB59D9CDEC15D09ELL, 2, *(a5 + 13), 0, 0);
  v54 = a3;
  *(a1 + 728) = &unk_2876F0CF8;
  *(a1 + 760) = &unk_2876F0D48;
  *(a1 + 792) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 800), 0xBB59D9CDEC15D09FLL, 2, *(a5 + 10), 0, 0);
  *(a1 + 800) = &unk_2876F0CF8;
  *(a1 + 832) = &unk_2876F0D48;
  *(a1 + 864) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 872), 0x1E4424E39C6ED855, 2, *(a5 + 13), 0, 0);
  *(a1 + 872) = &unk_2876F0CF8;
  *(a1 + 904) = &unk_2876F0D48;
  *(a1 + 936) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 944), 0x1E4995DA21CB8D96, 2, *(a5 + 10), 0, 0);
  *(a1 + 944) = &unk_2876F0CF8;
  *(a1 + 976) = &unk_2876F0D48;
  *(a1 + 1008) = a1 + 2832;
  v48 = SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 1016), 0xD5D66036FCC47838, 2, *(a5 + 13), 0, 0);
  *(a1 + 1016) = &unk_2876F0CF8;
  *(a1 + 1048) = &unk_2876F0D48;
  *(a1 + 1080) = a1 + 2832;
  v47 = SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 1088), 0xD5DBD12D82212D79, 2, *(a5 + 10), 0, 0);
  *(a1 + 1088) = &unk_2876F0CF8;
  *(a1 + 1120) = &unk_2876F0D48;
  *(a1 + 1152) = a1 + 2832;
  PadFireflyProjection::PadFireflyProjection((a1 + 1160), *(a5 + 10), *(a5 + 13), a1 + 2832, 1);
  SA2DArrayDynamicSize<short>::SA2DArrayDynamicSize((a1 + 2008), 0x252CA9A8633F67E5, 2, *(a5 + 13), 0, 0);
  SA2DArrayDynamicSize<short>::SA2DArrayDynamicSize((a1 + 2072), 0x252CA9A8633F67E6, 2, *(a5 + 10), 0, 0);
  AlgDataNode::AlgDataNode((a1 + 2136), 0xDA94E17B27780988, 0);
  v52 = v23;
  *(a1 + 2136) = &unk_2876F0D90;
  *(a1 + 2164) = 0u;
  *(a1 + 2152) = 20663;
  *(a1 + 2160) = 16;
  AlgDataNode::AlgDataNode((a1 + 2184), 0x6EE7EB8CB6409118, 0);
  v40 = v24;
  *(a1 + 2184) = &unk_2876F0DE0;
  *(a1 + 2212) = 0;
  *(a1 + 2200) = 20484;
  *(a1 + 2208) = 2;
  SensorImage<float>::SensorImage(a1 + 2216, 0x6E77BE7A6F17F92BLL, *(a5 + 10), *(a5 + 13), *(v54 + 1436), *(v54 + 1437), 0);
  v46 = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 2304), 0x726DDA1DC2AEC168, *(a5 + 13), 0);
  *(a1 + 2304) = &unk_2876F0E30;
  *(a1 + 2336) = &unk_2876F0E78;
  *(a1 + 2360) = a1 + 2832;
  v51 = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 2368), 0x726DDA1DC2AEC169, *(a5 + 10), 0);
  *(a1 + 2368) = &unk_2876F0E30;
  *(a1 + 2400) = &unk_2876F0E78;
  *(a1 + 2424) = a1 + 2832;
  *(a1 + 2432) = a8;
  *(a1 + 2440) = a9;
  AlgDataNode::AlgDataNode((a1 + 2448), 0x7D4007DE092002F9, 0);
  *(a1 + 2448) = &unk_2876F01A8;
  *(a1 + 2476) = 0;
  *(a1 + 2464) = 20482;
  *(a1 + 2472) = 1;
  *(a1 + 2480) = a11;
  AlgDataNode::AlgDataNode((a1 + 2488), 0xC1219A91C5D8FC40, 0);
  *(a1 + 2488) = &unk_2876F01A8;
  *(a1 + 2516) = 0;
  *(a1 + 2504) = 20482;
  *(a1 + 2512) = 1;
  *(a1 + 2520) = a12;
  Device0x038KonaFireflyCalBlobHandler::Device0x038KonaFireflyCalBlobHandler((a1 + 2528), 0x7990697F5F64FF07, *(a1 + 176), a1 + 2476, v54 + 8, v54 + 420, v54 + 484, v54 + 532, v54 + 768, v54 + 1644);
  Device0x038AlgsFireflyCalBlobHandler::Device0x038AlgsFireflyCalBlobHandler((a1 + 2624), 0x4DFDD14B925D56E5, *(a1 + 176), *(a1 + 2480) + 28, a3 + 8, a3 + 484, a3 + 532, a3 + 768);
  Device0x038P100CalBlobHandler::Device0x038P100CalBlobHandler((a1 + 2704), 0x8E434ACF09CE46EELL, *(a1 + 176), a1 + 2516, a3 + 8, a3 + 532, a3 + 768);
  MtdoCalBlobHandler::MtdoCalBlobHandler((a1 + 2776), 0x7470D9D061CDB6F2, a3 + 144, a1 + 3184, *(a1 + 2520) + 28);
  AlgDataNode::AlgDataNode((a1 + 2832), 0xCECE29DD463D1FALL, 0);
  *(a1 + 2832) = &unk_2876F0108;
  *(a1 + 2860) = 0;
  *(a1 + 2848) = 20480;
  *(a1 + 2856) = 1;
  AlgDataNode::AlgDataNode((a1 + 2864), 0x12283E913E601F77, 0);
  *(a1 + 2864) = &unk_2876F0108;
  *(a1 + 2892) = 0;
  *(a1 + 2880) = 20480;
  *(a1 + 2888) = 1;
  AlgDataNode::AlgDataNode((a1 + 2896), 0xA7C1D0C857BEC0E6, 0);
  *(a1 + 2924) = 0;
  *(a1 + 2912) = 20480;
  *(a1 + 2920) = 1;
  *(a1 + 2896) = &unk_2876F0EB0;
  *(a1 + 2928) = a1 + 2832;
  AlgDataNode::AlgDataNode((a1 + 2936), 0xEEDE222532BE097FLL, 0);
  *(a1 + 2936) = &unk_2876F0108;
  *(a1 + 2964) = 0;
  *(a1 + 2952) = 20480;
  *(a1 + 2960) = 1;
  AlgDataNode::AlgDataNode((a1 + 2968), 0xFC6CDD54BCECA76CLL, 0);
  *(a1 + 2968) = &unk_2876F0108;
  *(a1 + 2996) = 0;
  *(a1 + 2984) = 20480;
  *(a1 + 2992) = 1;
  AlgDataNode::AlgDataNode((a1 + 3000), 0x87069111AC36D126, 0);
  *(a1 + 3060) = 0;
  *(a1 + 3028) = 0u;
  *(a1 + 3044) = 0u;
  *(a1 + 3016) = 20710;
  *(a1 + 3024) = 36;
  *(a1 + 3000) = &unk_2876F0F00;
  *(a1 + 3064) = a1 + 2832;
  AlgDataNode::AlgDataNode((a1 + 3072), 0xD86021D475995084, 0);
  *(a1 + 3104) = 1537;
  *(a1 + 3108) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3088) = 39424;
  *(a1 + 3096) = 0x500200000010;
  *(a1 + 3072) = &unk_2876F0F68;
  *(a1 + 3120) = 0u;
  AlgDataNode::AlgDataNode((a1 + 3136), 0xBAE511251A9DF63FLL, 0);
  v44 = v25;
  *(a1 + 3136) = &unk_2876F0FD0;
  *(a1 + 3180) = 0;
  *(a1 + 3164) = 0u;
  *(a1 + 3152) = 20717;
  *(a1 + 3160) = 20;
  AlgDataNode::AlgDataNode((a1 + 3184), 0x50014BEDD2FFC8FLL, 0);
  *(a1 + 3184) = &unk_2876F0108;
  *(a1 + 3212) = 0;
  *(a1 + 3200) = 20480;
  *(a1 + 3208) = 1;
  AlgDataNode::AlgDataNode((a1 + 3216), 0xBB59D9CDEBED55A6, 0);
  *(a1 + 3216) = &unk_2876F1020;
  *(a1 + 3232) = 20679;
  *(a1 + 3240) = 4;
  AlgDataNode::AlgDataNode((a1 + 3248), 0x5BB66379363E093ELL, 0);
  v43 = v26;
  *(a1 + 3248) = &unk_2876F1070;
  *(a1 + 3276) = 0u;
  *(a1 + 3292) = 0u;
  *(a1 + 3308) = 0u;
  *(a1 + 3324) = 0u;
  *(a1 + 3340) = 0u;
  *(a1 + 3356) = 0u;
  *(a1 + 3372) = 0u;
  *(a1 + 3388) = 0u;
  *(a1 + 3404) = 0u;
  *(a1 + 3420) = 0u;
  *(a1 + 3436) = 0u;
  *(a1 + 3452) = 0u;
  *(a1 + 3468) = 0u;
  *(a1 + 3484) = 0u;
  *(a1 + 3500) = 0u;
  *(a1 + 3516) = 0u;
  *(a1 + 3532) = 0u;
  *(a1 + 3548) = 0u;
  *(a1 + 3564) = 0u;
  *(a1 + 3580) = 0u;
  *(a1 + 3596) = 0u;
  *(a1 + 3612) = 0u;
  *(a1 + 3628) = 0u;
  *(a1 + 3644) = 0u;
  *(a1 + 3660) = 0u;
  *(a1 + 3676) = 0u;
  *(a1 + 3692) = 0u;
  *(a1 + 3264) = 20684;
  *(a1 + 3272) = 432;
  AlgDataNode::AlgDataNode((a1 + 3712), 0x22FFCE66D6CFA02BLL, 0);
  *(a1 + 3712) = &unk_2876F10C0;
  *(a1 + 3740) = 0;
  *(a1 + 3728) = 20690;
  *(a1 + 3736) = 1;
  AlgDataNode::AlgDataNode((a1 + 3744), 0x20282447A71223BCLL, 0);
  *(a1 + 3744) = &unk_2876F1110;
  *(a1 + 3776) = 0;
  *(a1 + 3760) = 20694;
  *(a1 + 3768) = 8;
  AlgDataNode::AlgDataNode((a1 + 3784), 0xC6AFF4A93A498EE7, 0);
  v45 = v27;
  *(a1 + 3784) = &unk_2876F1160;
  *(a1 + 3812) = 0u;
  *(a1 + 3800) = 20693;
  *(a1 + 3808) = 16;
  AlgDataNode::AlgDataNode((a1 + 3832), 0xC7B00A3F48DE0253, 0);
  v50 = v28;
  *(a1 + 3832) = &unk_2876F0108;
  *(a1 + 3860) = 0;
  *(a1 + 3848) = 20480;
  *(a1 + 3856) = 1;
  AlgDataNode::AlgDataNode((a1 + 3864), 0xB6F623D9FF7182F0, 0);
  *(a1 + 3864) = &unk_2876F0108;
  *(a1 + 3892) = 0;
  *(a1 + 3880) = 20480;
  *(a1 + 3888) = 1;
  AlgDataNode::AlgDataNode((a1 + 3896), 0x2C47D663493762C1, 0);
  v42 = v29;
  *(a1 + 3896) = &unk_2876F0108;
  *(a1 + 3924) = 0;
  *(a1 + 3912) = 20480;
  *(a1 + 3920) = 1;
  AlgDataNode::AlgDataNode((a1 + 3928), 0xF5EAB78FD924E1C5, 0);
  *(a1 + 3928) = &unk_2876F0108;
  *(a1 + 3956) = 0;
  *(a1 + 3944) = 20480;
  *(a1 + 3952) = 1;
  AlgDataNode::AlgDataNode((a1 + 3960), 0x90F2F3BC3C0DB67FLL, 0);
  v39 = v30;
  *(a1 + 3960) = &unk_2876F0108;
  *(a1 + 3988) = 0;
  *(a1 + 3976) = 20480;
  *(a1 + 3984) = 1;
  AlgDataNode::AlgDataNode((a1 + 3992), 0x2F2D4B99917C9E38, 0);
  v38 = v31;
  *(a1 + 3992) = &unk_2876F0108;
  *(a1 + 4020) = 0;
  *(a1 + 4008) = 20480;
  *(a1 + 4016) = 1;
  AlgDataNode::AlgDataNode((a1 + 4024), 0x86A3D9C3ED1F6206, 0);
  *(a1 + 4024) = &unk_2876F01A8;
  *(a1 + 4052) = 0;
  *(a1 + 4040) = 20482;
  *(a1 + 4048) = 1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 4056), 0x1B40A27B851FE8E2, *(a5 + 13), 0);
  *(a1 + 4056) = &unk_2876F0E30;
  *(a1 + 4088) = &unk_2876F0E78;
  *(a1 + 4112) = a1 + 2832;
  v41 = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 4120), 0x1B40A27B851FE8E3, *(a5 + 10), 0);
  *(a1 + 4120) = &unk_2876F0E30;
  *(a1 + 4152) = &unk_2876F0E78;
  *(a1 + 4176) = a1 + 2832;
  *(a1 + 4184) = a10;
  v32 = *(a1 + 192);
  AlgDataNode::AlgDataNode((a1 + 4192), 0x243E7AF0C0BC3422, 0);
  *(a1 + 4220) = 0u;
  *(a1 + 4208) = 20725;
  *(a1 + 4216) = 16;
  *(a1 + 4192) = &unk_2876F11B0;
  *(a1 + 4240) = v32;
  PadFireflyPathCollection::PadFireflyPathCollection(a1 + 4248, 0x78E09D1B6705FB6FLL, v43, v33, a1 + 3712, v52, v40, a3 + 144, v54 + 1712, v54 + 1616, a1 + 3216, a1 + 3744, v45, v54 + 392, a1 + 2832, v50, v42, *(a1 + 192), a6, v54 + 1968, a1 + 3000, v44, v53, v54 + 1912, a3 + 768, a1 + 200, v54);
  AlgDataNode::AlgDataNode((a1 + 5512), 0x9AB68B9F5C67859ELL, 0);
  *(a1 + 5512) = &unk_2876F1218;
  *(a1 + 5544) = 2359297;
  *(a1 + 5572) = 0;
  *(a1 + 5556) = 0;
  *(a1 + 5564) = 0;
  *(a1 + 5548) = 0;
  *(a1 + 5528) = 20578;
  *(a1 + 5536) = 0x5062507200000024;
  ConditionalInjExtAndTaskNode::ConditionalInjExtAndTaskNode();
  *(a1 + 5576) = &unk_2876F0AE0;
  *(a1 + 5680) = a1 + 200;
  ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *(&v37 + 1) = v46;
  *&v37 = v47;
  *(&v36 + 1) = v48;
  *&v36 = a1 + 944;
  PadFireflyJointNpcLcmCompensationWithDetectedPeak::PadFireflyJointNpcLcmCompensationWithDetectedPeak(a1 + 5896, 0x995024046E437373, a5, a1 + 584, v49, a1 + 728, a1 + 800, a1 + 872, v36, v37, v51, a1 + 3744, v45, a1 + 3216, v54 + 2072, a3 + 1712, v52, v54 + 264, v39, v38, *(a1 + 4184));
  PadFireflyDisplayNoiseProjectionStep::PadFireflyDisplayNoiseProjectionStep(a1 + 6328, 0x97187C6ED7215FA3, a5, a3 + 1836, a1 + 264, a1 + 344, a1 + 424, a1 + 504);
  HoverModelSelector::HoverModelSelector((a1 + 6488), a4 + 40, v53, a3 + 1912);
  AlgDataNode::AlgDataNode((a1 + 6512), 0xD4F8584B41CD68EDLL, 0);
  *(a1 + 6564) = 0;
  *(a1 + 6556) = 0;
  *(a1 + 6540) = 0u;
  *(a1 + 6528) = 20716;
  *(a1 + 6536) = 28;
  *(a1 + 6512) = &unk_2876F1268;
  v35 = v34;
  *(a1 + 6568) = a1 + 2832;
  AlgDataNode::AlgDataNode((a1 + 6576), 0x4D8B0D73C3D5824ELL, 0);
  *(a1 + 6604) = 0u;
  *(a1 + 6620) = 0u;
  *(a1 + 6592) = 20707;
  *(a1 + 6600) = 32;
  *(a1 + 6576) = &unk_2876F12D0;
  *(a1 + 6640) = a1 + 2832;
  PadFireflyShapeNoiseProjection::PadFireflyShapeNoiseProjection(a1 + 6648, v53, *(a1 + 176), a1 + 2832, a1 + 264, a1 + 344, v46, v51, a1 + 4056, v41, v35);
  PadFireflyModelBasedGridSearch::PadFireflyModelBasedGridSearch((a1 + 7880), *(a1 + 176), a1 + 6488, *(a4 + 1136), a1 + 2832, a1 + 6648, v53, a4 + 1176, a4 + 1520, a3 + 1912, a1 + 6576, a4 + 2904, a3 + 2008, a4 + 2848, v35);
}

{
  Device0x038FireflyTask::Device0x038FireflyTask(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_2653DDB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, AlgWorkNode *a29, void *a30, AlgWorkNode *a31, AlgTaskNode *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, uint64_t a43, AlgWorkNode *a44, PadFireflyShapeNoiseProjection *a45, uint64_t a46, void *a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, void *a53, void *a54, void *a55, uint64_t a56, void *a57, void *a58, void *a59, void *a60, void *a61, void *a62, PadFireflyProjection *a63)
{
  PadFireflyPathCollectionCuratingStep::~PadFireflyPathCollectionCuratingStep((v69 + 1238));
  v72 = *(v70 - 96);
  v69[1218] = &unk_2876F3580;
  v69[1234] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v72);
  v73 = *(v70 - 160);
  v69[1197] = &unk_2876F2A80;
  v69[1214] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v73);
  PadFireflyXYMeasurementStep::~PadFireflyXYMeasurementStep((v69 + 1161));
  PadFireflyWatershedStep::~PadFireflyWatershedStep((v69 + 1135));
  AlgWorkNode::~AlgWorkNode((v69 + 1120));
  v69[1088] = &unk_2876F2948;
  v69[1098] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(a44);
  PadFireflyPeakDetectionStep::~PadFireflyPeakDetectionStep((v69 + 1050));
  v69[1035] = &unk_2876F3530;
  v69[1046] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(a29);
  PadFireflyModelBasedGridSearch::~PadFireflyModelBasedGridSearch(a66);
  PadFireflyShapeNoiseProjection::~PadFireflyShapeNoiseProjection(a45);
  *a30 = &unk_2876F3810;
  *a47 = &unk_2876F3810;
  v69[791] = &unk_2876F3268;
  v69[805] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(a31);
  PadFireflyJointNpcLcmCompensationWithDetectedPeak::~PadFireflyJointNpcLcmCompensationWithDetectedPeak((v69 + 737));
  AlgTaskNode::~AlgTaskNode((v69 + 724));
  AlgTaskNode::~AlgTaskNode((v69 + 711));
  AlgTaskNode::~AlgTaskNode(a32);
  *a33 = &unk_2876F3810;
  v69[531] = &unk_2876F3358;
  InputDetectionStateNode::~InputDetectionStateNode((v69 + 559));
  v69[531] = &unk_2876F3810;
  *a34 = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a67);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a68);
  *a35 = &unk_2876F3810;
  *a53 = &unk_2876F3810;
  *a54 = &unk_2876F3810;
  *a36 = &unk_2876F3810;
  *a69 = &unk_2876F3810;
  *a52 = &unk_2876F3810;
  **(v70 - 152) = &unk_2876F3810;
  *STACK[0x220] = &unk_2876F3810;
  **(v70 - 256) = &unk_2876F3810;
  *STACK[0x208] = &unk_2876F3810;
  *STACK[0x210] = &unk_2876F3810;
  **(v70 - 120) = &unk_2876F3810;
  *a62 = &unk_2876F3810;
  *STACK[0x218] = &unk_2876F3810;
  *a55 = &unk_2876F3810;
  **(v70 - 248) = &unk_2876F3810;
  *a57 = &unk_2876F3810;
  *a58 = &unk_2876F3810;
  *a59 = &unk_2876F3810;
  *a60 = &unk_2876F3810;
  *STACK[0x228] = &unk_2876F3810;
  *a37 = &unk_2876F3810;
  *a38 = &unk_2876F3810;
  *a39 = &unk_2876F3810;
  *a40 = &unk_2876F3810;
  *a41 = &unk_2876F3810;
  *a42 = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(*(v70 - 144));
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(*(v70 - 240));
  v69[277] = &unk_2876EFEC0;
  v69[281] = &unk_2876EFF18;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(a61);
  *a64 = &unk_2876F3810;
  **(v70 - 136) = &unk_2876F3810;
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(v69 + 259);
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(v69 + 251);
  PadFireflyProjection::~PadFireflyProjection(a63);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 232));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 224));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 216));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 208));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(a48);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 200));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 192));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 184));
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(a65);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(*(v70 - 176));
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(*(v70 - 112));
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(*(v70 - 128));
  **(v70 - 104) = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v69);
  _Unwind_Resume(a1);
}

uint64_t Device0x038FireflyTask::runNodeRegistrations(Device0x038FireflyTask *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 2528);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 2624);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 2704);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 2776);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 144);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 16);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 80);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 392);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 456);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 504);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1408);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1616);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1808);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 264);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 3928);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 3864);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 2936);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1968);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 792);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 856);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 920);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 984);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1048);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1112);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1176);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1232);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1288);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20) + 1344);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 264);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 344);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 2008);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 2072);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 104);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 2216);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 2304);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 2368);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 2184);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 2968);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 2448);
  AlgWorkNode::registerAlgDataNode(this + 24, *(this + 310));
  AlgWorkNode::registerAlgDataNode(this + 24, this + 2488);
  AlgWorkNode::registerAlgDataNode(this + 24, *(this + 315));
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3184);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 2136);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 584);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 656);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 728);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 800);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3216);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1168);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1240);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1312);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1384);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1456);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1528);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1600);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1672);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1744);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1808);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1872);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1936);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3744);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3784);
  AlgWorkNode::registerAlgDataNode(this + 24, *(this + 20) + 1712);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3712);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3248);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3832);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3896);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 2896);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3000);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 3136);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 4024);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 2832);
  AlgWorkNode::registerAlgDataNode(this + 24, *(this + 24));
  AlgWorkNode::registerAlgDataNode(this + 24, *(this + 305));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 22) + 88);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 4248);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 5512);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 4192);
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 5576));
  ConditionalInjExtAndTaskNode::registerChild((this + 5576), (this + 6328));
  ConditionalInjExtAndTaskNode::registerChild((this + 5576), (this + 5688));
  ConditionalInjExtAndTaskNode::registerChild((this + 5688), (this + 8280));
  ConditionalInjExtAndTaskNode::registerChild((this + 5576), (this + 9576));
  ConditionalInjExtAndTaskNode::registerChild((this + 5576), (this + 8400));
  ConditionalInjExtAndTaskNode::registerChild((this + 5576), (this + 8704));
  ConditionalInjExtAndTaskNode::registerChild((this + 5576), (this + 5792));
  ConditionalInjExtAndTaskNode::registerChild((this + 5792), (this + 9744));
  ConditionalInjExtAndTaskNode::registerChild((this + 5792), (this + 5896));
  ConditionalInjExtAndTaskNode::registerChild((this + 5792), (this + 8960));
  ConditionalInjExtAndTaskNode::registerChild((this + 5792), (this + 9080));
  ConditionalInjExtAndTaskNode::registerChild((this + 5792), (this + 9288));
  ConditionalInjExtAndTaskNode::registerChild((this + 5792), (this + 9904));

  return ConditionalInjExtAndTaskNode::registerChild((this + 5792), (this + 10216));
}

void PadFireflyPeakDetectionStep::~PadFireflyPeakDetectionStep(PadFireflyPeakDetectionStep *this)
{
  *this = &unk_2876F2AD0;
  *(this + 34) = &unk_2876F3810;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2AD0;
  *(this + 34) = &unk_2876F3810;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t Device0x038FireflyTask::runBeforeChildren(float **this)
{
  if (*(this + 3212) == 1)
  {
    PadHomography::deriveHomography(this + 535);
    *(this + 3212) = 0;
  }

  if (*(this + 147) == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  *(this + 3740) = v2;
  v3 = (*(this + 3892) & 1) != 0 || (*(this + 3956) & 1) != 0 || PadFireflyPathCollection::getFramesOutofRange((this + 531)) < 4;
  *(this + 3860) = v3;
  v4 = *(this + 125);
  *(this + 2860) = v4;
  if (v4 == 1)
  {
    v5 = this + 148;
    v6 = this + 148;
    if (*(this + 148) && (v6 = this + 151, *(this + 151)) && (v6 = this + 154, *(this + 154)))
    {
      v7 = this + 150;
    }

    else
    {
      v8 = v6[2];
      v7 = ((*(*(this[20] + 243) + 8))() + v8);
    }

    v9 = *v7;
    if (*(this + 148) == 1 || (v5 = this + 151, *(this + 151) == 1) || (v5 = this + 154, *(this + 154) == 1))
    {
      v10 = v5[2];
      v11 = ((*(*(this[20] + 243) + 8))() + v10);
    }

    else
    {
      v11 = this + 150;
    }

    v12 = *v11;
    *(this + 4052) = v9;
    if (*(this[20] + 509) == 2)
    {
      v13 = *(this[21] + 1137);
      v15 = v13 > v9 && v13 > v12;
    }

    else
    {
      v15 = 0;
    }

    *(this + 2892) = v15;
    PadFireflyShapeNoiseProjection::updateProjectionState((this + 831), 0);
    v16 = 0;
    *(this + 2008) = 0;
    v18 = v9 < 6 && v12 < 6;
    *(this + 3062) = v18;
    if (*(this + 3892) == 1)
    {
      v16 = *(this + 147) == 0 && v18;
    }

    *(this + 2924) = v16;
    *(this + 3924) = 1;
    v19 = this[523];
    *(v19 + 12) = v9;
    *(v19 + 13) = v12;
  }

  return 0;
}

uint64_t Device0x038FireflyTask::runAfterChildren(Device0x038FireflyTask *this)
{
  PadFireflyPathCollection::updateOORFireflyContact((this + 4248));
  PadFireflyPathCollection::updateFireflyOutputReady(this + 531);
  PadFireflyPathCollection::updatePalmRejection(this + 4248, this + 5540);
  PadFireflyPathCollection::updatePreviousFireflyContact((this + 4248));
  Device0x038FireflyTask::detectPencilTap(this);
  Path = PadFireflyPathCollection::getPath((this + 4248));
  if (PadFireflyPathTrack::getPathStage(Path) < 3 || (v3 = PadFireflyPathCollection::getPath((this + 4248)), PadFireflyPathTrack::getPathStage(v3) > 4) || (*(this + 144) & 3) != 0)
  {
    *(*(this + 523) + 56) = 0;
  }

  return 0;
}

void Device0x038FireflyTask::detectPencilTap(uint64_t this)
{
  v1 = *(this + 2440);
  *(v1 + 29) = 0;
  *(v1 + 37) = 0;
  *(v1 + 52) = 0;
  *(v1 + 45) = 0;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  if (*(*(this + 2432) + 28) == 1 && *(this + 3740) == 1 && *(*(this + 192) + 28) == 1)
  {
    Path = PadFireflyPathCollection::getPath((this + 4248));
    if (PadFireflyPathTrack::getPathStage(Path) == 3)
    {
      MutableTipPos = PadFireflyPathCollection::getMutableTipPos((this + 4248));
      v5 = MutableTipPos[1];
      v6 = *(this + 184);
      v7 = (v6[7] - (v6[58] - v6[59])) * 0.5;
      v8 = wFfuzzifyAndClip((*MutableTipPos - v6[57]) + ((v6[6] - (v6[56] - v6[57])) * 0.5), 0.0, v6[6]);
      v9 = wFfuzzifyAndClip(v7 + (v5 - v6[59]), 0.0, v6[7]);
      *(v1 + 36) = v8;
      *(v1 + 40) = v9;
      *(v1 + 44) = *MutableTipPos;
      *(v1 + 28) = 1;
      *(v1 + 32) = 1;
    }
  }
}

uint64_t *PadFireflyProjection::PadFireflyProjection(uint64_t *a1, int a2, int a3, uint64_t a4, int a5)
{
  v7 = a3;
  *a1 = a4;
  v10 = a3 + 2 * a5;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 1), 0xD1EA9A42FDEC21B5, v10, 0);
  *(a1 + 16) = a5;
  *(a1 + 68) = a5;
  *(a1 + 69) = a5 + v7;
  *(a1 + 70) = v7;
  a1[1] = &unk_2876F09C8;
  a1[5] = &unk_2876F0A10;
  a1[9] = a4;
  v11 = *a1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 10), 0xF3DE2A2BB4C2118, v10, 0);
  *(a1 + 34) = a5;
  *(a1 + 140) = a5;
  *(a1 + 141) = a5 + v7;
  *(a1 + 142) = v7;
  a1[10] = &unk_2876F09C8;
  a1[14] = &unk_2876F0A10;
  a1[18] = v11;
  v12 = *a1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 19), 0xD1EA9A42FDEC21B6, 2 * a5 + a2, 0);
  *(a1 + 52) = a5;
  *(a1 + 212) = a5;
  *(a1 + 213) = a5 + a2;
  *(a1 + 214) = a2;
  a1[19] = &unk_2876F09C8;
  a1[23] = &unk_2876F0A10;
  a1[27] = v12;
  v13 = *a1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 28), 0xF3DE2A2BB4C2119, 2 * a5 + a2, 0);
  *(a1 + 70) = a5;
  *(a1 + 284) = a5;
  *(a1 + 285) = a5 + a2;
  *(a1 + 286) = a2;
  a1[28] = &unk_2876F09C8;
  a1[32] = &unk_2876F0A10;
  a1[36] = v13;
  v14 = *a1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 37), 0x82D1E2312E17EC9ELL, v10, 0);
  *(a1 + 88) = a5;
  *(a1 + 356) = a5;
  *(a1 + 357) = a5 + v7;
  *(a1 + 358) = v7;
  a1[37] = &unk_2876F09C8;
  a1[41] = &unk_2876F0A10;
  a1[45] = v14;
  v15 = *a1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 46), 0xDD0E2856F0F14921, v10, 0);
  *(a1 + 106) = a5;
  *(a1 + 428) = a5;
  *(a1 + 429) = a5 + v7;
  *(a1 + 430) = v7;
  a1[46] = &unk_2876F09C8;
  a1[50] = &unk_2876F0A10;
  a1[54] = v15;
  v16 = *a1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 55), 0x82D1E2312E17EC9FLL, 2 * a5 + a2, 0);
  *(a1 + 124) = a5;
  *(a1 + 500) = a5;
  *(a1 + 501) = a5 + a2;
  *(a1 + 502) = a2;
  a1[55] = &unk_2876F09C8;
  a1[59] = &unk_2876F0A10;
  a1[63] = v16;
  v17 = *a1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 64), 0xDD0E2856F0F14922, 2 * a5 + a2, 0);
  *(a1 + 142) = a5;
  *(a1 + 572) = a5;
  *(a1 + 573) = a5 + a2;
  *(a1 + 574) = a2;
  a1[64] = &unk_2876F09C8;
  a1[68] = &unk_2876F0A10;
  a1[72] = v17;
  SA1DArrayDynamicSize<unsigned char>::SA1DArrayDynamicSize((a1 + 73), 0xF93784F7B55A1839, v10, 0);
  a1[73] = &unk_2876F0A60;
  a1[77] = &unk_2876F0AA8;
  *(a1 + 160) = a5;
  *(a1 + 644) = a5;
  *(a1 + 645) = a5 + v7;
  *(a1 + 646) = v7;
  SA1DArrayDynamicSize<unsigned char>::SA1DArrayDynamicSize((a1 + 81), 0x202823EE6078E81CLL, v10, 0);
  a1[81] = &unk_2876F0A60;
  a1[85] = &unk_2876F0AA8;
  *(a1 + 176) = a5;
  *(a1 + 708) = a5;
  *(a1 + 709) = a5 + v7;
  *(a1 + 710) = v7;
  SA1DArrayDynamicSize<unsigned char>::SA1DArrayDynamicSize((a1 + 89), 0xF93784F7B55A183ALL, 2 * a5 + a2, 0);
  a1[89] = &unk_2876F0A60;
  a1[93] = &unk_2876F0AA8;
  *(a1 + 192) = a5;
  *(a1 + 772) = a5;
  *(a1 + 773) = a5 + a2;
  *(a1 + 774) = a2;
  SA1DArrayDynamicSize<unsigned char>::SA1DArrayDynamicSize((a1 + 97), 0x202823EE6078E81DLL, 2 * a5 + a2, 0);
  a1[97] = &unk_2876F0A60;
  a1[101] = &unk_2876F0AA8;
  *(a1 + 208) = a5;
  *(a1 + 836) = a5;
  *(a1 + 837) = a5 + a2;
  *(a1 + 838) = a2;
  *(a1 + 840) = a2;
  *(a1 + 841) = v7;
  *(a1 + 842) = a5;
  return a1;
}

void sub_2653DF488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(v18);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(v17);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(v16);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a9);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a10);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a11);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a12);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a13);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a14);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a15);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a16);
  _Unwind_Resume(a1);
}

void PadGatedSensorVecFloat::~PadGatedSensorVecFloat(PadGatedSensorVecFloat *this)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this);

  JUMPOUT(0x266758590);
}

uint64_t PadGatedSensorVecFloat::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 64) + 28) == 1)
  {
    *(a3 + 40) = result + 40;
    *(a3 + 56) = *(result + 48);
    return a2(a3);
  }

  return result;
}

void SensorVector<unsigned char>::~SensorVector(void *a1)
{
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void FireflyInjectConditionalTask::~FireflyInjectConditionalTask(FireflyInjectConditionalTask *this)
{
  AlgTaskNode::~AlgTaskNode(this);

  JUMPOUT(0x266758590);
}

uint64_t FireflyInjectConditionalTask::runTask(FireflyInjectConditionalTask *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  if ((a6 & 1) == 0 && *(*(this + 12) + 28) == 1)
  {
    v12 = *(this + 13);
    *(v12 + 16) = a4;
    TimeState::updateWithMs(v12, a4 / 0x3E8, a5);
  }

  return ConditionalInjExtAndTaskNode::runTask(this, a2, a3, a4, a5, a6);
}

void PadHoverDetectTask::~PadHoverDetectTask(PadHoverDetectTask *this)
{
  *this = &unk_2876F34B8;
  *(this + 895) = &unk_2876F3418;
  *(this + 913) = &unk_2876F3810;
  *(this + 909) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 7160));
  PadHoverTask::~PadHoverTask((this + 528));
  *(this + 29) = &unk_2876F2858;
  *(this + 62) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 232));
  *(this + 17) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  *this = &unk_2876F34B8;
  *(this + 895) = &unk_2876F3418;
  *(this + 913) = &unk_2876F3810;
  *(this + 909) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 7160));
  PadHoverTask::~PadHoverTask((this + 528));
  *(this + 29) = &unk_2876F2858;
  *(this + 62) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 232));
  *(this + 17) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  *this = &unk_2876F34B8;
  *(this + 895) = &unk_2876F3418;
  *(this + 913) = &unk_2876F3810;
  *(this + 909) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 7160));
  PadHoverTask::~PadHoverTask((this + 528));
  *(this + 29) = &unk_2876F2858;
  *(this + 62) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 232));
  *(this + 17) = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(this);

  JUMPOUT(0x266758590);
}

void PadFireflyPathCollectionCuratingStep::~PadFireflyPathCollectionCuratingStep(PadFireflyPathCollectionCuratingStep *this)
{
  *this = &unk_2876F28A8;
  *(this + 35) = &unk_2876F3810;
  *(this + 31) = &unk_2876F3810;
  *(this + 27) = &unk_2876F3810;
  *(this + 23) = &unk_2876F3810;
  *(this + 19) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F28A8;
  *(this + 35) = &unk_2876F3810;
  *(this + 31) = &unk_2876F3810;
  *(this + 27) = &unk_2876F3810;
  *(this + 23) = &unk_2876F3810;
  *(this + 19) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F28A8;
  *(this + 35) = &unk_2876F3810;
  *(this + 31) = &unk_2876F3810;
  *(this + 27) = &unk_2876F3810;
  *(this + 23) = &unk_2876F3810;
  *(this + 19) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadFireflyXYMeasurementStep::~PadFireflyXYMeasurementStep(PadFireflyXYMeasurementStep *this)
{
  *this = &unk_2876F32B8;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 28);
  *(this + 14) = &unk_2876F3810;
  *(this + 10) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F32B8;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 28);
  *(this + 14) = &unk_2876F3810;
  *(this + 10) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F32B8;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 28);
  *(this + 14) = &unk_2876F3810;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadFireflyWatershedStep::~PadFireflyWatershedStep(PadFireflyWatershedStep *this)
{
  *this = &unk_2876F2F68;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 18);
  *(this + 10) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2F68;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 18);
  *(this + 10) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2F68;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 18);
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadFireflyJointNpcLcmCompensationWithDetectedPeak::~PadFireflyJointNpcLcmCompensationWithDetectedPeak(PadFireflyJointNpcLcmCompensationWithDetectedPeak *this)
{
  *this = &unk_2876F28F8;
  *(this + 49) = &unk_2876F3810;
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 40);
  *(this + 35) = &unk_2876F3810;
  *(this + 30) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F28F8;
  *(this + 49) = &unk_2876F3810;
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 40);
  *(this + 35) = &unk_2876F3810;
  *(this + 30) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F28F8;
  *(this + 49) = &unk_2876F3810;
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 40);
  *(this + 35) = &unk_2876F3810;
  *(this + 30) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadFireflyProjection::~PadFireflyProjection(PadFireflyProjection *this)
{
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 97);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 89);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 81);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 73);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 64);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 55);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 46);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 37);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 28);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 19);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 10);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 1);
}

AlgDataNode *SA3DArrayDynamicSize<short>::SA3DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v11 = &unk_2876F0028;
  *(v11 + 32) = &unk_2876F0080;
  *(v11 + 40) = 20485;
  *(v11 + 44) = 3;
  *(v11 + 56) = a3;
  *(v11 + 60) = a4;
  *(v11 + 64) = a5;
  SA3DArrayDynamicSize<short>::initialize(v11, a3, a4, a5, a6);
  return a1;
}

void PadGatedSA3DArrayDynSize<short>::~PadGatedSA3DArrayDynSize(void *a1)
{
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

uint64_t PadGatedSA3DArrayDynSize<short>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 72) + 28) == 1)
  {
    *(a3 + 40) = result + 40;
    *(a3 + 56) = *(result + 48);
    return a2(a3);
  }

  return result;
}

uint64_t SA3DArrayDynamicSize<short>::initialize(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v5 = a1;
  *(a1 + 16) = 39424;
  *(a1 + 22) = 8;
  *(a1 + 45) = a2;
  *(a1 + 46) = a3;
  *(a1 + 47) = a4;
  v6 = operator new(2 * (a3 * a2 * a4));
  v8 = v5 + 32;
  v7 = *(v5 + 32);
  *(v5 + 48) = v6;
  v9 = *(v5 + 22);
  LODWORD(v5) = (*(v7 + 16))(v5 + 32);
  v10 = (*(*v8 + 24))(v8);
  result = (*(*v8 + 32))(v8);
  *(v8 - 8) = v9 + 2 * v5 * v10 * result;
  return result;
}

void PadGatedSA3DArrayDynSize<float>::~PadGatedSA3DArrayDynSize(void *a1)
{
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void PadGatedSA2DArrayDynSize<float>::~PadGatedSA2DArrayDynSize(void *a1)
{
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

AlgDataNode *SA2DArrayDynamicSize<short>::SA2DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, int a3, int a4, uint64_t a5, char a6)
{
  AlgDataNode::AlgDataNode(a1, a2, a6);
  *v10 = &unk_2876EFF48;
  *(v10 + 32) = &unk_2876EFF98;
  *(v10 + 40) = 20485;
  *(v10 + 44) = 2;
  *(v10 + 46) = 0;
  *(v10 + 56) = a3;
  *(v10 + 60) = a4;
  SA2DArrayDynamicSize<short>::initialize(v10, a3, a4, a5);
  return a1;
}

uint64_t SA2DArrayDynamicSize<short>::initialize(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = a1;
  *(a1 + 16) = 39424;
  *(a1 + 22) = 8;
  *(a1 + 45) = a2;
  *(a1 + 46) = a3;
  v5 = operator new(2 * (a3 * a2));
  v7 = v4 + 32;
  v6 = *(v4 + 32);
  *(v4 + 48) = v5;
  v8 = *(v4 + 22);
  LODWORD(v4) = (*(v6 + 16))(v4 + 32);
  result = (*(*v7 + 24))(v7);
  *(v7 - 8) = v8 + 2 * v4 * result;
  return result;
}

void PadGatedSA1DArrayDynSize<float>::~PadGatedSA1DArrayDynSize(void *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

uint64_t PadGatedSA1DArrayDynSize<float>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 56) + 28) == 1)
  {
    *(a3 + 40) = result + 40;
    *(a3 + 56) = *(result + 48);
    return a2(a3);
  }

  return result;
}

uint64_t PadGatedSimpleDataNode<BOOL>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 32) + 28) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t PadGatedSimpleDataNode<FireflyHoverTransitionState>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 64) + 28) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t PadGatedSimpleDataNode<FireflyUnfilteredAnglesPacket>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 48) + 28) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t PadGatedSimpleDataNode<HoverFreqHoppingStatePacket>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 56) + 28) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t PadFireflyService::FFHysteresisFilterStep::FFHysteresisFilterStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AlgWorkNode::AlgWorkNode(a1, 0x8B5F72A82A963ECBLL);
  *v13 = &unk_2876F1338;
  PlainDataNode<PadFireflyService::FFHysteresisFilterParams>::PlainDataNode((v13 + 10), 0x1BE28DBAFB9D43C2, 0, 0);
  *(a1 + 192) = a2;
  *(a1 + 200) = a3;
  *(a1 + 208) = a4;
  *(a1 + 216) = a5;
  AlgDataNode::AlgDataNode((a1 + 224), 0x720C06BD70991E0ALL, 0);
  *(a1 + 224) = &unk_2876F13D8;
  *(a1 + 252) = 0;
  *(a1 + 260) = 0;
  *(a1 + 240) = 20725;
  *(a1 + 248) = 16;
  *(a1 + 272) = a6;
  PadFireflyService::FFHysteresisFilterStep::runNodeRegistrations(a1);
  v14 = operator new(0xA0uLL);
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = a1 + 108;
  *(v14 + 6) = 0;
  *(v14 + 4) = a1 + 108;
  v14[40] = 0;
  *(v14 + 6) = 0;
  *(v14 + 7) = 0;
  *(v14 + 16) = 0;
  v14[72] = 0;
  *(v14 + 24) = 0;
  *(v14 + 10) = 0;
  *(v14 + 11) = 0;
  v14[104] = 0;
  *(v14 + 14) = 0;
  *(v14 + 15) = 0;
  *(v14 + 32) = 0;
  *(v14 + 68) = 0;
  *(v14 + 140) = xmmword_2655A8320;
  *(a1 + 280) = v14;
  return a1;
}

void sub_2653E0300(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void *PadFireflyService::FFHysteresisFilterStep::runNodeRegistrations(PadFireflyService::FFHysteresisFilterStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 80);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 24));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 26));

  return AlgWorkNode::registerAlgDataNode(this + 40, this + 224);
}

void PadFireflyService::FFHysteresisFilterStep::~FFHysteresisFilterStep(PadFireflyService::FFHysteresisFilterStep *this)
{
  *this = &unk_2876F1338;
  v2 = *(this + 35);
  if (v2)
  {
    MEMORY[0x266758590](v2, 0x1060C40412D3B9ALL);
  }

  *(this + 28) = &unk_2876F3810;
  *(this + 10) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  PadFireflyService::FFHysteresisFilterStep::~FFHysteresisFilterStep(this);

  JUMPOUT(0x266758590);
}

uint64_t PadFireflyService::FFHysteresisFilterStep::run(PadFireflyService::FFHysteresisFilterStep *this)
{
  v2 = *(*(this + 24) + 28);
  result = (*(**(this + 27) + 40))(*(this + 27));
  if (result)
  {
    v4 = 0;
    v5 = 0;
    v6 = 25400.0 / v2;
    do
    {
      v7 = ((*(*(*(this + 27) + 32) + 8))() + v4);
      v8 = *v7;
      if (v8 != 18 && v8 != 0)
      {
        return 1;
      }

      TouchService::HysteresisFilter::update(*(this + 35), **(this + 34), v7, (*(this + 26) + 28), *(this + 25) + 28, v6);
      v10 = *(this + 35);
      *(v7 + 4) = *(v10 + 8);
      PadFireflyService::FFHysteresisFilter::updateAngle(v10, v7, this + 63);
      v11 = *(this + 35);
      v12 = *(v11 + 148);
      *(v7 + 7) = *(v11 + 152);
      *(v7 + 12) = v12;
      ++v5;
      v4 += 64;
    }

    while (v5 < (*(**(this + 27) + 40))(*(this + 27)));
    return 0;
  }

  return result;
}

void PadFireflyService::FFHysteresisFilter::updateAngle(float *a1, uint64_t a2, float *a3)
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 28);
  *a3 = v5;
  *(a3 + 1) = v6;
  PadFireflyService::FFHysteresisFilter::updateAngularHysteresisCenter(a1, a1 + 37, v5, a1[36]);
  v7 = *(a2 + 28);
  v8 = a1[35];

  PadFireflyService::FFHysteresisFilter::updateAngularHysteresisCenter(a1, a1 + 38, v7, v8);
}

void PadFireflyService::FFHysteresisFilter::updateAngularHysteresisCenter(PadFireflyService::FFHysteresisFilter *this, float *a2, float a3, float a4)
{
  v4 = a3;
  if (a4 >= 0.0 && *a2 != -1.0)
  {
    v7 = fmod((a3 - *a2) + 3.14159265, 6.28318531);
    if (v7 < 0.0)
    {
      v8 = v7 + 6.28318531;
      v7 = v8;
    }

    v9 = v7 + -3.14159265;
    if (v9 <= a4)
    {
      if (v9 >= -a4)
      {
        return;
      }

      v10 = v4 + a4;
    }

    else
    {
      v10 = v4 - a4;
    }

    v11 = fmod(v10 + 3.14159265, 6.28318531);
    if (v11 < 0.0)
    {
      v12 = v11 + 6.28318531;
      v11 = v12;
    }

    v4 = v11 + -3.14159265;
  }

  *a2 = v4;
}

double PlainDataNode<PadFireflyService::FFHysteresisFilterParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876F1388;
  *(v4 + 28) = xmmword_26541FBC0;
  *(v4 + 44) = xmmword_26541FBD0;
  *(v4 + 60) = xmmword_26541FBE0;
  *(v4 + 76) = xmmword_2655A8330;
  *(v4 + 92) = 1112014848;
  *(v4 + 96) = 1;
  result = 2.2518004e15;
  *(v4 + 100) = 0x43200000459C4000;
  *(v4 + 16) = 31234;
  *(v4 + 24) = 80;
  return result;
}

void PalmRejection::GetClusterLevelFeaturesStep::GetClusterLevelFeaturesStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AlgWorkNode::AlgWorkNode(a1, 0xE22761B01F51733ALL);
  *v7 = &unk_2876F1410;
  v7[10] = a2;
  v7[11] = a3;
  v7[12] = a4;
}

uint64_t PalmRejection::GetClusterLevelFeaturesStep::run(PalmRejection::GetClusterLevelFeaturesStep *this)
{
  v188 = *MEMORY[0x277D85DE8];
  if (*(*(this + 12) + 1148))
  {
    v2 = *(this + 11);
    v3 = *(v2 + 8176);
    v168 = v3;
    v4 = *(v2 + 8244);
    v169 = v4;
    v5 = SALoggingGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      PalmRejection::GetClusterLevelFeaturesStep::run(v3, v4, v5);
    }

    v6 = *(this + 12);
    v7 = *(v6 + 1150);
    v154 = this;
    v155 = v6;
    if (v7 == 2)
    {
      v8 = (v6 + 1484);
      v9 = *(this + 11);
      v10 = *(this + 12);
      v11 = *(v9 + 8292);
      v12 = *(v9 + 8294);
      v13 = v9 + 400 * *(v9 + 8292);
      v14 = v9 + 400 * *(v9 + 8294);
      v15 = *(v13 + 372);
      v16 = *(v14 + 372);
      v17 = (v15 + v16) * 0.5;
      *(v6 + 1180) = v17;
      *(v6 + 1184) = sqrtf((((v16 - v17) * (v16 - v17)) + ((v15 - v17) * (v15 - v17))) * 0.5);
      *(v6 + 1512) = v15;
      *(v6 + 1712) = v16;
      *(v6 + 1508) = *(v6 + 988 + 4 * *(v9 + 8332));
      *(v6 + 1708) = *(v6 + 988 + 4 * *(v9 + 8334));
      v18 = PalmRejUtil::calculateSAEllipseFoci(v13 + 72, *v13);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      PalmRejUtil::getEllipseCovariance((v13 + 72), v187.f32);
      v25 = 0;
      v26 = *v13;
      v27 = v6 + 1412;
      v28 = *(v13 + 72);
      v29 = *(v13 + 88);
      *(v27 + 32) = *(v13 + 104);
      *v27 = v28;
      *(v27 + 16) = v29;
      v10[363] = v18;
      *(v10 + 364) = v20;
      *(v10 + 365) = v22;
      *(v10 + 366) = v24;
      *v8 = v26;
      do
      {
        v10[v25 + 367] = v187.f32[v25];
        ++v25;
      }

      while (v25 != 4);
      v30 = PalmRejUtil::calculateSAEllipseFoci(v14 + 72, *v14);
      v32 = v31;
      v34 = v33;
      v36 = v35;
      PalmRejUtil::getEllipseCovariance((v14 + 72), v187.f32);
      v37 = 0;
      v38 = *v14;
      v39 = *(v14 + 72);
      v40 = *(v14 + 88);
      *(v155 + 1644) = *(v14 + 104);
      *(v155 + 1612) = v39;
      *(v155 + 1628) = v40;
      *(v155 + 1652) = v30;
      *(v155 + 1656) = v32;
      *(v155 + 1660) = v34;
      v8[25] = v38;
      *(v155 + 1664) = v36;
      do
      {
        *(v155 + 1668 + v37 * 4) = v187.i32[v37];
        ++v37;
      }

      while (v37 != 4);
      PalmRejection::GetClusterLevelFeaturesStep::calcMetaDists(v27, (v155 + 1612), v183);
      v41 = v183[1];
      *(v155 + 1724) = v183[0];
      *(v155 + 1740) = v41;
      v42 = *(v155 + 1736) * ((PalmRejection::GetClusterLevelFeaturesStep::increaseDistForEdgeTap(v154, v13, v14, *(v155 + 1736), *(*(v154 + 11) + 8404)) * 2.0) + 1.0);
      *(v155 + 1736) = v42;
      v43 = *(v154 + 11);
      v44 = *(v43 + 8418);
      if (v11 != v44 && v11 != *(v43 + 8420) || v12 != v44 && v12 != *(v43 + 8420))
      {
        goto LABEL_58;
      }

      v45 = *(v13 + 68) - *(v14 + 68);
      if (v45 < 0)
      {
        v45 = *(v14 + 68) - *(v13 + 68);
      }

      if (v45 <= 4 && (v46 = *(v43 + 8404), v46 < 1.0) && v46 > 0.0 && *(v155 + 1196) < 0.2)
      {
        v47 = *(v43 + 8408);
        v48 = *(v43 + 8412);
        v49 = vabds_f32(v42, v47);
        v50 = vabds_f32(v47, v48);
        v51 = *(v43 + 8416);
        if (v50 <= 500.0 || v49 <= 500.0 || ((v42 - v47) * (v47 - v48)) <= 0.0)
        {
          if (v51 <= 19)
          {
            v146 = v50 > 500.0 && v49 > 500.0;
            if (v146 || v51 <= 9)
            {
              *(v43 + 8416) = 0;
            }

            if (v48 != 0.0)
            {
              v47 = 0.0;
            }
          }
        }

        else
        {
          *(v43 + 8416) = v51 + 1;
        }

        *(v43 + 8412) = v47;
        *(v43 + 8408) = v42;
      }

      else
      {
LABEL_58:
        *(v43 + 8418) = v11;
        *(v43 + 8420) = v12;
        *(v43 + 8416) = 0;
        *(v43 + 8408) = 0;
      }
    }

    else if (v7 < 3)
    {
      if (v7 == 1)
      {
        v130 = *(this + 11) + 400 * *(*(this + 11) + 8292);
        v131 = *(v130 + 384);
        v132 = PalmRejUtil::calculateSAEllipseFoci(v130 + 72, *v130);
        v134 = v133;
        v136 = v135;
        v138 = v137;
        PalmRejUtil::getEllipseCovariance((v130 + 72), v187.f32);
        v139 = 0;
        v140 = v6 + 200 * v131;
        v141 = *v130;
        v142 = *(v130 + 72);
        v143 = *(v130 + 88);
        *(v140 + 1444) = *(v130 + 104);
        *(v140 + 1428) = v143;
        *(v140 + 1412) = v142;
        *(v140 + 1452) = v132;
        *(v140 + 1456) = v134;
        *(v140 + 1460) = v136;
        *(v140 + 1464) = v138;
        *(v140 + 1484) = v141;
        v144 = v140 + 1468;
        do
        {
          *(v144 + v139 * 4) = v187.i32[v139];
          ++v139;
        }

        while (v139 != 4);
      }
    }

    else
    {
      LOWORD(v52) = 0;
      v185 = 0x7F7FFFFF7F7FFFFFLL;
      v186 = 0xFF7FFFFFFF7FFFFFLL;
      v179 = 0;
      v180 = 0;
      v177 = 0;
      v178 = 0;
      v176 = 0;
      v174 = 0u;
      v175 = 0u;
      v167 = 0;
      v166 = 0;
      v165 = 0;
      v173 = 0;
      do
      {
        v53 = *(this + 11);
        v54 = v53 + 2 * v52;
        v55 = v53 + 400 * *(v54 + 8292);
        v56 = *(v54 + 8332);
        v57 = *(v55 + 384);
        v58 = *(&v167 + v57);
        *(&v181[5 * v57] + v58) = *(v55 + 372);
        *(&v167 + v57) = v58 + 1;
        _D0 = *(v6 + 8 * v56);
        *(&v179 + v57) = vadd_f32(_D0, *(&v179 + v57));
        if (*(&v168 + v57) >= 2u)
        {
          v60 = *(v6 + 812 + 4 * v56);
          if (v60 > *(&v186 + v57))
          {
            *(&v186 + v57) = v60;
          }

          if (v60 < *(&v185 + v57))
          {
            *(&v185 + v57) = v60;
          }

          *(&v173 + v57) = *(&v173 + v57) + (v60 * v60);
          *(&v178 + v57) = *(&v178 + v57) + (_D0.f32[0] * _D0.f32[0]);
          _S2 = _D0.i32[1];
          __asm { FMLA            S1, S2, V0.S[1] }

          *(&v177 + v57) = _S1;
          *(&v176 + v57) = *(&v176 + v57) + (_D0.f32[0] * _D0.f32[1]);
          PalmRejUtil::getEllipseCovariance((v55 + 72), v187.f32);
          *(&v174 + v57) = vaddq_f32(v187, *(&v174 + v57));
          LOWORD(v7) = *(v6 + 1150);
        }

        v52 = (v52 + 1);
      }

      while (v52 < v7);
      v67 = 0;
      v68 = 0.0;
      v69 = &v168;
      v70 = &v186;
      v71 = &v185;
      v72 = v181;
      v73 = &v179;
      v74 = &v178;
      v75 = &v177;
      v76 = &v176;
      v77 = &v174;
      v160 = &v167;
      v161 = &v166;
      v78 = &v173;
      v79 = 1;
      v80 = v183;
      v157 = v155 + 988;
      do
      {
        v81 = v75;
        v158 = v76;
        v149 = v80;
        v150 = v70;
        v151 = v71;
        v152 = v78;
        v153 = v79;
        v82 = *v69;
        Mean = PalmRejUtil::getMean(v72, v82);
        v84 = v155 + 1324 + 200 * v67;
        v85 = v82;
        *(v84 + 188) = LODWORD(Mean);
        *(v84 + 192) = sqrtf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(PalmRejUtil::getVar(v72, v82, *&Mean))));
        *(v84 + 184) = 0;
        *v87.i32 = v82;
        _D5 = vdiv_f32(*v73, vdup_lane_s32(v87, 0));
        *v73 = _D5;
        if (v82 < 2)
        {
          *v84 = 1065353216;
          *(v84 + 84) = 0x40000000;
          *(v84 + 168) = xmmword_2655A83D0;
          v103 = v155;
          v104 = *(v155 + 1150);
          if (v104 >= 1)
          {
            v105 = 0;
            v106 = *(v154 + 11);
            do
            {
              v107 = (v106 + 400 * *(v106 + 2 * v105 + 8292));
              if (v67 == *(v107 + 192))
              {
                v108 = PalmRejUtil::calculateSAEllipseFoci((v107 + 9), *v107);
                v110 = v109;
                v112 = v111;
                v114 = v113;
                PalmRejUtil::getEllipseCovariance(v107 + 18, v187.f32);
                v115 = 0;
                v116 = *v107;
                v117 = *(v107 + 9);
                v118 = *(v107 + 11);
                *(v84 + 120) = v107[13];
                *(v84 + 104) = v118;
                *(v84 + 88) = v117;
                *(v84 + 128) = v108;
                *(v84 + 132) = v110;
                *(v84 + 136) = v112;
                *(v84 + 140) = v114;
                *(v84 + 160) = v116;
                do
                {
                  *(v84 + 144 + v115 * 4) = v187.i32[v115];
                  ++v115;
                }

                while (v115 != 4);
                v106 = *(v154 + 11);
                *(v84 + 184) = *(v157 + 4 * *(v106 + 2 * v105 + 8332));
                LOWORD(v104) = *(v155 + 1150);
              }

              ++v105;
            }

            while (v105 < v104);
          }
        }

        else
        {
          v170 = 0;
          v171 = 0;
          *v74 = *v74 / *v87.i32;
          *v81 = *v81 / *v87.i32;
          *v86.i32 = *v158 / *v87.i32;
          v148 = v82;
          *v158 = *v86.i32;
          *v77 = vdivq_f32(*v77, vdupq_lane_s32(v87, 0));
          *v77 = *v77 + 10000.0;
          *(v77 + 3) = *(v77 + 3) + 10000.0;
          __asm { FMLS            S0, S5, V5.S[0] }

          LODWORD(v172) = _S0;
          *(&v172 + 4) = vmls_f32(vadd_f32(vdup_lane_s32(v86, 0), *(v77 + 4)), vrev64_s32(_D5), _D5);
          _S9 = _D5.f32[1];
          v159 = _D5;
          __asm { FMLS            S0, S9, V5.S[1] }

          HIDWORD(v172) = _S0;
          PalmRejUtil::CovarianceToSAEllipseAxes(&v172, &v162, 6000.0);
          *v160 = 0;
          v92 = *(v155 + 1150);
          if (v92 < 1)
          {
            v98 = 0.0;
            v97 = 0.0;
          }

          else
          {
            v93 = 0;
            v94 = 0;
            v95 = *(v154 + 11);
            v96 = (v95 + 8292);
            v97 = 0.0;
            v98 = 0.0;
            v156 = v85;
            do
            {
              v99 = v95 + 400 * *v96;
              if (v67 == *(v99 + 384))
              {
                if (v85 == 2)
                {
                  (&v170)[v94++] = v99;
                }

                v100 = v96[20];
                v101 = sqrtf(((_S9 - *(v99 + 4)) * (_S9 - *(v99 + 4))) + ((v159.f32[0] - *v99) * (v159.f32[0] - *v99)));
                v98 = v98 + (v101 * v101);
                v97 = v97 + ((v101 * v101) * (v101 * v101));
                *(v84 + 4 + 4 * v93) = v101;
                v102 = sqrtf(1.0 - fabsf(cosf(*(v99 + 72) - *&v162)));
                *(&v183[5 * v67] + v93) = v102;
                *v161 = *v161 + v102;
                *v160 = ++v93;
                *(v84 + 184) = *(v157 + 4 * v100) + *(v84 + 184);
                v85 = v156;
              }

              ++v96;
              --v92;
            }

            while (v92);
          }

          *(v84 + 184) = *(v84 + 184) / v148;
          *v84 = *v150 - *v151;
          v119 = *v161;
          *(v84 + 176) = *v161;
          *(v84 + 180) = sqrtf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(PalmRejUtil::getVar(v149, v85, v119 / v148))));
          *(v84 + 168) = *v152 / (*(&v162 + 1) * *(&v162 + 2));
          v120 = 2.0;
          if (v85 != 2)
          {
            v120 = ((v97 / v148) + 0.000001) / (((v98 * v98) / (v85 * v85)) + 0.000001);
          }

          *(v84 + 84) = v120;
          *(v84 + 172) = HIDWORD(v162);
          v121 = PalmRejUtil::calculateSAEllipseFoci(&v162, v159.f32[0]);
          v122 = v164;
          v123 = v163;
          *(v84 + 88) = v162;
          *(v84 + 104) = v123;
          *(v84 + 120) = v122;
          v124 = v172;
          *(v84 + 128) = v121;
          *(v84 + 132) = v125;
          *(v84 + 136) = v126;
          *(v84 + 140) = v127;
          *(v84 + 160) = v159;
          *(v155 + 1468 + 200 * v67) = v124;
          v103 = v155;
          if (v85 == 2)
          {
            v128 = PalmRejection::GetClusterLevelFeaturesStep::increaseDistForEdgeTap(v154, v170, v171, sqrtf(((v171[1] - v170[1]) * (v171[1] - v170[1])) + ((*v171 - *v170) * (*v171 - *v170))), *(*(v154 + 11) + 8404));
            *(v84 + 188) = *(v84 + 188) / ((v128 * 2.0) + 1.0);
            v68 = v68 + v128;
          }
        }

        v79 = 0;
        v161 = &v165;
        v78 = &v173 + 1;
        v160 = (&v167 + 2);
        v76 = &v176 + 1;
        v77 = &v175;
        v74 = &v178 + 1;
        v75 = &v177 + 1;
        v72 = &v182;
        v73 = &v180;
        v71 = (&v185 + 4);
        v80 = &v184;
        v69 = &v169;
        v70 = (&v186 + 4);
        v67 = 1;
      }

      while ((v153 & 1) != 0);
      PalmRejection::GetClusterLevelFeaturesStep::calcMetaDists((v103 + 1412), (v103 + 1612), &v162);
      v129 = v163;
      *(v103 + 1724) = v162;
      *(v103 + 1740) = v129;
      if (v68 > 1.0)
      {
        *(v103 + 1724) = *(v103 + 1724) * 0.5;
      }
    }
  }

  return 0;
}

void PalmRejection::GetClusterLevelFeaturesStep::calcMetaDists(float *a1@<X1>, float *a2@<X2>, uint64_t a3@<X8>)
{
  *&v56[24] = *MEMORY[0x277D85DE8];
  v4 = v55;
  v5 = v53;
  v6 = 1;
  v7 = a1;
  do
  {
    v9 = v7[1];
    v8 = v7[2];
    *(v4 + 8) = *(v7 + 10);
    v10 = v9 - sqrtf((v9 * v9) - (v8 * v8));
    v11 = v6;
    *v4 = *(v7 + 9);
    *v5 = v8;
    v5[1] = v10;
    v5[2] = v10;
    v7 = a2;
    v5 = &v54;
    v4 = v56;
    v6 = 0;
  }

  while ((v11 & 1) != 0);
  v12 = 0;
  v13 = v52;
  v14 = 3.4028e38;
  v15 = -3.4028e38;
  do
  {
    v16 = 0;
    v17 = &v55[v12];
    v18 = *v17;
    v19 = v17[1];
    v20 = v53[v12];
    v21 = &v56[4];
    do
    {
      v22 = sqrtf(((*v21 - v19) * (*v21 - v19)) + ((*(v21 - 1) - v18) * (*(v21 - 1) - v18)));
      *&v13[v16] = v22;
      if (v22 > v15)
      {
        v15 = v22;
      }

      v23 = (v22 - v20) - v53[v16 + 3];
      if (v23 < v14)
      {
        v14 = v23;
      }

      v21 += 2;
      ++v16;
    }

    while (v16 != 3);
    ++v12;
    v13 += 3;
  }

  while (v12 != 3);
  v24 = a1[18];
  v25 = a2[18];
  v26 = (v24 + v25) * 0.5;
  v27 = a1[19];
  v28 = a2[19];
  v29 = (v27 + v28) * 0.5;
  v30 = ((((a1[14] + a2[14]) + (v24 * v24)) + (v25 * v25)) * 0.5) - (v26 * v26);
  v31 = ((((a1[15] + a2[15]) + (v24 * v27)) + (v25 * v28)) * 0.5) - (v26 * v29);
  v32 = ((((a1[17] + a2[17]) + (v27 * v27)) + (v28 * v28)) * 0.5) - (v29 * v29);
  v33 = *&v52[3];
  v34 = v52[0];
  v35 = a2[1];
  v36 = a2[2];
  v37 = (*&v52[1] + *&v52[2]) + (v35 * -2.0);
  *a3 = v14;
  *(a3 + 4) = v37;
  v38 = v33 + *&v52[6];
  v39 = a1[1];
  v40 = a1[2];
  *(a3 + 8) = v38 + (v39 * -2.0);
  *(a3 + 12) = v34;
  *(a3 + 16) = v15;
  v41 = sqrtf(v35 * v36);
  v42 = logf(sqrtf(v39 * v40) + 1.0);
  *(a3 + 20) = v42;
  v43 = logf(v41 + 1.0);
  *(a3 + 24) = v43;
  v44 = logf((v30 * v32) - (v31 * v31));
  *(a3 + 28) = v44;
  v45 = SALoggingGeneral();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = 134218496;
    v47 = v42;
    v48 = 2048;
    v49 = v43;
    v50 = 2048;
    v51 = v44;
    _os_log_impl(&dword_2653C2000, v45, OS_LOG_TYPE_INFO, "calcMetaDists : clust0_loggeo = %12.6e %12.6e %12.6e", &v46, 0x20u);
  }
}

float PalmRejection::GetClusterLevelFeaturesStep::increaseDistForEdgeTap(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v6 = a2;
  result = 0.0;
  if (*(a2 + 58) == 12)
  {
    if (a4 >= 60000.0)
    {
      return result;
    }

    v8 = a2;
    v6 = a3;
    if (a5 >= 0.0000001)
    {
      return result;
    }
  }

  else
  {
    if (a5 >= 0.0000001)
    {
      return result;
    }

    v9 = a4 < 60000.0 && *(a3 + 58) == 12;
    v8 = a3;
    if (!v9)
    {
      return result;
    }
  }

  if (v6[22] > *(*(a1 + 80) + 8))
  {
    v10 = v6[1];
    v11 = v8[1];
    if (v10 > v11)
    {
      v12 = atan2f(v10 - v11, *v6 - *v8);
      v13 = v12 + 3.14159265;
      if (v12 >= 0.0)
      {
        v13 = v12;
      }

      result = alg_AreOrientationsParallel(v6[18], v13);
      if (result < 0.75)
      {
        return 0.0;
      }
    }
  }

  return result;
}

void PalmRejection::GetClusterLevelFeaturesStep::run(unsigned __int16 a1, unsigned __int16 a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&dword_2653C2000, log, OS_LOG_TYPE_DEBUG, "Clustering paths: num_in_1 = %d num_in_2 = %d\n", v3, 0xEu);
}

uint64_t PadHostService::PlainFireflyContactCollection::PlainFireflyContactCollection(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AlgDataNode::AlgDataNode(a1, a2, 1);
  *v6 = &unk_2876F1460;
  *(v6 + 32) = &unk_2876F14A8;
  *(v6 + 40) = a3;
  *(v6 + 16) = 12293;
  v7 = (a3 << 6) | 4u;
  *(a1 + 44) = v7;
  *(a1 + 24) = v7;
  v8 = operator new(v7);
  *(a1 + 48) = v8;
  bzero(v8, *(a1 + 44));
  **(a1 + 48) = 0;
  *(*(a1 + 48) + 2) = 0;
  return a1;
}

void PadHostService::PlainFireflyContactCollection::~PlainFireflyContactCollection(PadHostService::PlainFireflyContactCollection *this)
{
  *this = &unk_2876F1460;
  *(this + 4) = &unk_2876F14A8;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C807B5B4437);
  }

  *this = &unk_2876F3810;
}

{
  PadHostService::PlainFireflyContactCollection::~PlainFireflyContactCollection(this);

  JUMPOUT(0x266758590);
}

uint64_t PadHostService::PlainFireflyContactCollection::sendCallback(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = *(a1 + 48);
  *(a3 + 56) = v3;
  *(a3 + 48) = (*v3 << 6) | 4;
  return a2(a3);
}

uint64_t TouchService::RadiusCorrectionStep::RadiusCorrectionStep(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  AlgWorkNode::AlgWorkNode(a1, 0xDCA9502BA1D03261);
  *v7 = &unk_2876F1510;
  AlgDataNode::AlgDataNode((v7 + 10), 0xAC3E099B4E55F2C9, 0);
  *(a1 + 80) = &unk_2876F1560;
  *(a1 + 108) = xmmword_2655A8470;
  *(a1 + 96) = 31235;
  *(a1 + 104) = 16;
  *(a1 + 128) = a2;
  *(a1 + 136) = a4;
  TouchService::RadiusCorrectionStep::runNodeRegistrations(a1);
  v8 = *(*(a1 + 128) + 40);
  v9 = operator new(20 * v8);
  if (v8)
  {
    v10 = v9;
    do
    {
      *v10 = 0;
      *(v10 + 12) = 0;
      *(v10 + 4) = 0;
      v10 += 20;
    }

    while (v10 != &v9[20 * v8]);
  }

  *(a1 + 144) = v9;
  return a1;
}

void *TouchService::RadiusCorrectionStep::runNodeRegistrations(TouchService::RadiusCorrectionStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 80);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 16));
  v2 = *(this + 16);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

void TouchService::RadiusCorrectionStep::~RadiusCorrectionStep(TouchService::RadiusCorrectionStep *this)
{
  *this = &unk_2876F1510;
  v2 = *(this + 18);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C80B4868423);
  }

  *(this + 10) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  TouchService::RadiusCorrectionStep::~RadiusCorrectionStep(this);

  JUMPOUT(0x266758590);
}

float TouchService::RadiusCorrectionStep::quantizeRadius(TouchService::RadiusCorrectionStep *this, float a2, float a3, float a4, float a5)
{
  if (a2 <= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a2;
  }

  v9 = ((v8 - a4) / a5);
  v10 = fmodf(v8 - a4, a5);
  if (v8 <= a3 || v10 <= (a5 * 0.667))
  {
    v13 = v10 > (a5 * 0.333) && v8 < a3;
    v14 = v13 + v9;
  }

  else
  {
    v14 = v9 + 1;
  }

  return a4 + (v14 * a5);
}

uint64_t TouchService::RadiusCorrectionStep::run(TouchService::RadiusCorrectionStep *this)
{
  if ((*(**(this + 16) + 40))(*(this + 16)))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (*(*(*(this + 16) + 32) + 8))();
      v5 = *(this + 18) + 20 * *(v4 + v2);
      if (*(v4 + v2 + 1) - 5 > 0xFFFFFFFB)
      {
        v6 = v4;
        if (*v5)
        {
          _D1 = vmla_n_f32(vrev64_s32(vmul_n_f32(*(v4 + v2 + 20), 1.0 - *(this + 27))), *(v5 + 4), *(this + 27));
        }

        else
        {
          _D1 = vrev64_s32(*(v4 + v2 + 20));
        }

        *v5 = 1;
        *(v5 + 4) = _D1;
        _S2 = *(this + 29);
        v9 = *(this + 28);
        __asm { FMLA            S8, S2, V1.S[1] }

        v15 = *(this + 34) + *(this + 34);
        v16 = TouchService::RadiusCorrectionStep::quantizeRadius(v4, *(this + 30) + (_S2 * _D1.f32[0]), *(v5 + 12), v9, v15);
        v17 = (v6 + v2);
        v17[6] = v16;
        v19 = TouchService::RadiusCorrectionStep::quantizeRadius(v18, _S8, *(v5 + 16), v9, v15);
        v17[5] = v19;
        *(v5 + 12) = v16;
        *(v5 + 16) = v19;
      }

      else
      {
        *(v4 + v2 + 20) = 0;
        *v5 = 0;
        *(v5 + 12) = 0;
      }

      ++v3;
      v2 += 48;
    }

    while (v3 < (*(**(this + 16) + 40))(*(this + 16)));
  }

  return 0;
}

uint64_t PadFireflyService::FFRadiusCorrectionStep::FFRadiusCorrectionStep(uint64_t a1, uint64_t a2, float a3)
{
  AlgWorkNode::AlgWorkNode(a1, 0xAA4CF5F1B7798012);
  *v6 = &unk_2876F15B0;
  v7 = (v6 + 10);
  AlgDataNode::AlgDataNode((v6 + 10), 0xAC3E099B4E55F2C9, 0);
  *(a1 + 80) = &unk_2876F1600;
  *(a1 + 108) = xmmword_2655A84F0;
  *(a1 + 96) = 31235;
  *(a1 + 104) = 16;
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  AlgWorkNode::registerAlgDataNode(a1 + 56, v7);
  return a1;
}

{
  return PadFireflyService::FFRadiusCorrectionStep::FFRadiusCorrectionStep(a1, a2, a3);
}

void sub_2653E2090(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void PadFireflyService::FFRadiusCorrectionStep::~FFRadiusCorrectionStep(PadFireflyService::FFRadiusCorrectionStep *this)
{
  *this = &unk_2876F15B0;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F15B0;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PadFireflyService::FFRadiusCorrectionStep::run(PadFireflyService::FFRadiusCorrectionStep *this)
{
  if ((*(**(this + 16) + 40))(*(this + 16)))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (*(*(*(this + 16) + 32) + 8))();
      v5 = v4 + v2;
      v6 = *(v4 + v2 + 1);
      if (v6 != 2 && (v6 - 5) > 0xFFFFFFFB)
      {
        v10 = v4;
        if (*(this + 140))
        {
          v11 = *(this + 27);
          v12 = ((1.0 - v11) * *(v4 + v2 + 24)) + (v11 * *(this + 36));
          v13 = ((1.0 - v11) * *(v4 + v2 + 20)) + (v11 * *(this + 37));
        }

        else
        {
          v13 = *(v4 + v2 + 20);
          v12 = *(v4 + v2 + 24);
        }

        *(this + 140) = 1;
        *(this + 36) = v12;
        *(this + 37) = v13;
        v15 = *(this + 29);
        v14 = *(this + 30);
        v16 = *(this + 28);
        v17 = v14 + (v15 * v13);
        v18 = *(this + 34) + *(this + 34);
        v8 = TouchService::RadiusCorrectionStep::quantizeRadius(v4, v14 + (v15 * v12), *(this + 38), v16, v18);
        v19 = (v10 + v2);
        v19[6] = v8;
        v9 = TouchService::RadiusCorrectionStep::quantizeRadius(v20, v17, *(this + 39), v16, v18);
        v19[5] = v9;
      }

      else
      {
        *(v5 + 5) = 0;
        *(v5 + 6) = 0;
        v8 = 0.0;
        v9 = 0.0;
        *(this + 140) = 0;
      }

      *(this + 38) = v8;
      *(this + 39) = v9;
      ++v3;
      v2 += 64;
    }

    while (v3 < (*(**(this + 16) + 40))(*(this + 16)));
  }

  return 0;
}

uint64_t TouchService::TouchServiceEventCollection::TouchServiceEventCollection(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v6 = &unk_2876F1650;
  *(v6 + 32) = &unk_2876F1698;
  *(v6 + 40) = a3;
  *(v6 + 16) = 31233;
  v7 = (72 * a3 + 8);
  *(a1 + 44) = v7;
  v8 = operator new(v7);
  *(a1 + 48) = v8;
  v9 = *(a1 + 44);
  *(a1 + 24) = v9;
  bzero(v8, v9);
  **(a1 + 48) = 0;
  return a1;
}

void TouchService::TouchServiceEventCollection::~TouchServiceEventCollection(TouchService::TouchServiceEventCollection *this)
{
  *this = &unk_2876F1650;
  *(this + 4) = &unk_2876F1698;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8015230203);
  }

  *this = &unk_2876F3810;
}

{
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::TouchServiceEventCollection::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = *(result + 48);
  if (*v3)
  {
    *(a3 + 56) = v3;
    *(a3 + 48) = 72 * *v3 + 8;
    return a2(a3);
  }

  return result;
}

TouchService::PathTrackingStep *TouchService::PathTrackingStep::PathTrackingStep(TouchService::PathTrackingStep *this, TouchService::PlainPathCollection *a2, TouchService::PlainPathCollection *a3)
{
  AlgWorkNode::AlgWorkNode(this, 0x981F8A74E5A7A521);
  *v6 = &unk_2876F1700;
  *(v6 + 10) = a2;
  *(v6 + 11) = a3;
  TouchService::PathTrackingStep::runNodeRegistrations(v6);
  return this;
}

void *TouchService::PathTrackingStep::runNodeRegistrations(TouchService::PathTrackingStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 10));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 11));
  v2 = *(this + 10);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t TouchService::PathTrackingStep::run(TouchService::PathTrackingStep *this)
{
  v54 = *MEMORY[0x277D85DE8];
  if ((*(**(this + 11) + 40))(*(this + 11)))
  {
    v3 = 0;
    v4 = 0;
    *&v2 = 67109632;
    v39 = v2;
    do
    {
      v5 = (*(*(*(this + 11) + 32) + 8))();
      v6 = (v5 + v3);
      if (*(v5 + v3 + 1))
      {
        v7 = v5;
        if (!TouchService::PlainPathCollection::getPathWithId(*(this + 10), *v6))
        {
          v8 = SALoggingGeneral();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = *(v7 + v3);
            v10 = *(v7 + v3 + 2);
            v11 = v6[1];
            *buf = v39;
            *&buf[4] = v9;
            LOWORD(v43) = 1024;
            *(&v43 + 2) = v10;
            HIWORD(v43) = 1024;
            LODWORD(v44) = v11;
            _os_log_impl(&dword_2653C2000, v8, OS_LOG_TYPE_INFO, "PathTrackingStep:  Lost P%d F%d stage=%d", buf, 0x14u);
          }

          v12 = *(this + 10);
          v13 = (*(*v12 + 40))(v12);
          TouchService::TouchServiceEventCollection::setNumEvents(v12, v13 + 1);
          v14 = *(this + 10);
          v15 = (*(*v14 + 40))(v14) - 1;
          v16 = (*(v14[4] + 8))(v14 + 4) + 48 * v15;
          v18 = *(v6 + 1);
          v17 = *(v6 + 2);
          *v16 = *v6;
          *(v16 + 16) = v18;
          *(v16 + 32) = v17;
          *(v16 + 1) = 0;
        }
      }

      ++v4;
      v3 += 48;
    }

    while (v4 < (*(**(this + 11) + 40))(*(this + 11)));
  }

  v52[0] = 0;
  v52[1] = 0;
  v53 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ((*(**(this + 10) + 40))(*(this + 10)))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = ((*(*(*(this + 10) + 32) + 8))() + v19);
      PathWithId = TouchService::PlainPathCollection::getPathWithId(*(this + 11), *v23);
      v25 = v23[2];
      if (v25 > 0x10 || v25 - 6 > 0xFFFFFFFA)
      {
        goto LABEL_26;
      }

      ++v22;
      if (v23[1] - 3 > 1)
      {
        if (!PathWithId || *(PathWithId + 1) - 3 > 1)
        {
          goto LABEL_26;
        }

        v21 = 1;
        v29 = v50;
      }

      else if (PathWithId)
      {
        v27 = *(PathWithId + 1) - 5;
        v28 = v27 < 0xFFFFFFFE;
        if (v27 >= 0xFFFFFFFE)
        {
          v29 = v48;
        }

        else
        {
          v29 = v52;
        }

        v21 |= v28;
      }

      else
      {
        v21 = 1;
        v29 = v52;
      }

      ++*(v29 + v23[2]);
LABEL_26:
      ++v20;
      v30 = (*(**(this + 10) + 40))(*(this + 10));
      v19 += 48;
      if (v20 >= v30)
      {
        if (v21)
        {
          v31 = (18 * v22) | 1;
          MEMORY[0x28223BE20](v30);
          v32 = &v40[-((v31 + 15) & 0x3FFFFFFFF0) - 16];
          v33 = 0;
          v34 = 0;
          *v32 = 0;
          *buf = v52;
          v43 = "make";
          v44 = v50;
          v45 = "break";
          v46 = v48;
          v47 = "touching";
          do
          {
            if (v34 + 18 <= v31)
            {
              v35 = 0;
              v36 = &v43;
              do
              {
                if ((*(v36 - 1))[v33])
                {
                  v34 += snprintf(&v32[v34], v31 - v34, "(%d F%d %s)", (*(v36 - 1))[v33], v33, *v36);
                }

                if (v35 > 1)
                {
                  break;
                }

                ++v35;
                v36 += 2;
              }

              while (v34 + 18 <= v31);
            }

            ++v33;
          }

          while (v33 != 17);
          v37 = SALoggingGeneral();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 136446210;
            v41 = v32;
            _os_log_impl(&dword_2653C2000, v37, OS_LOG_TYPE_DEFAULT, "PathTrackingStep: Non-finger paths found %{public}s", v40, 0xCu);
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

void TouchService::PathTrackingStep::~PathTrackingStep(TouchService::PathTrackingStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

AlgWorkNode *TouchService::CoreAnalyticsStep::CoreAnalyticsStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AlgWorkNode::AlgWorkNode(a1, 0xDA4E27EE52440112);
  *v11 = &unk_2876F1750;
  *(v11 + 80) = a2;
  *(v11 + 88) = a3;
  *(v11 + 96) = a4;
  *(v11 + 104) = a5;
  *(v11 + 112) = 0;
  *(v11 + 120) = 0;
  TouchService::CoreAnalyticsStep::runNodeRegistrations(v11);
  v12 = 24 * *(*(a1 + 10) + 40);
  v13 = operator new(v12);
  bzero(v13, v12);
  *(a1 + 16) = v13;
  return a1;
}

void *TouchService::CoreAnalyticsStep::runNodeRegistrations(TouchService::CoreAnalyticsStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 10));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 11));
  v2 = *(this + 12);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

void TouchService::CoreAnalyticsStep::~CoreAnalyticsStep(TouchService::CoreAnalyticsStep *this)
{
  *this = &unk_2876F1750;
  v2 = *(this + 16);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C80504FFAC1);
  }

  AlgWorkNode::~AlgWorkNode(this);
}

{
  TouchService::CoreAnalyticsStep::~CoreAnalyticsStep(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::CoreAnalyticsStep::generatePathStats(TouchService::CoreAnalyticsStep *this)
{
  TouchService::TouchServiceEventCollection::setNumEvents(*(this + 11), 0);
  result = (*(**(this + 10) + 40))(*(this + 10));
  if (result)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(*(*(this + 10) + 32) + 8))();
      v6 = v5 + v3;
      v7 = *(this + 16) + 24 * *(v5 + v3);
      if (*(v5 + v3 + 1) - 3 > 1)
      {
        if (*(v7 + 4) != 0.0)
        {
          v14 = *(this + 11);
          v15 = (*(*v14 + 40))(v14);
          TouchService::TouchServiceEventCollection::setNumEvents(v14, v15 + 1);
          v16 = *(this + 11);
          v17 = (*(*v16 + 40))(v16) - 1;
          v18 = (*(v16[4] + 8))(v16 + 4);
          v19 = *(v7 + 16);
          v20 = v18 + 24 * v17;
          *v20 = *v7;
          *(v20 + 16) = v19;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = 0;
        }
      }

      else
      {
        v8 = *(v6 + 20);
        v9 = *(v6 + 24);
        v10 = sqrtf(v8 * v9) / 1000.0;
        v11 = v8 / v9;
        v12 = *(v7 + 4);
        if (v12 == 0.0)
        {
          *v7 = v10;
          *(v7 + 4) = v10;
          *(v7 + 8) = v11;
          *(v7 + 12) = v11;
          v13 = *(v5 + v3 + 2);
          *(v7 + 16) = v13;
          *(v7 + 20) = v13;
        }

        else
        {
          if (v10 < *v7)
          {
            *v7 = v10;
            *(v7 + 8) = v11;
          }

          if (v10 > v12)
          {
            *(v7 + 4) = v10;
            *(v7 + 12) = v11;
          }

          *(v7 + 20) = *(v5 + v3 + 2);
        }
      }

      ++v4;
      result = (*(**(this + 10) + 40))(*(this + 10));
      v3 += 48;
    }

    while (v4 < result);
  }

  return result;
}

float TouchService::CoreAnalyticsStep::generateDurationBetweenTouches(TouchService::CoreAnalyticsStep *this)
{
  *(*(this + 12) + 32) = 0;
  if ((*(**(this + 10) + 40))(*(this + 10)))
  {
    v3 = 0;
    v4 = 1;
    while (*((*(*(*(this + 10) + 32) + 8))() + v4) - 3 > 1)
    {
      ++v3;
      v4 += 48;
      if (v3 >= (*(**(this + 10) + 40))(*(this + 10)))
      {
        goto LABEL_5;
      }
    }

    if (!*(this + 120))
    {
      *(this + 120) = 1;
      v5 = *(this + 14);
      if (v5)
      {
        v6 = *(this + 12);
        result = (*(*(this + 13) + 16) - v5) / 1000000.0;
        *(v6 + 28) = result;
        *(v6 + 32) = 1;
      }
    }
  }

  else
  {
LABEL_5:
    if (*(this + 120))
    {
      *(this + 120) = 0;
      *(this + 14) = *(*(this + 13) + 16);
    }
  }

  return result;
}

uint64_t TouchService::CoreAnalyticsStep::run(TouchService::CoreAnalyticsStep *this)
{
  TouchService::CoreAnalyticsStep::generatePathStats(this);
  TouchService::CoreAnalyticsStep::generateDurationBetweenTouches(this);
  return 0;
}

void PalmRejection::ParseB222DataStep::ParseB222DataStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3)
{
  AlgWorkNode::AlgWorkNode(a1, 0xE7BFD687D6C382CELL);
  *v5 = &unk_2876F17A0;
  v5[10] = a2;
  v5[11] = a3;
}

uint64_t PalmRejection::ParseB222DataStep::run(PalmRejection::ParseB222DataStep *this)
{
  v1 = *(this + 10);
  v2 = *(this + 11);
  *(v2 + 8064) = *(v1 + 52);
  v3 = *(v1 + 44);
  *(v2 + 8008) = *(v1 + 36);
  *(v2 + 8028) = 0;
  *(v2 + 8020) = 0;
  *(v2 + 8056) = v3;
  return 0;
}

void PalmRejection::ParseB222DataStep::~ParseB222DataStep(PalmRejection::ParseB222DataStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::TouchServicePathStatsCollection::TouchServicePathStatsCollection(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v6 = &unk_2876F17F0;
  *(v6 + 32) = &unk_2876F1838;
  *(v6 + 40) = a3;
  *(v6 + 16) = 31237;
  v7 = (24 * a3) | 4u;
  *(a1 + 44) = v7;
  v8 = operator new(v7);
  *(a1 + 48) = v8;
  v9 = *(a1 + 44);
  *(a1 + 24) = v9;
  bzero(v8, v9);
  return a1;
}

void TouchService::TouchServicePathStatsCollection::~TouchServicePathStatsCollection(TouchService::TouchServicePathStatsCollection *this)
{
  *this = &unk_2876F17F0;
  *(this + 4) = &unk_2876F1838;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C804E63D35DLL);
  }

  *this = &unk_2876F3810;
}

{
  TouchService::TouchServicePathStatsCollection::~TouchServicePathStatsCollection(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::TouchServicePathStatsCollection::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = *(result + 48);
  if (*v3)
  {
    *(a3 + 56) = v3;
    *(a3 + 48) = (24 * *v3) | 4;
    return a2(a3);
  }

  return result;
}

void PalmRejection::UpdateTouchHoverDetectionFlagsStep::UpdateTouchHoverDetectionFlagsStep(AlgWorkNode *a1, uint64_t a2)
{
  AlgWorkNode::AlgWorkNode(a1, 0x6D1DBB9EC51968B7);
  *v3 = &unk_2876F18A0;
  v3[10] = a2;
}

uint64_t PalmRejection::UpdateTouchHoverDetectionFlagsStep::run(PalmRejection::UpdateTouchHoverDetectionFlagsStep *this)
{
  v1 = 0;
  v2 = *(this + 10);
  *(v2 + 8000) = 0;
  v3 = (v2 + 544);
  v4 = 19;
  do
  {
    v5 = *(v3 - 19);
    if (v5 <= 1)
    {
      if (v5 != 1)
      {
        goto LABEL_29;
      }

      v7 = *(v3 - 1);
      if (v7 == *(v3 - 2))
      {
        v6 = *(v3 - 86);
        if ((v6 - 1) <= 4)
        {
          v8 = *(v3 - 1);
          if (!*(v3 - 20))
          {
            v9 = 272;
            goto LABEL_28;
          }

          goto LABEL_10;
        }

LABEL_14:
        if (v6 == 6 || v6 == 8)
        {
          v9 = 1;
          goto LABEL_28;
        }

        if ((v6 - 12) < 3)
        {
          v9 = 4;
          goto LABEL_28;
        }

        if (v6)
        {
          goto LABEL_29;
        }
      }

      else if (*(v3 - 20))
      {
        goto LABEL_29;
      }

      v9 = 256;
      goto LABEL_28;
    }

    v6 = *(v3 - 86);
    if ((v6 - 1) >= 5)
    {
      goto LABEL_14;
    }

    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    if (v7 != v8)
    {
LABEL_11:
      if (v7 <= v8 || *v3 >= v7)
      {
        v9 = 128;
        goto LABEL_28;
      }

      goto LABEL_13;
    }

LABEL_10:
    if (*v3 >= v8)
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 16;
LABEL_28:
    v1 |= v9;
    *(v2 + 8000) = v1;
LABEL_29:
    v3 += 50;
    --v4;
  }

  while (v4);
  return 0;
}

void PalmRejection::UpdateTouchHoverDetectionFlagsStep::~UpdateTouchHoverDetectionFlagsStep(PalmRejection::UpdateTouchHoverDetectionFlagsStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PalmRejection::UpdateClassificationBasicFeatureStep::UpdateClassificationBasicFeatureStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AlgWorkNode::AlgWorkNode(a1, 0x84B2FAFF3753A6BELL);
  *v11 = &unk_2876F18F0;
  v11[10] = a2;
  v11[11] = a3;
  v11[12] = a4;
  v11[13] = a5;
  v11[14] = a6;
}

uint64_t PalmRejection::UpdateClassificationBasicFeatureStep::run(PalmRejection::UpdateClassificationBasicFeatureStep *this)
{
  v2 = 0;
  v3 = 0;
  v4 = (*(this + 14) + 1324);
  v4[23] = 0u;
  v4[24] = 0u;
  v4[21] = 0u;
  v4[22] = 0u;
  v4[19] = 0u;
  v4[20] = 0u;
  v4[17] = 0u;
  v4[18] = 0u;
  v4[15] = 0u;
  v4[16] = 0u;
  v4[13] = 0u;
  v4[14] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  v5 = *(this + 13);
  v6 = *(this + 14);
  *(v6 + 1784) = *(*(this + 11) + 38) ^ 1;
  v23 = (this + 112);
  v24 = v5 + 8252;
  for (i = 1; i != 20; ++i)
  {
    v8 = *(v5 + 468);
    if (v8)
    {
      *(v24 + 2 * v3) = i;
      v2 |= v8 != 1;
      *(v5 + 776) = PalmRejection::UpdateClassificationBasicFeatureStep::calcDist2Edge_XY(this, v5 + 400).u32[0];
      *(v5 + 780) = v9;
      *(v6 + 8 * v3) = *(v5 + 400);
      v10 = *(v5 + 476) * *(v5 + 480);
      *(v6 + 732 + 4 * v3) = v10;
      *(v6 + 812 + 4 * v3++) = sqrtf(v10);
    }

    v5 += 400;
  }

  *(v6 + 1148) = v3;
  *(v6 + 1785) = v2 & 1;
  *(v6 + 1780) = -1;
  if (v3 > 0)
  {
    v11 = SALoggingGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      PalmRejection::UpdateClassificationBasicFeatureStep::run(v23, v11);
    }

    v12 = *(this + 13);
    v13 = *(v12 + 8380);
    if (v13 == 0xFFFF)
    {
      v16 = *v23;
      *(v16 + 564) = 10000;
      *(v16 + 568) = 30000;
      *(v12 + 8404) = 0;
      v17 = *(v12 + 8064);
      if (v17 > 0)
      {
LABEL_14:
        v19 = *(this + 12);
        v20 = *(v19 + 24) - v17;
        if (v20 < 0)
        {
          v20 = -v20;
        }

        v21 = v20 < *(*(this + 11) + 36);
        goto LABEL_19;
      }
    }

    else
    {
      v14 = *(this + 12);
      v15 = *(v14 + 4) - v13;
      v16 = *(this + 14);
      *(v16 + 564) = v15;
      v17 = *(v12 + 8064);
      if (v17 >= 1)
      {
        v18 = *(v14 + 24) - v17;
        if (v18 < 0)
        {
          v18 = -v18;
        }

        *(v16 + 568) = v18;
        goto LABEL_14;
      }

      *(v16 + 568) = 30000;
    }

    v21 = 0;
    v19 = *(this + 12);
LABEL_19:
    *(v16 + 900) = v21;
    *(v12 + 8380) = *(v19 + 4);
  }

  return 0;
}

float32x2_t PalmRejection::UpdateClassificationBasicFeatureStep::calcDist2Edge_XY(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 80);
  v3.i32[0] = v2->i32[0];
  v18 = v2->i32[1];
  v17 = v2[1].i32[1];
  v19 = *(a2 + 76);
  v4 = *a2;
  v5 = v2[2];
  v3.i32[1] = v2[1].i32[0];
  v6 = vsub_f32(v3, *a2);
  v7 = __sincosf_stret(*(a2 + 72));
  *v8.f32 = v19;
  v8.i64[1] = __PAIR64__(LODWORD(v7.__sinval), LODWORD(v7.__cosval));
  if ((vmaxv_u16(vmovn_s32(vceqzq_f32(v8))) & 1) == 0)
  {
    v9 = atan2f(-(v19.f32[1] * (v7.__sinval / v7.__cosval)), v19.f32[0]);
    v10 = __sincosf_stret(v9);
    v11 = atan2f(v19.f32[1] / (v7.__sinval / v7.__cosval), v19.f32[0]);
    v12 = __sincosf_stret(v11);
    v13 = vdup_lane_s32(v19, 0);
    v13.i32[0] = LODWORD(v10.__sinval);
    v14.f32[0] = -v19.f32[1];
    v14.i32[1] = LODWORD(v12.__cosval);
    v15 = vabs_f32(vmla_n_f32(vmul_n_f32(vmul_f32(v13, v14), v7.__sinval), vmul_f32(v19, *&v10.__cosval), v7.__cosval));
    v6 = vsub_f32(v6, v15);
    v4 = vsub_f32(v4, v15);
  }

  return vadd_f32(v5, vminnm_f32(v6, vsub_f32(v4, __PAIR64__(v17, v18))));
}

void PalmRejection::UpdateClassificationBasicFeatureStep::~UpdateClassificationBasicFeatureStep(PalmRejection::UpdateClassificationBasicFeatureStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PalmRejection::UpdateClassificationBasicFeatureStep::run(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 1148);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_2653C2000, a2, OS_LOG_TYPE_DEBUG, "UpdateClassificationBasicFeatureStep() : num_paths = %d\n", v3, 8u);
}

AlgWorkNode *PadFireflyService::FFEventInfoStep::FFEventInfoStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AlgWorkNode::AlgWorkNode(a1, 0x9F1A27D53821E340);
  *v12 = &unk_2876F1940;
  *(v12 + 80) = a3;
  *(v12 + 88) = a4;
  *(v12 + 96) = a5;
  *(v12 + 104) = a6;
  *(v12 + 112) = a2;
  *(v12 + 136) = 0;
  PadFireflyService::FFEventInfoStep::runNodeRegistrations(v12);
  return a1;
}

void *PadFireflyService::FFEventInfoStep::runNodeRegistrations(PadFireflyService::FFEventInfoStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 10));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 11));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 12));
  v2 = *(this + 13);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t PadFireflyService::FFEventInfoStep::run(PadFireflyService::FFEventInfoStep *this)
{
  *(*(this + 13) + 64) = 0;
  if (*(*(this + 10) + 28) == 1 && (*(**(this + 12) + 40))(*(this + 12)))
  {
    v2 = *(this + 11);
    if (*(v2 + 120))
    {
      *(this + 30) = 0;
      v3 = *(v2 + 88);
      v4 = *(this + 13);
      v5 = *(this + 14);
      *(v4 + 32) = v3;
      *(v4 + 56) = 0;
      v6 = *(v5 + 16) + 4166;
      v7 = 36;
      if (v3)
      {
        v7 = 32;
      }

      *(v4 + 40) = v6 + *(*(this + 10) + v7);
      *(v4 + 48) = v6;
      *(v4 + 64) = 1;
      *(this + 16) = v2;
      *(this + 136) = v3;
    }

    else
    {
      v8 = *(this + 30);
      v9 = *(this + 10);
      if (!(v8 % *(v9 + 30)))
      {
        v10 = *(this + 13);
        *(v10 + 32) = 256;
        *(v10 + 56) = 1;
        v11 = *(*(this + 14) + 16) + 4166;
        *(v10 + 40) = v11 + *(v9 + 36);
        *(v10 + 48) = v11;
        *(v10 + 64) = 1;
        *(v2 + 120) = 1;
        *(this + 16) = v2;
        *(this + 136) = 0;
      }

      *(this + 30) = v8 + 1;
    }
  }

  return 0;
}

void PadFireflyService::FFEventInfoStep::~FFEventInfoStep(PadFireflyService::FFEventInfoStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

TouchService::TipOffsetStep *TouchService::TipOffsetStep::TipOffsetStep(TouchService::TipOffsetStep *this, DeviceOrientationNode *a2, TouchService::PlainPathCollection *a3)
{
  AlgWorkNode::AlgWorkNode(this, 0x6A940A37380298F5);
  *v6 = &unk_2876F1990;
  AlgDataNode::AlgDataNode((v6 + 10), 0x5FBF74E53ABC4E5DLL, 0);
  *(this + 10) = &unk_2876F19E0;
  *(this + 24) = 32779;
  *(this + 26) = 8;
  *(this + 15) = a2;
  *(this + 16) = a3;
  *(this + 108) = 0x449A400000000000;
  TouchService::TipOffsetStep::runNodeRegistrations(this);
  return this;
}

void sub_2653E3C70(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void *TouchService::TipOffsetStep::runNodeRegistrations(TouchService::TipOffsetStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 80);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 15));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 16));
  v2 = *(this + 16);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t TouchService::TipOffsetStep::run(TouchService::TipOffsetStep *this)
{
  v2 = *(this + 15);
  if ((*(**(this + 16) + 40))(*(this + 16)))
  {
    v3 = 0;
    for (i = 0; i < (*(**(this + 16) + 40))(*(this + 16)); ++i)
    {
      v5 = (*(*(*(this + 16) + 32) + 8))();
      v6 = *(v2 + 28);
      v7 = v5 + v3;
      v8 = *(v5 + v3 + 4);
      switch(v6)
      {
        case 2:
          v9 = *(this + 28);
          v10 = v8 - *(this + 27);
          break;
        case 3:
          v11 = *(this + 27);
          v12 = v8 - *(this + 28);
LABEL_11:
          *(v7 + 4) = v12;
          v13 = v11 + *(v7 + 8);
          goto LABEL_12;
        case 4:
          v9 = *(this + 27);
          v10 = *(this + 28) + v8;
          break;
        default:
          v11 = *(this + 28);
          v12 = *(this + 27) + v8;
          goto LABEL_11;
      }

      *(v7 + 4) = v10;
      v13 = *(v7 + 8) - v9;
LABEL_12:
      *(v7 + 8) = v13;
      v3 += 48;
    }
  }

  return 0;
}

void TouchService::TipOffsetStep::~TipOffsetStep(TouchService::TipOffsetStep *this)
{
  *this = &unk_2876F1990;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F1990;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PadFireflyService::FireflyServiceTask::FireflyServiceTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *v16 = &unk_2876F1A30;
  v16[13] = a2;
  v16[14] = 0;
  v17 = (v16 + 14);
  v16[15] = 0;
  v16[16] = 0;
  PadHostService::PlainFireflyContactCollection::PlainFireflyContactCollection((v16 + 17), 0xBFCA37ADAF690F9DLL, 1, 0);
  AlgDataNode::AlgDataNode((a1 + 192), 0x96FC637BCB54A950, 0);
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 208) = 31244;
  *(a1 + 216) = 88;
  *(a1 + 192) = &unk_2876F0328;
  *(a1 + 312) = 0;
  PadFireflyService::FireflyServiceEventCollection::FireflyServiceEventCollection(a1 + 320, 0x2F41407A6A2DAB88uLL, 1, 0);
  *(a1 + 384) = a4;
  PadHostService::PlainFireflyContactCollection::PlainFireflyContactCollection(a1 + 392, 0xCABF44B4AF0681E2, 1, 0);
  PadHostService::PlainFireflyContactCollection::PlainFireflyContactCollection(a1 + 448, 0x377AC42062A2DE2uLL, 1, 0);
  AlgDataNode::AlgDataNode((a1 + 504), 0x84A7C1216FAC7749, 0);
  *(a1 + 504) = &unk_2876F0690;
  *(a1 + 520) = 20486;
  *(a1 + 528) = 4;
  *(a1 + 536) = a3;
  *(a1 + 544) = a5;
  *(a1 + 552) = a7;
  *(a1 + 560) = a6;
  AlgDataNode::AlgDataNode((a1 + 568), 0x4D123D542B029C57, 0);
  *(a1 + 568) = &unk_2876F0640;
  *(a1 + 596) = 0;
  *(a1 + 598) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 31238;
  *(a1 + 592) = 12;
  AlgDataNode::AlgDataNode((a1 + 608), 0xB0A60E3AEC10AE51, 0);
  *(a1 + 608) = &unk_2876F01A8;
  *(a1 + 636) = 0;
  *(a1 + 624) = 20482;
  *(a1 + 632) = 1;
  *(a1 + 640) = a8;
  AlgDataNode::AlgDataNode((a1 + 648), 0x1AE62762759A22, 0);
  *(a1 + 760) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 664) = 31244;
  *(a1 + 672) = 88;
  *(a1 + 648) = &unk_2876F0328;
  *(a1 + 768) = 0;
  AlgDataNode::AlgDataNode((a1 + 776), 0x252C9B54B6A90413, 0);
  *(a1 + 888) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 792) = 31244;
  *(a1 + 800) = 88;
  *(a1 + 776) = &unk_2876F0328;
  *(a1 + 896) = 0;
  PadFireflyService::FireflyServiceEventCollection::FireflyServiceEventCollection(a1 + 904, 0x799D9C35D4F03426uLL, 1, 0);
  AlgDataNode::AlgDataNode((a1 + 960), 0xE6B312786F98B150, 0);
  *(a1 + 976) = 20481;
  *(a1 + 984) = 4;
  *(a1 + 960) = &unk_2876F0780;
  *(a1 + 992) = 0;
  AlgDataNode::AlgDataNode((a1 + 1000), 0x3779E57A5AD9093, 0);
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1016) = 31239;
  *(a1 + 1024) = 32;
  *(a1 + 1000) = &unk_2876F07D0;
  *(a1 + 1064) = 0;
  PadFireflyService::FFHysteresisFilterStep::FFHysteresisFilterStep(a1 + 1072, a1 + 504, *(a1 + 536), *(a1 + 544), a1 + 392, v17, 0);
  PadFireflyService::FFRadiusCorrectionStep::FFRadiusCorrectionStep(a1 + 1360, a1 + 392, 1000.0);
  PadFireflyService::FFEventGenerationStep::FFEventGenerationStep(a1 + 1520, 0x845CF018E0650460, a1 + 504, *(a1 + 536), v17, a1 + 392, a1 + 192, a1 + 320, 1000.0, a1 + 776, a1 + 904, a1 + 376, a1 + 608);
  PadFireflyService::FFEventInfoStep::FFEventInfoStep((a1 + 1728), v17, a1 + 568, a1 + 776, a1 + 904, a1 + 1000);
  ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  PadFireflyService::PTWEventGenerationStep::PTWEventGenerationStep((a1 + 1976), v17, *(a1 + 640), a1 + 648);
  PadFireflyService::FireflyServiceTask::runNodeRegistrations(a1);
  *(a1 + 376) = 0;
  *(*(a1 + 544) + 28) = 1;
  *(a1 + 596) = 0;
  *(a1 + 636) = 0;
  *(a1 + 532) = 2000;
  *(*(a1 + 640) + 28) = 0;
  return a1;
}

void sub_2653E4458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  AlgWorkNode::~AlgWorkNode((v14 + 247));
  AlgTaskNode::~AlgTaskNode((v14 + 234));
  AlgWorkNode::~AlgWorkNode((v14 + 216));
  v14[190] = &unk_2876F1EB8;
  v14[211] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v17);
  PadFireflyService::FFRadiusCorrectionStep::~FFRadiusCorrectionStep((v14 + 170));
  PadFireflyService::FFHysteresisFilterStep::~FFHysteresisFilterStep((v14 + 134));
  *v15 = &unk_2876F3810;
  *v22 = &unk_2876F3810;
  PadFireflyService::FireflyServiceEventCollection::~FireflyServiceEventCollection(v21);
  *v20 = &unk_2876F3810;
  *v19 = &unk_2876F3810;
  *v18 = &unk_2876F3810;
  *a13 = &unk_2876F3810;
  *v16 = &unk_2876F3810;
  PadHostService::PlainFireflyContactCollection::~PlainFireflyContactCollection((v14 + 56));
  PadHostService::PlainFireflyContactCollection::~PlainFireflyContactCollection((v14 + 49));
  PadFireflyService::FireflyServiceEventCollection::~FireflyServiceEventCollection((v14 + 40));
  *a14 = &unk_2876F3810;
  PadHostService::PlainFireflyContactCollection::~PlainFireflyContactCollection((v14 + 17));
  AlgTaskNode::~AlgTaskNode(v14);
  _Unwind_Resume(a1);
}

uint64_t PadFireflyService::FireflyServiceTask::runNodeRegistrations(PadFireflyService::FireflyServiceTask *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, this + 504);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 67));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 68));
  AlgWorkNode::registerAlgDataNode(this + 8, this + 568);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 608);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 48));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 69));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 80));
  AlgWorkNode::registerAlgDataNode(this + 40, this + 776);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 904);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 960);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 1000);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 648);
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1072));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1360));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1520));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1728));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1872));

  return ConditionalInjExtAndTaskNode::registerChild((this + 1872), (this + 1976));
}

uint64_t PadFireflyService::FireflyServiceTask::runTask(PadFireflyService::FireflyServiceTask *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    if (*(*(this + 48) + 28) == 1)
    {
      v12 = *(this + 13);
      v13 = *(v12 + 16);
      *(this + 7) = *v12;
      *(this + 16) = v13;
      PadHostService::PlainFireflyContactCollection::operator=(this + 392, *(this + 70));
    }

    else
    {
      *(this + 896) = 0;
      *(this + 1064) = 0;
      *(this + 992) = 0;
      *(this + 768) = 0;
    }
  }

  return ConditionalAlgTaskNode::runTask(this, a2, a3, a4, a5, a6);
}

uint64_t PadFireflyService::FireflyServiceTask::runAfterChildren(PadFireflyService::FireflyServiceTask *this)
{
  PadHostService::PlainFireflyContactCollection::operator=(this + 448, this + 136);
  v2 = *(this + 856);
  *(this + 16) = *(this + 840);
  *(this + 17) = v2;
  *(this + 18) = *(this + 872);
  *(this + 38) = *(this + 111);
  v3 = *(this + 824);
  *(this + 14) = *(this + 808);
  *(this + 15) = v3;
  PadHostService::PlainFireflyContactCollection::operator=(this + 320, this + 904);
  if (*(*(this + 69) + 28) == 1)
  {
    *(this + 896) = 0;
    *(this + 1064) = 0;
    *(this + 992) = 0;
  }

  return 0;
}

void PalmRejection::UpdatePathAssignedFingerStep::UpdatePathAssignedFingerStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AlgWorkNode::AlgWorkNode(a1, 0x7D71B73B2BE7631ALL);
  *v7 = &unk_2876F1AA8;
  v7[10] = a2;
  v7[11] = a3;
  v7[12] = a4;
}

uint64_t PalmRejection::UpdatePathAssignedFingerStep::run(PalmRejection::UpdatePathAssignedFingerStep *this)
{
  v1 = *(this + 11);
  *(*(this + 12) + 8072) = 0;
  v2 = v1[574];
  if (v2 >= 1)
  {
    v3 = this;
    v4 = 0;
    while (1)
    {
      v5 = *(v3 + 12);
      v6 = *(v5 + 2 * v4 + 8252);
      v7 = v5 + 400 * *(v5 + 2 * v4 + 8252);
      v8 = *(v7 + 68);
      if (v8 <= 1 && (v8 != 1 || *(v7 + 136) != *(v7 + 128)))
      {
        LOBYTE(v9) = 0;
        *(v7 + 58) = 0;
        goto LABEL_12;
      }

      v9 = *(v7 + 58);
      if ((v9 - 12) >= 3)
      {
        break;
      }

LABEL_13:
      if (++v4 >= v2)
      {
        return 0;
      }
    }

    if (v6 == v1[890] || v6 == v1[891])
    {
      LOBYTE(v9) = 4;
      goto LABEL_8;
    }

    v10 = *(v7 + 160);
    if (v10 - 3 > 1)
    {
      if (v10 >= 5 && (v9 == 6 || v9 == 8))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = *(v7 + 372);
      if ((v1[100 * *(v7 + 384) + 760] & 0x100) != 0 || v11 < -6.9078)
      {
        if (v11 >= -6.9078)
        {
          LOBYTE(v9) = 8;
        }

        else
        {
          LOBYTE(v9) = 6;
        }

LABEL_8:
        *(v7 + 58) = v9;
        goto LABEL_12;
      }
    }

    LODWORD(this) = PalmRejection::UpdatePathAssignedFingerStep::isPathHasThumbEccentricity(this, v7, (*(v3 + 10) + 1944));
    if (this)
    {
      LOBYTE(v9) = 1;
      goto LABEL_8;
    }

    v13 = *(v7 + 58);
    v14 = v13 > 5;
    v15 = (1 << v13) & 0x25;
    v16 = v14 || v15 == 0;
    if (v16 || *(v7 + 244) >= 6000.0 || *(v7 + 52) >= 307.0 || *(v7 + 208) >= 153.0)
    {
      LOBYTE(v9) = 3;
      *(v7 + 58) = 3;
      ++*(*(v3 + 12) + 8074);
    }

    else
    {
      LOBYTE(v9) = 2;
      *(v7 + 58) = 2;
      ++*(*(v3 + 12) + 8072);
    }

LABEL_12:
    *(v7 + 368) = v9;
    LOWORD(v2) = v1[574];
    goto LABEL_13;
  }

  return 0;
}

BOOL PalmRejection::UpdatePathAssignedFingerStep::isPathHasThumbEccentricity(uint64_t a1, float *a2, float *a3)
{
  v4 = (a2[20] + a2[43]) * 0.5;
  v5 = wFfuzzify((a2[45] + (a2[22] * 3.0)) * 0.25, a3[3], a3[4]);
  v6 = wFfuzzifyAndClip(v4, a3[2], a3[1]) * 0.5;
  return (v5 + (v6 * (wFfuzzifyAndClip(v4, a3[2], a3[1]) * 0.5))) > 0.3;
}

void PalmRejection::UpdatePathAssignedFingerStep::~UpdatePathAssignedFingerStep(PalmRejection::UpdatePathAssignedFingerStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

float PalmRejection::PalmRejSurfaceUtil::computeMinDistToEdges(float **a1, __int16 a2, float a3, float a4)
{
  if ((a2 & 0xC) != 0)
  {
    v4 = *a1;
    v5 = fminf(**a1 - a3, 3.4028e38);
    v6 = a3 - (*a1)[1];
    if (v6 >= v5)
    {
      v6 = v5;
    }

    if (v6 < 0.0)
    {
      v6 = v6 / *(v4 + 24);
    }

    if (a2)
    {
      v6 = v6 + *(v4 + 16);
    }
  }

  else
  {
    v6 = 3.4028e38;
  }

  if ((a2 & 0x30) != 0)
  {
    v7 = *a1;
    v8 = fminf(a4 - (*a1)[3], 3.4028e38);
    v9 = (*a1)[2] - a4;
    if (v9 >= v8)
    {
      v9 = v8;
    }

    if (v9 < 0.0)
    {
      v9 = v9 / *(v7 + 28);
    }

    if (a2)
    {
      v9 = v9 + *(v7 + 20);
    }
  }

  else
  {
    v9 = 3.4028e38;
  }

  v10 = sqrtf((v9 * v9) + (v6 * v6));
  result = fminf(v6, v9);
  if ((a2 & 0x100) != 0)
  {
    return v10;
  }

  return result;
}

uint64_t TouchService::TouchTask::TouchTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v27 = ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *v27 = &unk_2876F1AF8;
  v27[13] = a3;
  TouchService::PlainPathCollection::PlainPathCollection((v27 + 17), 0xBFCA37ADAF690F9DLL, 18, 0);
  AlgDataNode::AlgDataNode((a1 + 192), 0x14186292CB5EC19FLL, 0);
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 208) = 31232;
  *(a1 + 216) = 72;
  *(a1 + 192) = &unk_2876F02C0;
  *(a1 + 296) = 0;
  TouchService::TouchServiceEventCollection::TouchServiceEventCollection(a1 + 304, 0x726D3482B33B0E37uLL, 18, 0);
  *(a1 + 368) = a4;
  *(a1 + 376) = a5;
  *(a1 + 384) = a6;
  *(a1 + 392) = a7;
  *(a1 + 400) = a8;
  *(a1 + 408) = a9;
  *(a1 + 416) = a19;
  *(a1 + 424) = a10;
  *(a1 + 432) = a20;
  TouchService::PlainPathCollection::PlainPathCollection(a1 + 440, 0x377AC42062A2DE2uLL, 18, 0);
  TouchService::PlainPathCollection::PlainPathCollection(a1 + 496, 0xAD07F595BC326A50, 18, 0);
  *(a1 + 552) = a11;
  *(a1 + 560) = a12;
  *(a1 + 568) = a13;
  *(a1 + 576) = a14;
  *(a1 + 584) = a15;
  *(a1 + 592) = a16;
  *(a1 + 600) = a17;
  *(a1 + 608) = a18;
  TouchService::PathTrackingStep::PathTrackingStep((a1 + 616), *(a1 + 392), (a1 + 440));
  TouchService::ContactReclassificationStep::ContactReclassificationStep((a1 + 712), *(a1 + 104), *(a1 + 376), *(a1 + 384), *(a1 + 424), *(a1 + 392), *(a1 + 432));
  TouchService::CoreAnalyticsStep::CoreAnalyticsStep((a1 + 856), *(a1 + 392), *(a1 + 552), *(a1 + 592), *(a1 + 104), 0);
  TouchService::TipOffsetStep::TipOffsetStep((a1 + 992), *(a1 + 384), *(a1 + 392));
  TouchService::HysteresisFilterStep::HysteresisFilterStep((a1 + 1128), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 104), 0);
  TouchService::RadiusCorrectionStep::RadiusCorrectionStep(a1 + 1368, *(a1 + 392), 0, 1000.0);
  TouchService::InterpolationStep::InterpolationStep((a1 + 1520), *(a1 + 104), a1 + 112, *(a1 + 368), *(a1 + 400), *(a1 + 392), a1 + 440, a1 + 496, 0);
  TouchService::EventGenerationStep::EventGenerationStep((a1 + 1688), 0xE6B14D7065085DALL, *(a1 + 368), *(a1 + 376), a1 + 112, a1 + 496, a1 + 192, a1 + 304, 1000.0, *(a1 + 560), *(a1 + 568), a1 + 360, *(a1 + 416));
  TouchService::EventGenerationStep::EventGenerationStep((a1 + 1856), 0x194876B5C87728CFLL, *(a1 + 368), *(a1 + 376), *(a1 + 104), *(a1 + 392), *(a1 + 560), *(a1 + 568), 1000.0, *(a1 + 576), *(a1 + 584), a1 + 361, *(a1 + 416));
  TouchService::EventInfoStep::EventInfoStep((a1 + 2024), *(a1 + 104), *(a1 + 400), *(a1 + 408), *(a1 + 576), *(a1 + 584), *(a1 + 560), *(a1 + 568), *(a1 + 600), *(a1 + 608));
  TouchService::TouchTask::runNodeRegistrations(a1);
  *(a1 + 360) = 1;
  return a1;
}

{
  return TouchService::TouchTask::TouchTask(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_2653E50D4(_Unwind_Exception *a1)
{
  AlgWorkNode::~AlgWorkNode((v1 + 253));
  AlgWorkNode::~AlgWorkNode((v1 + 232));
  AlgWorkNode::~AlgWorkNode((v1 + 211));
  TouchService::InterpolationStep::~InterpolationStep((v1 + 190));
  TouchService::RadiusCorrectionStep::~RadiusCorrectionStep((v1 + 171));
  TouchService::HysteresisFilterStep::~HysteresisFilterStep((v1 + 141));
  v1[124] = &unk_2876F1990;
  v1[134] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v3);
  TouchService::CoreAnalyticsStep::~CoreAnalyticsStep((v1 + 107));
  AlgWorkNode::~AlgWorkNode((v1 + 89));
  AlgWorkNode::~AlgWorkNode((v1 + 77));
  TouchService::PlainPathCollection::~PlainPathCollection((v1 + 62));
  TouchService::PlainPathCollection::~PlainPathCollection((v1 + 55));
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection((v1 + 38));
  *v2 = &unk_2876F3810;
  TouchService::PlainPathCollection::~PlainPathCollection((v1 + 17));
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(a1);
}

uint64_t TouchService::TouchTask::runNodeRegistrations(TouchService::TouchTask *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 46));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 47));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 48));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 49));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 50));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 51));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 52));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 53));
  v2 = *(this + 54);
  if (v2)
  {
    AlgWorkNode::registerAlgDataNode(this + 8, v2);
  }

  AlgWorkNode::registerAlgDataNode(this + 24, this + 440);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 496);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 72));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 73));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 70));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 71));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 69));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 74));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 75));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 76));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 616));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 712));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 856));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 992));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1128));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1368));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1520));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1688));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1856));

  return ConditionalInjExtAndTaskNode::registerChild(this, (this + 2024));
}

uint64_t TouchService::TouchTask::invalidateOutputNodes(TouchService::TouchTask *this)
{
  *(*(this + 72) + 104) = 0;
  *(*(this + 70) + 104) = 0;
  *(*(this + 75) + 64) = 0;
  *(*(this + 76) + 64) = 0;
  *(*(this + 74) + 32) = 0;
  return TouchService::TouchServiceEventCollection::setNumEvents(*(this + 69), 0);
}

uint64_t TouchService::TouchTask::runBeforeChildren(TouchService::TouchTask *this)
{
  PadHostService::PlainFireflyContactCollection::operator=(this + 136, *(this + 49));
  *(this + 360) = *(*(this + 50) + 28) ^ 1;
  return 0;
}

uint64_t TouchService::TouchTask::runAfterChildren(TouchService::TouchTask *this)
{
  PadHostService::PlainFireflyContactCollection::operator=(this + 440, this + 136);
  v2 = *(this + 72);
  *(this + 14) = *(v2 + 32);
  v4 = *(v2 + 64);
  v3 = *(v2 + 80);
  v5 = *(v2 + 48);
  *(this + 36) = *(v2 + 96);
  *(this + 16) = v4;
  *(this + 17) = v3;
  *(this + 15) = v5;
  PadHostService::PlainFireflyContactCollection::operator=(this + 304, *(this + 73));
  if ((*(*(this + 50) + 28) & 1) == 0)
  {
    TouchService::TouchServiceEventCollection::setNumEvents(*(this + 71), 0);
    *(*(this + 70) + 104) = 0;
  }

  return 0;
}

AlgWorkNode *TouchService::ContactReclassificationStep::ContactReclassificationStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x277D85DE8];
  AlgWorkNode::AlgWorkNode(a1, 0x2B9B6D5C6DA172B0);
  *v14 = &unk_2876F1B70;
  v14[10] = a2;
  v14[11] = a3;
  v14[12] = a4;
  v14[13] = a7;
  v14[14] = a5;
  v14[15] = a6;
  v14[16] = 0;
  v14[17] = 0;
  if (a7)
  {
    v18 = a3;
    v19 = a4;
    v20 = a6;
    v21 = a7;
    v16 = &v18;
    v17 = 4;
  }

  else
  {
    v18 = a3;
    v19 = a4;
    v20 = a6;
    v16 = &v18;
    v17 = 3;
  }

  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 8, &v16);
  return a1;
}

void TouchService::ContactReclassificationStep::~ContactReclassificationStep(TouchService::ContactReclassificationStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::ContactReclassificationStep::run(TouchService::ContactReclassificationStep *this)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 15) + 40))(*(this + 15));
  MEMORY[0x28223BE20](v2);
  v5 = v19 - v4;
  if (v3 >= 0x200)
  {
    v6 = 512;
  }

  else
  {
    v6 = v3;
  }

  bzero(v19 - v4, v6);
  if ((*(**(this + 15) + 40))(*(this + 15)))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      *&v5[8 * v8++] = (*(*(*(this + 15) + 32) + 8))() + v7;
      v7 += 48;
    }

    while (v8 < (*(**(this + 15) + 40))(*(this + 15)));
  }

  v9 = *(this + 13);
  if (v9)
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  memset(v19, 0, 24);
  if ((*(**(this + 14) + 40))(*(this + 14)))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v19[v12++] = (*(*(*(this + 14) + 120) + 8))() + v11;
      v11 += 28;
    }

    while (v12 < (*(**(this + 14) + 40))(*(this + 14)));
  }

  v13 = *(this + 11);
  v14 = **(this + 10);
  v15 = *(*(this + 12) + 28);
  v16 = (*(**(this + 15) + 40))(*(this + 15));
  v17 = (*(**(this + 14) + 40))(*(this + 14));
  TouchService::ContactReclassification<62ull,(unsigned char)3>::reclassify(this + 8, v14, (v13 + 28), v15, v10, v5, v16, v19, v17);
  return 0;
}

uint64_t SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(uint64_t a1, uint64_t a2)
{
  result = SAList<std::reference_wrapper<AlgDataNode>>::resize(a1, *(a1 + 12) + *(a2 + 8));
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = SAList<std::reference_wrapper<AlgWorkNode>>::push_back(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t SAList<std::reference_wrapper<AlgDataNode>>::resize(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  *(result + 8) = a2;
  if (a2)
  {
    if (v2 != a2)
    {
      v3 = result;
      v4 = *result;
      if (*result)
      {
        v5 = operator new(8 * a2);
        *v3 = v5;
        memcpy(v5, v4, 8 * *(v3 + 12));

        JUMPOUT(0x266758580);
      }
    }
  }

  return result;
}

uint64_t TouchService::ContactReclassification<62ull,(unsigned char)3>::reclassify(int8x16_t *a1, uint64_t a2, float *a3, char a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t *a8, unsigned __int8 a9)
{
  v39 = a4;
  if (a7)
  {
    v11 = 0;
    v12 = 0;
    v13 = a9;
    if (a5)
    {
      v14 = (a2 - a5) >> 8 > 0xC34;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    v33 = a7;
    v35 = v15 ^ 1;
    while (1)
    {
      v16 = *(a6 + 8 * v11);
      v17 = 1 << *v16;
      v18 = a1->i64[0];
      if (*(v16 + 1) >= 3u && ((1 << *(v16 + 2)) & 0x3E) != 0)
      {
        a1->i64[0] = v17 | v18;
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      v36 = v19;
      if (v13)
      {
        break;
      }

      v37 = 0;
LABEL_41:
      if (((v36 | v37) & 1) == 0)
      {
        *a1 = vandq_s8(*a1, vdupq_n_s64(~v17));
      }

      v12 |= v17;
      ++v11;
      v13 = a9;
      if (v11 == v33)
      {
        goto LABEL_46;
      }
    }

    v37 = 0;
    v38 = v17 & v18;
    if ((v17 & v18) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    v21 = a8;
    while (1)
    {
      v22 = *v21;
      if ((*(*v21 + 16) >> v39))
      {
        v23 = TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, &v39, *v21);
        v27 = *(v16 + 4);
        if (v27 >= v23 && v27 <= v25)
        {
          v29 = *(v16 + 8);
          if (v29 >= v24 && v29 <= v26)
          {
            if (v20)
            {
              a1->i64[1] |= v17;
LABEL_34:
              if (((*(v22 + 20) >> *(v16 + 2)) & 1) != 0 && *(v16 + 1) >= 3u && (*&v35 & (*(v22 + 17) >> 1) & 1) == 0)
              {
                *(v16 + 2) = *(v22 + 26);
                if (!v38)
                {
                  *(v16 + 44) |= *(v22 + 24);
                }

                v37 = 1;
              }

              goto LABEL_28;
            }

            if (!v38 || (a1->i64[1] & v17) != 0)
            {
              goto LABEL_34;
            }
          }
        }
      }

LABEL_28:
      ++v21;
      if (!--v13)
      {
        goto LABEL_41;
      }
    }
  }

  v12 = 0;
LABEL_46:
  *a1 = vandq_s8(*a1, vdupq_n_s64(v12));
  return 1;
}

float TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(float *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = *a2;
  }

  else
  {
    v4 = 1;
  }

  v5 = 0.0;
  if (v4 > 2u)
  {
    if (v4 == 3)
    {
      *&v5 = a1[1];
      TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, v5, *a1);
      *&v5 = a1[4] - v8;
    }

    else if (v4 == 4)
    {
      *&v5 = a1[1];
      TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, v5, *a1);
      *&v5 = a1[2] + v7;
    }
  }

  else if (v4 == 1)
  {
    *&v5 = *a1;
    v5 = TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, v5, a1[1]);
    *&v5 = a1[2] + *&v5;
  }

  else if (v4 == 2)
  {
    *&v5 = *a1;
    TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, v5, a1[1]);
    *&v5 = a1[4] - v6;
  }

  return *&v5;
}

double TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(uint64_t a1, double a2, float a3)
{
  *(&a2 + 1) = a3;
  v3 = vdupq_lane_s64(*&a2, 0);
  v4 = vmulq_f32(*a1, vbslq_s8(vceqzq_s32(vandq_s8(vdupq_lane_s32(*(a1 + 16), 0), xmmword_2655A87F0)), vdupq_n_s32(0x447A0000u), v3));
  *&result = vbslq_s8(vcltzq_f32(v4), vaddq_f32(v4, v3), v4).u64[0];
  return result;
}

AlgWorkNode *TouchService::EventGenerationStep::EventGenerationStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v20 = &unk_2876F1BC0;
  *(v20 + 80) = a3;
  *(v20 + 88) = a4;
  *(v20 + 96) = a6;
  *(v20 + 104) = a7;
  *(v20 + 112) = a8;
  *(v20 + 120) = a13;
  *(v20 + 128) = a10;
  *(v20 + 136) = a11;
  *(v20 + 144) = a5;
  *(v20 + 152) = a9;
  *(v20 + 160) = a12;
  TouchService::EventGenerationStep::runNodeRegistrations(v20);
  return a1;
}

{
  return TouchService::EventGenerationStep::EventGenerationStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void *TouchService::EventGenerationStep::runNodeRegistrations(TouchService::EventGenerationStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 10));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 11));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 12));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 13));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 16));
  v2 = *(this + 17);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

BOOL TouchService::EventGenerationStep::isFingerInEvents(TouchService::EventGenerationStep *this, int a2)
{
  if (!(*(**(this + 17) + 40))(*(this + 17)))
  {
    return 0;
  }

  v4 = 0;
  v5 = 12;
  do
  {
    v6 = *((*(*(*(this + 17) + 32) + 8))() + v5);
    v7 = v6 == a2;
    if (v6 == a2)
    {
      break;
    }

    ++v4;
    v5 += 72;
  }

  while (v4 < (*(**(this + 17) + 40))(*(this + 17)));
  return v7;
}

uint64_t TouchService::EventGenerationStep::attributesFromFlags(TouchService::EventGenerationStep *this)
{
  v1 = (this << 12) & 0x2000 | ((this & 1) << 11);
  if ((this & 0x100) != 0)
  {
    v2 = 134479872;
  }

  else
  {
    v2 = 0x40000;
  }

  if ((this & 4) != 0)
  {
    return (this << 17) & 0x4000000 | (((this >> 10) & 1) << 25) | (((this >> 11) & 1) << 24) | v2 | v1;
  }

  else
  {
    return v1;
  }
}

BOOL TouchService::EventGenerationStep::generateFingerEvent(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, uint64_t a4, double a5, double a6, double a7)
{
  v97 = *MEMORY[0x277D85DE8];
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v8 = *(a1 + 144);
  *a4 = *(v8 + 16);
  *(a4 + 8) = *(v8 + 8);
  if (!a3)
  {
    v29 = SALoggingGeneral();
    result = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    TouchService::EventGenerationStep::generateFingerEvent(a2, v29);
    return 0;
  }

  v11 = *(a1 + 88);
  v12 = v11[8];
  if (v12 <= 0.0 || (v13 = v11[7], v13 <= 0.0))
  {
    v30 = SALoggingGeneral();
    result = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    TouchService::EventGenerationStep::generateFingerEvent(a3, v30);
    return 0;
  }

  *&a7 = (v12 / 1000.0) * 1000.0;
  *(a4 + 12) = *a3;
  v15 = a3[2];
  *(a4 + 16) = v15;
  v16 = *(*(a1 + 80) + 28);
  if (!v16)
  {
    v16 = 480;
  }

  v17 = 25400.0 / v16;
  *(a4 + 24) = (v17 * ((*(a3 + 1) - v11[9]) / v17)) / v13;
  *(a4 + 28) = 1.0 - ((v17 * ((*(a3 + 2) - v11[10]) / v17)) / v12);
  *(a4 + 32) = vrev64_s32(vdiv_f32(*(a3 + 20), vdup_lane_s32(*&a7, 0)));
  *(a4 + 40) = *(a1 + 152) / *&a7;
  *(a4 + 44) = *(a3 + 4);
  *(a4 + 52) = (*(a3 + 7) * 180.0) / 3.1416;
  v18 = a3[1];
  *(a4 + 57) = (v18 - 3) < 2;
  v19 = v18 - 1;
  *(a4 + 56) = (v18 - 1) < 6;
  v20 = *(a3 + 22);
  if (v20 >= 0)
  {
    v21 = (v20 << 8) & 0x800;
  }

  else
  {
    v21 = (((v20 >> 3) & 1) << 11) | 0x4000;
  }

  *(a4 + 60) = v21;
  v22 = TouchService::EventGenerationStep::attributesFromFlags(v20);
  *(a4 + 20) = v22;
  *(a4 + 64) = (v20 >> 7) & 0x80;
  if (*(*(a1 + 120) + 28) == 1)
  {
    v22 |= 0x20000u;
    *(a4 + 20) = v22;
  }

  if (a2)
  {
    if ((a2[56] & 1) == 0 && v19 >= 6)
    {
      v23 = SALoggingGeneral();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v25 = *(a4 + 12);
      v26 = *(a4 + 16);
      v27 = a3[1];
      v63 = 67109632;
      *v64 = v25;
      *&v64[4] = 1024;
      *&v64[6] = v26;
      *v65 = 1024;
      *&v65[2] = v27;
      v28 = "EventGenerationStep:  P%d F%d stage=%d already gone -> skipping";
LABEL_47:
      _os_log_debug_impl(&dword_2653C2000, v23, OS_LOG_TYPE_DEBUG, v28, &v63, 0x14u);
      return 0;
    }
  }

  else
  {
    if (v19 >= 6)
    {
      v23 = SALoggingGeneral();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v36 = *(a4 + 12);
      v37 = *(a4 + 16);
      v38 = a3[1];
      v63 = 67109632;
      *v64 = v36;
      *&v64[4] = 1024;
      *&v64[6] = v37;
      *v65 = 1024;
      *&v65[2] = v38;
      v28 = "EventGenerationStep:  New P%d F%d stage=%d not in range -> skipping";
      goto LABEL_47;
    }

    a2 = &TouchService::EventGenerationStep::generateFingerEvent(SADigitizerEventPacket const*,SAPreciseContact const*,SADigitizerEventPacket&)::empty_finger;
  }

  v31 = *(a2 + 5);
  if (((v31 ^ v22) & 0xF042800) != 0)
  {
    v22 |= 0x40u;
    *(a4 + 20) = v22;
    v31 = *(a2 + 5);
  }

  if ((v31 & 0x20000) != 0)
  {
    v22 |= 0x20000u;
    *(a4 + 20) = v22;
  }

  if ((v15 - 6) <= 0xFFFFFFFA)
  {
    if ((*(a2 + 4) - 1) > 4)
    {
      v23 = SALoggingGeneral();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v39 = *(a4 + 12);
      v40 = *(a4 + 16);
      v41 = a3[1];
      v63 = 67109632;
      *v64 = v39;
      *&v64[4] = 1024;
      *&v64[6] = v40;
      *v65 = 1024;
      *&v65[2] = v41;
      v28 = "EventGenerationStep:  New P%d F%d stage=%d not a finger -> skipping";
      goto LABEL_47;
    }

    *(a4 + 20) = v22 | 0x80;
    *(a4 + 56) = 0;
    v32 = SALoggingGeneral();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v60 = *(a4 + 12);
      v61 = *(a4 + 16);
      v62 = a3[1];
      v63 = 67109632;
      *v64 = v60;
      *&v64[4] = 1024;
      *&v64[6] = v61;
      *v65 = 1024;
      *&v65[2] = v62;
      _os_log_debug_impl(&dword_2653C2000, v32, OS_LOG_TYPE_DEBUG, "EventGenerationStep:  P%d F%d stage=%d turned into no finger -> canceling", &v63, 0x14u);
    }
  }

  v33 = a2[56];
  if (*(a4 + 56) != v33)
  {
    *(a4 + 20) |= 1u;
  }

  v34 = *(a4 + 57);
  if (v34 != a2[57])
  {
    *(a4 + 20) |= 2u;
  }

  if (v33)
  {
    if (*(a4 + 16) != *(a2 + 4))
    {
      *(a4 + 20) |= 0x20u;
    }

    if (v34 && (*(a4 + 24) != *(a2 + 6) || *(a4 + 28) != *(a2 + 7)))
    {
      *(a4 + 20) |= 4u;
    }
  }

  v35 = SALoggingGeneral();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v42 = a3[1];
    v43 = *(a4 + 56);
    v44 = *(a4 + 57);
    if (a2 == &TouchService::EventGenerationStep::generateFingerEvent(SADigitizerEventPacket const*,SAPreciseContact const*,SADigitizerEventPacket&)::empty_finger)
    {
      v45 = "New ";
    }

    else
    {
      v45 = "";
    }

    v46 = *(a4 + 16);
    v47 = *(a4 + 20);
    v48 = *(a3 + 1);
    v49 = *(a3 + 2);
    v50 = *(a4 + 24);
    v51 = *(a4 + 28);
    v52 = *(a4 + 36);
    v53 = *(a4 + 32);
    v54 = *(a4 + 48);
    v55 = *(a4 + 44);
    v57 = *(a4 + 8);
    v56 = *(a4 + 12);
    v58 = *(a4 + 60);
    v59 = *(a4 + 64);
    v63 = 136319491;
    *v64 = v45;
    *&v64[8] = 1024;
    *v65 = v56;
    *&v65[4] = 1024;
    v66 = v46;
    v67 = 1024;
    v68 = v42;
    v69 = 1024;
    v70 = v43;
    v71 = 1024;
    v72 = v44;
    v73 = 1024;
    v74 = v47;
    v75 = 2053;
    v76 = v48;
    v77 = 2053;
    v78 = v49;
    v79 = 2053;
    v80 = v50;
    v81 = 2053;
    v82 = v51;
    v83 = 2048;
    v84 = v52;
    v85 = 2048;
    v86 = v53;
    v87 = 2048;
    v88 = v54;
    v89 = 2048;
    v90 = v55;
    v91 = 1024;
    v92 = v57;
    v93 = 1024;
    v94 = v58;
    v95 = 1024;
    v96 = v59;
    _os_log_debug_impl(&dword_2653C2000, v35, OS_LOG_TYPE_DEBUG, "EventGenerationStep:  %sP%d -> F%d stage=%d range=%d touch=%d mask=0x%x pos_um=(%{sensitive}.3f,%{sensitive}.3f) x=%{sensitive}.8f y=%{sensitive}.8f majorR=%f minorR=%f density=%f quality=%f GC=%d option_mask=0x%x phase=0x%x\n", &v63, 0x92u);
  }

  return 1;
}

int32x2_t TouchService::EventGenerationStep::generateHandEvent(TouchService::EventGenerationStep *this)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *(this + 16);
  v2 = *(this + 17);
  *(v3 + 104) = 0;
  if ((*(*v2 + 40))(v2))
  {
    v5 = *(this + 13);
    v7 = *(v5 + 64);
    v6 = *(v5 + 80);
    v8 = *(v5 + 48);
    *(v3 + 96) = *(v5 + 96);
    *(v3 + 64) = v7;
    *(v3 + 80) = v6;
    *(v3 + 32) = *(v5 + 32);
    *(v3 + 48) = v8;
    v9 = *(this + 18);
    *(v3 + 40) = *(v9 + 8);
    *(v3 + 32) = *(v9 + 16);
    *(v3 + 48) = 0x8000000001;
    *(v3 + 88) = 0;
    *(v3 + 92) = 0;
    if ((*(**(this + 17) + 40))(*(this + 17)))
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (*(*(*(this + 17) + 32) + 8))();
        v14 = *(v3 + 89);
        v15 = v13 + v10;
        v16 = *(v13 + v10 + 57);
        v17 = *(v3 + 88);
        if (((v14 ^ 1) & v16 & 1) != 0 || ((v17 ^ 1) & *(v15 + 56)) != 0)
        {
          v12 = 0;
          *(v3 + 56) = 0;
          LOBYTE(v16) = *(v15 + 57);
        }

        v18 = v14 | v16;
        *(v3 + 89) = v18 & 1;
        v19 = v17 | *(v15 + 56);
        *(v3 + 88) = v19 & 1;
        *(v3 + 92) |= *(v13 + v10 + 60);
        if (v18)
        {
          if ((*(v15 + 57) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if ((v19 & 1) == 0 || *(v15 + 56) != 1)
        {
          goto LABEL_13;
        }

        ++v12;
        *(v3 + 56) = vadd_f32(*(v13 + v10 + 24), *(v3 + 56));
LABEL_13:
        v20 = *(v3 + 52) | *(v13 + v10 + 20) & 0xFFFFFF7C;
        *(v3 + 52) = v20;
        v21 = *(v13 + v10 + 20);
        if ((v21 & 0x80) == 0)
        {
          *(v3 + 52) = v20 & 0xFFFFFF7F;
          v21 = *(v13 + v10 + 20);
        }

        if ((v21 & 3) != 0)
        {
          *(*(this + 16) + 104) = 1;
        }

        ++v11;
        v10 += 72;
        if (v11 >= (*(**(this + 17) + 40))(*(this + 17)))
        {
          goto LABEL_20;
        }
      }
    }

    v12 = 0;
LABEL_20:
    v22 = getInRangeEvents(*(this + 17));
    v23 = getInRangeEvents(*(this + 14));
    if (!v22)
    {
      *(v3 + 52) &= 0x200A3u;
    }

    if (v22 != v23)
    {
      *(v3 + 52) |= 0x20u;
    }

    if ((v22 != 0) == (v23 == 0))
    {
      *(v3 + 52) |= 1u;
    }

    v24 = hasTouchingEvents(*(this + 17));
    if (v24 != hasTouchingEvents(*(this + 14)))
    {
      *(v3 + 52) |= 2u;
    }

    if (v12 >= 2)
    {
      *result.i32 = v12;
      result = vdiv_f32(*(v3 + 56), vdup_lane_s32(result, 0));
      *(v3 + 56) = result;
    }

    v25 = *(this + 16);
    if ((*(v3 + 52) & 0xF0FBD7FF) != 0)
    {
      *(v25 + 104) = 1;
    }

    else if ((*(v25 + 104) & 1) == 0)
    {
      return result;
    }

    v26 = SALoggingGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(v3 + 48);
      v28 = (*(**(this + 17) + 40))(*(this + 17));
      v29 = *(v3 + 88);
      v30 = *(v3 + 89);
      v31 = *(v3 + 52);
      v32 = *(v3 + 56);
      v33 = *(v3 + 60);
      v34 = *(v3 + 40);
      v35 = *(v3 + 92);
      v36[0] = 67111169;
      v36[1] = v27;
      v37 = 1024;
      v38 = v28;
      v39 = 1024;
      v40 = v29;
      v41 = 1024;
      v42 = v30;
      v43 = 1024;
      v44 = v31;
      v45 = 2053;
      v46 = v32;
      v47 = 2053;
      v48 = v33;
      v49 = 1024;
      v50 = v34;
      v51 = 1024;
      v52 = v35;
      _os_log_debug_impl(&dword_2653C2000, v26, OS_LOG_TYPE_DEBUG, "EventGenerationStep: H%d fingers=%d -> range=%d touch=%d mask=0x%x x=%{sensitive}f y=%{sensitive}f GC=%d option_mask=0x%x\n", v36, 0x40u);
    }
  }

  return result;
}

uint64_t getInRangeEvents(const TouchService::TouchServiceEventCollection *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = (*(*(a1 + 4) + 8))(a1 + 32);
    v6 = 1 << *(v5 + v2 + 16);
    if (!*(v5 + v2 + 56))
    {
      v6 = 0;
    }

    v4 = v6 | v4;
    ++v3;
    v2 += 72;
  }

  while (v3 < (*(*a1 + 40))(a1));
  return v4;
}

uint64_t hasTouchingEvents(const TouchService::TouchServiceEventCollection *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  v2 = 0;
  v3 = 57;
  do
  {
    v4 = *((*(*(a1 + 4) + 8))(a1 + 32) + v3);
    if (v4 == 1)
    {
      break;
    }

    ++v2;
    v3 += 72;
  }

  while (v2 < (*(*a1 + 40))(a1));
  return v4;
}

uint64_t TouchService::EventGenerationStep::run(TouchService::EventGenerationStep *this)
{
  v2 = *(this + 14);
  if ((**(this + 20) & 1) == 0)
  {
    if ((*(*v2 + 40))(*(this + 14)))
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = (*(*(*(this + 14) + 32) + 8))() + v8;
        v12 = (v10 + 1);
        TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), v10 + 1);
        PathWithId = TouchService::PlainPathCollection::getPathWithId(*(this + 12), *(v11 + 12));
        v14 = (*(*(*(this + 17) + 32) + 8))();
        if (!TouchService::EventGenerationStep::generateFingerEvent(this, v11, PathWithId, v14 + 72 * v10, v15, v16, v17))
        {
          TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), v10);
          v12 = v10;
        }

        ++v9;
        v8 += 72;
        v10 = v12;
      }

      while (v9 < (*(**(this + 14) + 40))(*(this + 14)));
    }

    else
    {
      v12 = 0;
    }

    TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), v12);
    if (!(*(**(this + 12) + 40))(*(this + 12)))
    {
LABEL_18:
      TouchService::EventGenerationStep::generateHandEvent(this);
      return 0;
    }

    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = (*(*(*(this + 12) + 32) + 8))();
      if (!*(v20 + v18))
      {
        goto LABEL_16;
      }

      v21 = v20;
      if (TouchService::EventGenerationStep::isFingerInEvents(this, *(v20 + v18)))
      {
        goto LABEL_16;
      }

      v22 = (v12 + 1);
      TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), v12 + 1);
      v23 = (*(*(*(this + 17) + 32) + 8))();
      if (!TouchService::EventGenerationStep::generateFingerEvent(this, 0, (v21 + v18), v23 + 72 * v12, v24, v25, v26))
      {
        break;
      }

LABEL_17:
      ++v19;
      v18 += 48;
      v12 = v22;
      if (v19 >= (*(**(this + 12) + 40))(*(this + 12)))
      {
        goto LABEL_18;
      }
    }

    TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), v12);
LABEL_16:
    v22 = v12;
    goto LABEL_17;
  }

  PadHostService::PlainFireflyContactCollection::operator=(*(this + 17), v2);
  v3 = *(this + 16);
  v4 = *(this + 13);
  *(v3 + 32) = *(v4 + 32);
  v6 = *(v4 + 64);
  v5 = *(v4 + 80);
  v7 = *(v4 + 48);
  *(v3 + 96) = *(v4 + 96);
  *(v3 + 64) = v6;
  *(v3 + 80) = v5;
  *(v3 + 48) = v7;
  return 0;
}

void TouchService::EventGenerationStep::~EventGenerationStep(TouchService::EventGenerationStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void TouchService::EventGenerationStep::generateFingerEvent(unsigned __int8 *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[1];
  v5[0] = 67109632;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_2653C2000, a2, OS_LOG_TYPE_ERROR, "EventGenerationStep:  P%d F%d stage=%d invalid surface descriptor -> skipping", v5, 0x14u);
}

void TouchService::EventGenerationStep::generateFingerEvent(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 12);
  }

  else
  {
    v2 = -1;
  }

  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_2653C2000, a2, OS_LOG_TYPE_DEBUG, "EventGenerationStep:  Old P%d already gone", v3, 8u);
}

void PalmRejection::DetermineClustersForRejectionStep::DetermineClustersForRejectionStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AlgWorkNode::AlgWorkNode(a1, 0x33CB3AF598FD70BDLL);
  *v11 = &unk_2876F1C10;
  v11[10] = a2;
  v11[11] = a3;
  v11[12] = a4;
  v11[13] = a5;
  v11[14] = a6;
}

uint64_t PalmRejection::DetermineClustersForRejectionStep::run(PalmRejection::DetermineClustersForRejectionStep *this)
{
  v73 = *MEMORY[0x277D85DE8];
  v1 = *(this + 13);
  if (!*(v1 + 1148))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v6 = 0.0;
  do
  {
    v5 = *(this + 14);
    if (*(v5 + 4 * v3) > v6)
    {
      v6 = *(v5 + 4 * v3);
      v4 = v3;
    }

    ++v3;
  }

  while (v3 != 3);
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v7 = *(this + 12);
      *(v1 + 1521) = *(v7 + 8176) != 0;
      *(v1 + 1721) = *(v7 + 8244) != 0;
      *(v1 + 1520) = 1;
      *(v1 + 1720) = 1;
      if (*(v7 + 8436) == 1 && *(v1 + 1150) >= 2)
      {
        PassiveStylus3rdPartyDetection::identifyPassiveStylus(v7, v1);
      }
    }

    goto LABEL_44;
  }

  if (*(v1 + 1150) >= 2)
  {
    v8 = *(v1 + 1512);
    v9 = *(v1 + 1712);
    v10 = v8 <= v9;
    v11 = v1 + 1324 + 200 * (v8 > v9);
    *(v11 + 196) = 257;
    v12 = v1 + 1324 + 200 * (v8 <= v9);
    v13 = *(v12 + 160);
    v14 = *(v12 + 164);
    *buf = *(v12 + 88);
    *&buf[16] = *(v12 + 104);
    *&buf[32] = *(v12 + 120);
    ImageRectCoveringEllipse = PalmRejection::DetermineClustersForRejectionStep::getImageRectCoveringEllipse(this, buf, v13, v14);
    v16 = *(this + 12);
    if (*(v16 + 68 * v10 + 8176) == 1)
    {
      v17 = ImageRectCoveringEllipse;
      if (*(v1 + 1150) < 1)
      {
        v24 = 0;
        v21 = 0;
      }

      else
      {
        v18 = 0;
        v19 = v16 + 8292;
        do
        {
          v20 = v18;
          v21 = *(v19 + 2 * v18);
          v22 = *(v16 + 400 * *(v19 + 2 * v18++) + 384);
        }

        while (v22 != v10 && v18 < *(v1 + 1150));
        v24 = *(v16 + 8332 + 2 * v20);
      }

      v25 = v16 + 400 * v21;
      v26 = fminf(*(v25 + 344), *(v25 + 348));
      if (*(v12 + 184) < 0.3)
      {
        v27 = 0;
        if (*(v11 + 184) <= 0.6 || v26 <= 6500.0)
        {
LABEL_29:
          v28 = SALoggingGeneral();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v59 = *(v1 + 1724);
            v60 = *(v1 + 4 * v24 + 572);
            v61 = *(v12 + 184);
            v62 = *(v11 + 184);
            v63 = *(v1 + 900);
            *buf = 67110656;
            *&buf[4] = v27 & 1;
            *&buf[8] = 2048;
            *&buf[10] = v26;
            *&buf[18] = 2048;
            *&buf[20] = v59;
            *&buf[28] = 2048;
            *&buf[30] = v60;
            *&buf[38] = 2048;
            *v69 = v61;
            *&v69[8] = 2048;
            v70 = v62;
            v71 = 1024;
            v72 = v63;
            _os_log_debug_impl(&dword_2653C2000, v28, OS_LOG_TYPE_DEBUG, "eraser_detect=%d mindist=%.0f clusdist=%f  b222_cos=(%f %f %f),b222_active=%d\n", buf, 0x40u);
          }

          if (*(v25 + 368) - 6 < 8 || *(v1 + 1724) < 40000.0)
          {
            v29 = v17 & 0xFF000000 | (BYTE2(v17) << 16) | (BYTE1(v17) << 8) | v17;
            if (PalmRejUtil::isTwoRectOverlap(v29, *(*(this + 12) + 8428)))
            {
              if ((v27 & 1) == 0)
              {
                goto LABEL_35;
              }
            }

            else if (!(v27 & 1 | !PalmRejUtil::isTwoRectOverlap(v17 & 0xFF000000 | (BYTE2(v17) << 16) | (BYTE1(v17) << 8) | v17, *(*(this + 12) + 8432))))
            {
LABEL_35:
              v30 = HIBYTE(v17);
              v31 = BYTE2(v17);
              v32 = BYTE1(v17);
              v33 = v17;
              *(v12 + 196) = 257;
              if (PalmRejUtil::isTwoRectOverlap(v17 & 0xFF000000 | (BYTE2(v17) << 16) | (BYTE1(v17) << 8) | v17, *(*(this + 12) + 8428)))
              {
                v34 = SALoggingGeneral();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  v64 = *(*(this + 12) + 8428);
                  v65 = *(*(this + 12) + 8430);
                  v66 = *(*(this + 12) + 8429);
                  v67 = *(*(this + 12) + 8431);
                  *buf = 67110912;
                  *&buf[4] = v33;
                  *&buf[8] = 1024;
                  *&buf[10] = v31;
                  *&buf[14] = 1024;
                  *&buf[16] = v32;
                  *&buf[20] = 1024;
                  *&buf[22] = v30;
                  *&buf[26] = 1024;
                  *&buf[28] = v64;
                  *&buf[32] = 1024;
                  *&buf[34] = v65;
                  *&buf[38] = 1024;
                  *v69 = v66;
                  *&v69[4] = 1024;
                  *&v69[6] = v67;
                  _os_log_debug_impl(&dword_2653C2000, v34, OS_LOG_TYPE_DEBUG, "!!!!!!!!! Overlap found !!! (%d,%d) (%d,%d)  --  (%d,%d) (%d,%d)\n", buf, 0x32u);
                }
              }

              if (PalmRejUtil::isTwoRectOverlap(v29, *(*(this + 12) + 8432)))
              {
                v35 = SALoggingGeneral();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  v36 = *(*(this + 12) + 8432);
                  v37 = *(*(this + 12) + 8434);
                  v38 = *(*(this + 12) + 8433);
                  v39 = *(*(this + 12) + 8435);
                  *buf = 67110912;
                  *&buf[4] = v33;
                  *&buf[8] = 1024;
                  *&buf[10] = v31;
                  *&buf[14] = 1024;
                  *&buf[16] = v32;
                  *&buf[20] = 1024;
                  *&buf[22] = v30;
                  *&buf[26] = 1024;
                  *&buf[28] = v36;
                  *&buf[32] = 1024;
                  *&buf[34] = v37;
                  *&buf[38] = 1024;
                  *v69 = v38;
                  *&v69[4] = 1024;
                  *&v69[6] = v39;
                  _os_log_debug_impl(&dword_2653C2000, v35, OS_LOG_TYPE_DEBUG, "!!!!!!!!! Overlap found !!! (%d,%d) (%d,%d)  --  (%d,%d) (%d,%d)\n", buf, 0x32u);
                }
              }

              goto LABEL_44;
            }
          }

          v40 = SALoggingGeneral();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            PalmRejection::DetermineClustersForRejectionStep::run(v40);
          }

          goto LABEL_44;
        }

        if (*(v1 + 1724) > 70000.0 && *(v1 + 4 * v24 + 572) < 0.1)
        {
          v27 = *(v1 + 900);
          goto LABEL_29;
        }
      }

      v27 = 0;
      goto LABEL_29;
    }
  }

LABEL_44:
  v41 = *(v1 + 1148);
  if (v41 <= 0)
  {
    v42 = *(this + 12);
  }

  else
  {
    v42 = *(this + 12);
    v43 = 8252;
    do
    {
      v44 = v42 + 400 * *(v42 + v43);
      if (*(v44 + 160) - 3 <= 1 && *(v44 + 372) < -6.9078)
      {
        *(v1 + 1324 + 200 * *(v44 + 384) + 196) = 1;
      }

      v43 += 2;
      --v41;
    }

    while (v41);
  }

  if (!*(v42 + 8176))
  {
    *(v1 + 1520) = 0;
  }

  if (!*(v42 + 8244))
  {
    *(v1 + 1720) = 0;
  }

  v45 = 0;
  v46 = 0;
  v47 = 1;
  do
  {
    v48 = v47;
    v49 = v1 + 1324 + 200 * v45;
    if (*(v49 + 196) == 1)
    {
      v50 = *(v49 + 160);
      v51 = *(v49 + 164);
      *buf = *(v49 + 88);
      *&buf[16] = *(v49 + 104);
      *&buf[32] = *(v49 + 120);
      v52 = PalmRejection::DetermineClustersForRejectionStep::getImageRectCoveringEllipse(this, buf, v50, v51);
    }

    else
    {
      v52 = 0;
    }

    *(*(this + 12) + 4 * v45 + 8428) = v52;
    if (*(v49 + 196) == 1)
    {
      v53 = SALoggingGeneral();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = *(*(this + 12) + 4 * v45 + 8428);
        v55 = *(*(this + 12) + 4 * v45 + 8430);
        v56 = *(*(this + 12) + 4 * v45 + 8429);
        v57 = *(*(this + 12) + 4 * v45 + 8431);
        *buf = 67110144;
        *&buf[4] = v46;
        *&buf[8] = 1024;
        *&buf[10] = v54;
        *&buf[14] = 1024;
        *&buf[16] = v55;
        *&buf[20] = 1024;
        *&buf[22] = v56;
        *&buf[26] = 1024;
        *&buf[28] = v57;
        _os_log_impl(&dword_2653C2000, v53, OS_LOG_TYPE_INFO, "%1d: (%d,%d)  (%d,%d)\n", buf, 0x20u);
      }
    }

    v47 = 0;
    v45 = 1;
    v46 = 1;
  }

  while ((v48 & 1) != 0);
  return 0;
}

uint64_t PalmRejection::DetermineClustersForRejectionStep::getImageRectCoveringEllipse(uint64_t a1, float *a2, float a3, float a4)
{
  v4 = a2;
  v8 = __sincosf_stret(*a2);
  v9 = v4[1];
  v10 = v4[2];
  v11 = v9 * v8.__cosval;
  v12 = v9 * v8.__sinval;
  v13 = -(v8.__sinval * v10);
  v14 = v8.__cosval * v10;
  *&v21 = a3 + v11;
  *(&v21 + 1) = a4 + v12;
  v22 = v21;
  v20[0] = a3 - v11;
  v20[1] = a4 - v12;
  PalmRejUtil::expandRectWithPoint(&v21, &v22, v20);
  v19[0] = a3 + v13;
  v19[1] = a4 + v14;
  PalmRejUtil::expandRectWithPoint(&v21, &v22, v19);
  v18[0] = a3 - v13;
  v18[1] = a4 - v14;
  PalmRejUtil::expandRectWithPoint(&v21, &v22, v18);
  LODWORD(v4) = fmaxf(PalmRejection::PalmRejSurfaceUtil::Xpos2Bcol(*(a1 + 80), *&v21), 0.0);
  v15 = fmaxf(PalmRejection::PalmRejSurfaceUtil::Xpos2Bcol(*(a1 + 80), *&v22), 0.0);
  v16 = fmaxf(PalmRejection::PalmRejSurfaceUtil::Ypos2Brow(*(a1 + 80), *(&v21 + 1)), 0.0);
  return (v4 << 16) | (v15 << 24) | (fmaxf(PalmRejection::PalmRejSurfaceUtil::Ypos2Brow(*(a1 + 80), *(&v22 + 1)), 0.0) << 8) | v16;
}

void PalmRejection::DetermineClustersForRejectionStep::~DetermineClustersForRejectionStep(PalmRejection::DetermineClustersForRejectionStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PalmRejection::DetermineClustersForRejectionStep::run(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "@@@@@@@@ No Overlap= @@@@@@@@@@@@\n";
  _os_log_debug_impl(&dword_2653C2000, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

AlgWorkNode *PadFireflyService::PTWEventGenerationStep::PTWEventGenerationStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AlgWorkNode::AlgWorkNode(a1, 0xD5E03AC6B361824ALL);
  *v8 = &unk_2876F1C60;
  v8[10] = a3;
  v8[11] = a4;
  v8[12] = a2;
  AlgWorkNode::registerAlgDataNode((v8 + 1), a3);
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 11));
  return a1;
}

uint64_t PadFireflyService::PTWEventGenerationStep::run(PadFireflyService::PTWEventGenerationStep *this)
{
  v2 = *(this + 10);
  v1 = *(this + 11);
  if (*(v2 + 28) == 1)
  {
    *(v1 + 120) = 1;
    v3 = *(this + 12);
    *(v1 + 40) = *(v3 + 8);
    *(v1 + 32) = *(v3 + 16);
    *(v1 + 88) = 257;
    *(v1 + 52) = 131074;
    *(v1 + 56) = *(v2 + 36);
    v4 = SALoggingGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      PadFireflyService::PTWEventGenerationStep::run(v4);
    }
  }

  else
  {
    *(v1 + 120) = 0;
  }

  return 0;
}

void PadFireflyService::PTWEventGenerationStep::~PTWEventGenerationStep(PadFireflyService::PTWEventGenerationStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::PlainPathCollection::PlainPathCollection(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AlgDataNode::AlgDataNode(a1, a2, 1);
  *v6 = &unk_2876F1CB0;
  *(v6 + 32) = &unk_2876F1CF8;
  *(v6 + 40) = a3;
  *(v6 + 16) = 12288;
  v7 = (48 * a3) | 4u;
  *(a1 + 44) = v7;
  v8 = operator new(v7);
  *(a1 + 48) = v8;
  v9 = *(a1 + 44);
  *(a1 + 24) = v9;
  bzero(v8, v9);
  **(a1 + 48) = 0;
  *(*(a1 + 48) + 2) = 0;
  return a1;
}

void TouchService::PlainPathCollection::~PlainPathCollection(TouchService::PlainPathCollection *this)
{
  *this = &unk_2876F1CB0;
  *(this + 4) = &unk_2876F1CF8;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C807B5B4437);
  }

  *this = &unk_2876F3810;
}

{
  TouchService::PlainPathCollection::~PlainPathCollection(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::PlainPathCollection::getPathWithId(TouchService::PlainPathCollection *this, int a2)
{
  v4 = this + 32;
  if (!(*(*this + 40))(this))
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = (*(*v4 + 8))(v4);
    if (*(v7 + v5) == a2)
    {
      break;
    }

    ++v6;
    v5 += 48;
    if (v6 >= (*(*this + 40))(this))
    {
      return 0;
    }
  }

  return v7 + v5;
}

uint64_t TouchService::PlainPathCollection::sendCallback(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = *(a1 + 48);
  *(a3 + 56) = v3;
  *(a3 + 48) = (48 * *v3) | 4;
  return a2(a3);
}

AlgWorkNode *TouchService::TapEventGenerationStep::TapEventGenerationStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AlgWorkNode::AlgWorkNode(a1, 0xAECDF4068B8EECD4);
  *v8 = &unk_2876F1D60;
  v8[10] = a3;
  v8[11] = a4;
  v8[12] = a2;
  AlgWorkNode::registerAlgDataNode((v8 + 1), a3);
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 11));
  return a1;
}

uint64_t TouchService::TapEventGenerationStep::run(TouchService::TapEventGenerationStep *this)
{
  v2 = *(this + 10);
  v1 = *(this + 11);
  if (*(v2 + 28) == 1)
  {
    v3 = *(this + 12);
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    *(v1 + 88) = 257;
    v6 = *(v2 + 36);
    v7 = 1.0 - *(v2 + 40);
    *(v1 + 104) = 1;
    *(v1 + 40) = v4;
    *(v1 + 32) = v5;
    *(v1 + 52) = 131074;
    *(v1 + 56) = v6;
    *(v1 + 60) = v7;
    v8 = SALoggingGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      TouchService::TapEventGenerationStep::run(v8);
    }
  }

  else
  {
    *(v1 + 104) = 0;
  }

  return 0;
}

void Device0x039KonaFireflyCalBlobHandler::Device0x039KonaFireflyCalBlobHandler(AlgDataNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *(v16 + 32) = a4;
  *(v16 + 40) = a3;
  *(v16 + 16) = 1;
  *(v16 + 24) = 7492;
  *v16 = &unk_2876F1DB0;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a7;
  *(v16 + 72) = a8;
  *(v16 + 80) = a9;
  *(v16 + 88) = a10;
}

float32x4_t Device0x039KonaFireflyCalBlobHandler::injectBuffer(float32x4_t **this, unsigned __int8 *a2)
{
  ((*this)[2].i64[1])(this);
  if (!this[4]->i8[0])
  {
    Device0x039KonaFireflyCalBlobHandler::loadBloomingParams(this, a2, result.f32[0]);
    Device0x039KonaFireflyCalBlobHandler::loadThresholdParams(this, a2);
    v5 = this[8];
    v5->i16[1] = *(a2 + 1757) >> 1;
    v5->i16[3] = *(a2 + 1758) >> 1;
    v5->i16[5] = *(a2 + 1759) >> 1;
    v5->i16[7] = *(a2 + 1760) >> 1;
    Device0x039KonaFireflyCalBlobHandler::loadMeasurementParams(this, a2);
    Device0x039KonaFireflyCalBlobHandler::loadLutParams(this, a2);
    v6 = this[11];
    v7 = *(a2 + 3662);
    v8.i64[0] = 0x3800000038000000;
    v8.i64[1] = 0x3800000038000000;
    v9 = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(*(a2 + 3646))), v8);
    *v6 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*(a2 + 3646))), v8);
    v6[1] = v9;
    result = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v7)), v8);
    v6[2] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v7.i8)), v8);
    v6[3] = result;
  }

  return result;
}

uint64_t Device0x039KonaFireflyCalBlobHandler::loadBloomingParams(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 48);
  v4 = *v3;
  if (*v3)
  {
    v5 = result;
    v6 = 0;
    v26 = a2 + 7483;
    v25 = a2 + 7469;
    v7 = a2 + 6902;
    v24 = a2 + 7476;
    v8 = a2 + 7462;
    v9 = a2 + 6482;
    do
    {
      if (*(v3 + 17))
      {
        v10 = 0;
        v11 = (1 << *(v26 + v6));
        LOBYTE(a3) = *(v25 + v6);
        v12 = LODWORD(a3);
        do
        {
          LOBYTE(a3) = *(v7 + v10);
          v13 = ((v11 - LODWORD(a3)) + v12) / v11;
          v15 = *(v3 + 5);
          v14 = v3 + 40;
          v16 = (*(v15 + 8))(v14);
          result = (*(*v14 + 24))(v14);
          *(v16 + 4 * (v10++ + v6 * result)) = v13;
          v3 = *(v5 + 48);
        }

        while (v10 < *(v3 + 17));
      }

      if (*(v3 + 33))
      {
        v17 = 0;
        v18 = (1 << *(v24 + v6));
        LOBYTE(a3) = *(v8 + v6);
        v19 = LODWORD(a3);
        do
        {
          LOBYTE(a3) = *(v9 + v17);
          v20 = ((v18 - LODWORD(a3)) + v19) / v18;
          v22 = *(v3 + 13);
          v21 = v3 + 104;
          v23 = (*(v22 + 8))(v21);
          result = (*(*v21 + 24))(v21);
          *(v23 + 4 * (v17++ + v6 * result)) = v20;
          v3 = *(v5 + 48);
        }

        while (v17 < *(v3 + 33));
      }

      ++v6;
      v7 += 80;
      v9 += 60;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t Device0x039KonaFireflyCalBlobHandler::loadThresholdParams(uint64_t result, _WORD *a2)
{
  v2 = *(result + 56);
  v2[4] = a2[1761] >> 1;
  *v2 = a2[1769] >> 1;
  v2[8] = a2[1765] >> 1;
  v2[5] = a2[1762] >> 1;
  v2[1] = a2[1770] >> 1;
  v2[9] = a2[1766] >> 1;
  v2[6] = a2[1763] >> 1;
  v2[2] = a2[1771] >> 1;
  v2[10] = a2[1767] >> 1;
  v2[7] = a2[1764] >> 1;
  v2[3] = a2[1772] >> 1;
  v2[11] = a2[1768] >> 1;
  return result;
}

uint64_t Device0x039KonaFireflyCalBlobHandler::loadMeasurementParams(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 72);
  if (v2[228])
  {
    v3 = (a2 + 3560);
    v4 = a2 + 3638;
    v5 = 3638;
    v6 = 72;
    do
    {
      v7 = vcvtd_n_f64_u32(*(v3 - 7), 1uLL) * 0.0009765625;
      v8 = &v2[v6];
      *(v8 - 9) = v7;
      v9 = *v3++;
      *&v10 = vcvtd_n_f64_u32(v9, 1uLL) * 0.0009765625;
      *v8 = *&v10;
      v2[v5 - 3490] = *(v4 - 60);
      v2[v5 - 3472] = *(v4 - 46);
      v2[v5 - 3481] = *(v4 - 53);
      v2[v5 - 3463] = *(v4 - 39);
      v2[v5 - 3530] = *(v4 - 28);
      v2[v5 - 3512] = *(v4 - 14);
      v2[v5 - 3521] = *(v4 - 21);
      v2[v5 - 3503] = *(v4 - 7);
      LOBYTE(v10) = *v4;
      *(v8 - 18) = (v10 * -0.0039062) + 1.0;
      v11 = v5 - 3637;
      ++v5;
      v6 += 4;
      ++v4;
    }

    while (v11 < *(*(result + 72) + 228));
  }

  v2[144] = a2[3574];
  v2[146] = a2[3576];
  v2[145] = a2[3575];
  v2[147] = a2[3577];
  return result;
}

uint64_t Device0x039KonaFireflyCalBlobHandler::loadLutParams(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  if (*(v2 + 632) == 1)
  {
    v3 = *(v2 + 635);
  }

  else
  {
    v3 = 1;
  }

  v4 = *(result + 40);
  v5 = (v4[7] / v4[8]) * 1000.0;
  v6 = *(a2 + 3678);
  *(v2 + 4) = v5 / (v6 - 1);
  *v2 = v6;
  if (v3)
  {
    v37 = result;
    v38 = v2;
    v7 = 0;
    v8 = v2 + 56;
    v40 = a2;
    v41 = a2 + 3682;
    v39 = v3;
    v9 = v3;
    do
    {
      v10 = (*(*v8 + 8))(v8);
      *(v10 + 4 * (*(*v8 + 24))(v8) * v7) = 0;
      v11 = (*(*v8 + 8))(v8);
      result = (*(*v8 + 24))(v8);
      *(v11 + 4 * (v6 - 1 + result * v7)) = 0;
      if (v6 >= 4)
      {
        v12 = 0;
        v13 = 1;
        v14 = v6 - 2;
        do
        {
          v15 = (v5 * *(v41 + 400 * v7 + 2 * v12)) / 32767.0;
          v16 = (*(*v8 + 8))(v8);
          *(v16 + 4 * (v13 + v7 * (*(*v8 + 24))(v8))) = v15;
          v17 = (*(*v8 + 8))(v8);
          v18 = -*(v17 + 4 * (v13 + v7 * (*(*v8 + 24))(v8)));
          v19 = (*(*v8 + 8))(v8);
          result = (*(*v8 + 24))(v8);
          *(v19 + 4 * (v14 + v7 * result)) = v18;
          ++v12;
          --v14;
          ++v13;
        }

        while ((v6 - 2 + (((v6 - 2) & 0x8000) >> 15)) >> 1 > v12);
      }

      if (v6)
      {
        v20 = (*(*v8 + 8))(v8);
        result = (*(*v8 + 24))(v8);
        *(v20 + 4 * ((v6 >> 1) + result * v7)) = 0;
      }

      ++v7;
    }

    while (v7 != v9);
    v2 = v38;
    v4 = *(v37 + 40);
    a2 = v40;
    v3 = v39;
  }

  v21 = (v4[5] / v4[6]) * 1000.0;
  v22 = *(a2 + 3679);
  *(v2 + 8) = v21 / (v22 - 1);
  *(v2 + 1) = v22;
  if (v3)
  {
    v23 = 0;
    v24 = v2 + 120;
    v42 = a2 + 3682;
    v25 = v3;
    do
    {
      v26 = (*(*v24 + 8))(v24);
      *(v26 + 4 * (*(*v24 + 24))(v24) * v23) = 0;
      v27 = (*(*v24 + 8))(v24);
      result = (*(*v24 + 24))(v24);
      *(v27 + 4 * (v22 - 1 + result * v23)) = 0;
      if (v22 >= 4)
      {
        v28 = 0;
        v29 = 1;
        v30 = v22 - 2;
        do
        {
          v31 = (v21 * *(v42 + 400 * v23 + 2 * v28 + 100)) / 32767.0;
          v32 = (*(*v24 + 8))(v24);
          *(v32 + 4 * (v29 + v23 * (*(*v24 + 24))(v24))) = v31;
          v33 = (*(*v24 + 8))(v24);
          v34 = -*(v33 + 4 * (v29 + v23 * (*(*v24 + 24))(v24)));
          v35 = (*(*v24 + 8))(v24);
          result = (*(*v24 + 24))(v24);
          *(v35 + 4 * (v30 + v23 * result)) = v34;
          ++v28;
          --v30;
          ++v29;
        }

        while ((v22 - 2 + (((v22 - 2) & 0x8000) >> 15)) >> 1 > v28);
      }

      if (v22)
      {
        v36 = (*(*v24 + 8))(v24);
        result = (*(*v24 + 24))(v24);
        *(v36 + 4 * ((v22 >> 1) + result * v23)) = 0;
      }

      ++v23;
    }

    while (v23 != v25);
  }

  return result;
}

void Device0x038KonaFireflyCalBlobHandler::Device0x038KonaFireflyCalBlobHandler(AlgDataNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *(v16 + 32) = a4;
  *(v16 + 40) = a3;
  *(v16 + 16) = 1;
  *(v16 + 24) = 7492;
  *v16 = &unk_2876F1E08;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a7;
  *(v16 + 72) = a8;
  *(v16 + 80) = a9;
  *(v16 + 88) = a10;
}

float32x4_t Device0x038KonaFireflyCalBlobHandler::injectBuffer(Device0x038KonaFireflyCalBlobHandler *this, unsigned __int8 *a2)
{
  (*(*this + 40))(this);
  if (!**(this + 4))
  {
    Device0x039KonaFireflyCalBlobHandler::loadBloomingParams(this, a2, result.f32[0]);
    Device0x039KonaFireflyCalBlobHandler::loadThresholdParams(this, a2);
    v5 = *(this + 8);
    v5[1] = *(a2 + 1757) >> 1;
    v5[3] = *(a2 + 1758) >> 1;
    v5[5] = *(a2 + 1759) >> 1;
    v5[7] = *(a2 + 1760) >> 1;
    Device0x039KonaFireflyCalBlobHandler::loadMeasurementParams(this, a2);
    Device0x039KonaFireflyCalBlobHandler::loadLutParams(this, a2);
    v6 = *(this + 11);
    v7 = *(a2 + 3662);
    v8.i64[0] = 0x3800000038000000;
    v8.i64[1] = 0x3800000038000000;
    v9 = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(*(a2 + 3646))), v8);
    *v6 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*(a2 + 3646))), v8);
    v6[1] = v9;
    result = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v7)), v8);
    v6[2] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v7.i8)), v8);
    v6[3] = result;
  }

  return result;
}

void Device0x039P100CalBlobHandler::Device0x039P100CalBlobHandler(AlgDataNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *(v12 + 32) = a4;
  *(v12 + 40) = a3;
  *(v12 + 16) = 1;
  *(v12 + 24) = 1848;
  *v12 = &unk_2876F1E60;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
}

uint64_t Device0x039P100CalBlobHandler::injectBuffer(Device0x039P100CalBlobHandler *this, const unsigned __int8 *a2)
{
  result = (*(*this + 40))(this);
  if (!**(this + 4))
  {
    Device0x038P100CalBlobHandler::loadBloomingParams(this, a2, v5);
    Device0x038P100CalBlobHandler::loadMeasurementParams(this, a2);

    return Device0x038P100CalBlobHandler::loadLutParams(this, a2);
  }

  return result;
}

uint64_t PadFireflyService::FFEventGenerationStep::FFEventGenerationStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v20 = &unk_2876F1EB8;
  *(v20 + 80) = a3;
  *(v20 + 88) = a4;
  *(v20 + 96) = a6;
  *(v20 + 104) = a7;
  *(v20 + 112) = a8;
  *(v20 + 120) = a13;
  *(v20 + 128) = a10;
  *(v20 + 136) = a11;
  *(v20 + 144) = a5;
  *(v20 + 152) = a9;
  *(v20 + 160) = a12;
  AlgDataNode::AlgDataNode((v20 + 168), 0x805190046C2676AALL, 0);
  *(a1 + 168) = &unk_2876F1F08;
  *(a1 + 184) = 20489;
  *(a1 + 192) = 8;
  *(a1 + 200) = 0;
  PadFireflyService::FFEventGenerationStep::runNodeRegistrations(a1);
  return a1;
}

{
  return PadFireflyService::FFEventGenerationStep::FFEventGenerationStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_2653E8F98(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void *PadFireflyService::FFEventGenerationStep::runNodeRegistrations(PadFireflyService::FFEventGenerationStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 10));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 11));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 13));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 8, this + 168);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 16));
  v2 = *(this + 17);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

BOOL PadFireflyService::FFEventGenerationStep::isFingerInEvents(PadFireflyService::FFEventGenerationStep *this, int a2)
{
  if (!(*(**(this + 17) + 40))(*(this + 17)))
  {
    return 0;
  }

  v4 = 0;
  v5 = 12;
  do
  {
    v6 = *((*(*(*(this + 17) + 32) + 8))() + v5);
    v7 = v6 == a2;
    if (v6 == a2)
    {
      break;
    }

    ++v4;
    v5 += 88;
  }

  while (v4 < (*(**(this + 17) + 40))(*(this + 17)));
  return v7;
}

BOOL PadFireflyService::FFEventGenerationStep::generateFingerEvent(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, uint64_t a4, double a5, double a6, double a7)
{
  v94 = *MEMORY[0x277D85DE8];
  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v8 = *(a1 + 144);
  *a4 = *v8;
  *(a4 + 8) = *(v8 + 8);
  if (!a3)
  {
    v34 = SALoggingGeneral();
    result = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    PadFireflyService::FFEventGenerationStep::generateFingerEvent(a2, v34);
    return 0;
  }

  v11 = *(a1 + 88);
  v12 = v11[8];
  if (v12 <= 0.0 || (v13 = v11[7], v13 <= 0.0))
  {
    v35 = SALoggingGeneral();
    result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    PadFireflyService::FFEventGenerationStep::generateFingerEvent(a3, v35);
    return 0;
  }

  *&a7 = (v12 / 1000.0) * 1000.0;
  *(a4 + 12) = *a3;
  v15 = a3[2];
  *(a4 + 16) = v15;
  v16 = *(*(a1 + 80) + 28);
  if (!v16)
  {
    v16 = 2000;
  }

  v17 = v16;
  v18 = ((25400.0 / v17) * ((*(a3 + 1) - v11[9]) / (25400.0 / v17))) / v13;
  *(a4 + 24) = v18;
  v19 = 1.0 - (((25400.0 / v17) * ((*(a3 + 2) - v11[10]) / (25400.0 / v17))) / v12);
  *(a4 + 28) = v19;
  v20 = *(a3 + 15);
  *(a4 + 72) = v20;
  *(a4 + 76) = *(a3 + 12);
  *(a4 + 32) = vrev64_s32(vdiv_f32(*(a3 + 20), vdup_lane_s32(*&a7, 0)));
  *(a4 + 40) = *(a1 + 152) / *&a7;
  *(a4 + 44) = *(a3 + 4);
  *(a4 + 52) = *(a3 + 7);
  v21 = a3[1];
  v22 = v21 - 3;
  v23 = (v21 - 3) < 2;
  *(a4 + 57) = v23;
  v24 = v21 - 1;
  v25 = (v21 - 1) < 6;
  *(a4 + 56) = v25;
  v26 = *(a3 + 22);
  v27 = TouchService::EventGenerationStep::attributesFromFlags(v26);
  *(a4 + 20) = v27;
  *(a4 + 80) = v26;
  if (*(*(a1 + 120) + 28) == 1)
  {
    v27 |= 0x20000u;
    *(a4 + 20) = v27;
  }

  if (a2)
  {
    if ((a2[56] & 1) == 0 && v24 >= 6)
    {
      v28 = SALoggingGeneral();
      result = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v30 = *(a4 + 12);
      v31 = *(a4 + 16);
      v32 = a3[1];
      v60 = 67109632;
      *v61 = v30;
      *&v61[4] = 1024;
      *&v61[6] = v31;
      *v62 = 1024;
      *&v62[2] = v32;
      v33 = "FFEventGenerationStep:  P%d F%d stage=%d already gone -> skipping";
LABEL_39:
      _os_log_debug_impl(&dword_2653C2000, v28, OS_LOG_TYPE_DEBUG, v33, &v60, 0x14u);
      return 0;
    }
  }

  else
  {
    if (v24 >= 6)
    {
      v28 = SALoggingGeneral();
      result = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v39 = *(a4 + 12);
      v40 = *(a4 + 16);
      v41 = a3[1];
      v60 = 67109632;
      *v61 = v39;
      *&v61[4] = 1024;
      *&v61[6] = v40;
      *v62 = 1024;
      *&v62[2] = v41;
      v33 = "FFEventGenerationStep:  New P%d F%d stage=%d not in range -> skipping";
      goto LABEL_39;
    }

    a2 = &PadFireflyService::FFEventGenerationStep::generateFingerEvent(SADigitizerStylusEventPacket const*,SAFireflyContact const*,SADigitizerStylusEventPacket&)::empty_finger;
  }

  v36 = *(a2 + 5);
  if (((v36 ^ v27) & 0xF042800) != 0)
  {
    v27 |= 0x40u;
    *(a4 + 20) = v27;
    v36 = *(a2 + 5);
  }

  if ((v36 & 0x20000) != 0)
  {
    v27 |= 0x20000u;
    *(a4 + 20) = v27;
  }

  v37 = a2[56];
  if (v37 != v25)
  {
    v27 |= 1u;
    *(a4 + 20) = v27;
  }

  if (a2[57] != v23)
  {
    v27 |= 2u;
    *(a4 + 20) = v27;
  }

  if (v37)
  {
    if (*(a2 + 4) != v15)
    {
      v27 |= 0x20u;
      *(a4 + 20) = v27;
    }

    if (v22 <= 1 && (v18 != *(a2 + 6) || v19 != *(a2 + 7) || v20 != *(a2 + 18)))
    {
      *(a4 + 20) = v27 | 4;
    }
  }

  v38 = SALoggingGeneral();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v42 = a3[1];
    v43 = *(a4 + 56);
    v44 = *(a4 + 57);
    if (a2 == &PadFireflyService::FFEventGenerationStep::generateFingerEvent(SADigitizerStylusEventPacket const*,SAFireflyContact const*,SADigitizerStylusEventPacket&)::empty_finger)
    {
      v45 = "New ";
    }

    else
    {
      v45 = "";
    }

    v46 = *(a4 + 16);
    v47 = *(a4 + 20);
    v48 = *(a3 + 1);
    v49 = *(a3 + 2);
    v50 = *(a4 + 24);
    v51 = *(a4 + 28);
    v52 = *(a4 + 72);
    v53 = *(a4 + 36);
    v54 = *(a4 + 32);
    v55 = *(a4 + 76);
    v56 = *(a4 + 48);
    v57 = *(a4 + 44);
    v59 = *(a4 + 8);
    v58 = *(a4 + 12);
    v60 = 136319491;
    *v61 = v45;
    *&v61[8] = 1024;
    *v62 = v58;
    *&v62[4] = 1024;
    v63 = v46;
    v64 = 1024;
    v65 = v42;
    v66 = 1024;
    v67 = v43;
    v68 = 1024;
    v69 = v44;
    v70 = 1024;
    v71 = v47;
    v72 = 2053;
    v73 = v48;
    v74 = 2053;
    v75 = v49;
    v76 = 2053;
    v77 = v50;
    v78 = 2053;
    v79 = v51;
    v80 = 2053;
    v81 = v52;
    v82 = 2048;
    v83 = v53;
    v84 = 2048;
    v85 = v54;
    v86 = 2048;
    v87 = v55;
    v88 = 2048;
    v89 = v56;
    v90 = 2048;
    v91 = v57;
    v92 = 1024;
    v93 = v59;
    _os_log_debug_impl(&dword_2653C2000, v38, OS_LOG_TYPE_DEBUG, "FFEventGenerationStep:  %sP%d -> F%d stage=%d range=%d touch=%d mask=0x%x pos_um=(%{sensitive}.3f,%{sensitive}.3f) x=%{sensitive}.8f y=%{sensitive}.8f z=%{sensitive}.8f majorR=%f minorR=%f altitude=%f density=%f quality=%f GC=%d\n", &v60, 0x9Au);
  }

  return 1;
}

double PadFireflyService::FFEventGenerationStep::generateHandEvent(PadFireflyService::FFEventGenerationStep *this)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *(this + 16);
  v2 = *(this + 17);
  *(v3 + 120) = 0;
  if ((*(*v2 + 40))(v2))
  {
    v5 = *(this + 13);
    v6 = *(v5 + 64);
    v7 = *(v5 + 80);
    v8 = *(v5 + 96);
    *(v3 + 112) = *(v5 + 112);
    *(v3 + 80) = v7;
    *(v3 + 96) = v8;
    *(v3 + 64) = v6;
    v9 = *(v5 + 48);
    *(v3 + 32) = *(v5 + 32);
    *(v3 + 48) = v9;
    v10 = *(this + 18);
    *(v3 + 40) = *(v10 + 8);
    *(v3 + 32) = *(v10 + 16);
    *(v3 + 48) = 0x8000000001;
    *(v3 + 88) = 0;
    if ((*(**(this + 17) + 40))(*(this + 17)))
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = (*(*(*(this + 17) + 32) + 8))();
        v14 = *(v3 + 89);
        v15 = v13 + v11;
        v16 = *(v13 + v11 + 57);
        v17 = *(v3 + 88);
        if (((v14 ^ 1) & v16 & 1) != 0 || ((v17 ^ 1) & *(v15 + 56)) != 0)
        {
          *(v3 + 56) = 0;
          LOBYTE(v16) = *(v15 + 57);
        }

        *(v3 + 89) = (v14 | v16) & 1;
        v18 = v17 | *(v15 + 56);
        *(v3 + 88) = v18 & 1;
        v19 = *(v3 + 52) | *(v13 + v11 + 20) & 0xFFFFFF7C;
        *(v3 + 52) = v19;
        v20 = *(v13 + v11 + 20);
        if ((v20 & 0x80) == 0)
        {
          *(v3 + 52) = v19 & 0xFFFFFF7F;
          v20 = *(v13 + v11 + 20);
        }

        if (((v20 & 3) != 0) | v18 & 1)
        {
          *(*(this + 16) + 120) = 1;
        }

        ++v12;
        v11 += 88;
      }

      while (v12 < (*(**(this + 17) + 40))(*(this + 17)));
    }

    v21 = getInRangeEvents(*(this + 17));
    v22 = getInRangeEvents(*(this + 14));
    if (!v21)
    {
      *(v3 + 52) &= 0x200A3u;
    }

    if (v21 != v22)
    {
      *(v3 + 52) |= 0x20u;
    }

    if ((v21 != 0) == (v22 == 0))
    {
      *(v3 + 52) |= 1u;
    }

    v23 = hasTouchingEvents(*(this + 17));
    v24 = hasTouchingEvents(*(this + 14));
    v25 = *(v3 + 52);
    if (v23 != v24)
    {
      v25 |= 2u;
      *(v3 + 52) = v25;
    }

    v26 = *(this + 16);
    if ((v25 & 0xF0FBD7FF) != 0)
    {
      *(v26 + 120) = 1;
    }

    else if ((*(v26 + 120) & 1) == 0)
    {
      return result;
    }

    v27 = SALoggingGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(v3 + 48);
      v29 = (*(**(this + 17) + 40))(*(this + 17));
      v30 = *(v3 + 88);
      v31 = *(v3 + 89);
      v32 = *(v3 + 52);
      v33 = *(v3 + 56);
      v34 = *(v3 + 60);
      v35 = *(v3 + 40);
      v36[0] = 67110913;
      v36[1] = v28;
      v37 = 1024;
      v38 = v29;
      v39 = 1024;
      v40 = v30;
      v41 = 1024;
      v42 = v31;
      v43 = 1024;
      v44 = v32;
      v45 = 2053;
      v46 = v33;
      v47 = 2053;
      v48 = v34;
      v49 = 1024;
      v50 = v35;
      _os_log_debug_impl(&dword_2653C2000, v27, OS_LOG_TYPE_DEBUG, "FFEventGenerationStep: H%d fingers=%d -> range=%d touch=%d mask=0x%x x=%{sensitive}f y=%{sensitive}f GC=%d\n", v36, 0x3Au);
    }
  }

  return result;
}

uint64_t getInRangeEvents(void *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = (*(a1[4] + 8))(a1 + 4);
    v6 = 1 << *(v5 + v2 + 16);
    if (!*(v5 + v2 + 56))
    {
      v6 = 0;
    }

    v4 = v6 | v4;
    ++v3;
    v2 += 88;
  }

  while (v3 < (*(*a1 + 40))(a1));
  return v4;
}

uint64_t hasTouchingEvents(void *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  v2 = 0;
  v3 = 57;
  do
  {
    v4 = *((*(a1[4] + 8))(a1 + 4) + v3);
    if (v4 == 1)
    {
      break;
    }

    ++v2;
    v3 += 88;
  }

  while (v2 < (*(*a1 + 40))(a1));
  return v4;
}

uint64_t PadFireflyService::FFEventGenerationStep::run(PadFireflyService::FFEventGenerationStep *this)
{
  v2 = *(this + 14);
  if (**(this + 20) != 1)
  {
    if ((*(*v2 + 40))(*(this + 14)))
    {
      v9 = (*(*(*(this + 14) + 32) + 8))();
      v10 = (*(*(*(this + 12) + 32) + 8))();
      v11 = 1;
      TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), 1);
      v12 = (*(*(*(this + 17) + 32) + 8))();
      if (PadFireflyService::FFEventGenerationStep::generateFingerEvent(this, v9, v10, v12, v13, v14, v15))
      {
LABEL_7:
        TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), v11);
        if (!(*(**(this + 12) + 40))(*(this + 12)))
        {
LABEL_15:
          PadFireflyService::FFEventGenerationStep::generateHandEvent(this);
          return 0;
        }

        v16 = 0;
        v17 = 0;
        while (1)
        {
          v18 = (*(*(*(this + 12) + 32) + 8))();
          if (!*(v18 + v16))
          {
            goto LABEL_13;
          }

          v19 = v18;
          if (PadFireflyService::FFEventGenerationStep::isFingerInEvents(this, *(v18 + v16)))
          {
            goto LABEL_13;
          }

          v20 = (v11 + 1);
          TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), v11 + 1);
          v21 = (*(*(*(this + 17) + 32) + 8))();
          if (!PadFireflyService::FFEventGenerationStep::generateFingerEvent(this, 0, (v19 + v16), v21 + 88 * v11, v22, v23, v24))
          {
            break;
          }

LABEL_14:
          ++v17;
          v16 += 64;
          v11 = v20;
          if (v17 >= (*(**(this + 12) + 40))(*(this + 12)))
          {
            goto LABEL_15;
          }
        }

        TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), v11);
LABEL_13:
        v20 = v11;
        goto LABEL_14;
      }

      TouchService::TouchServiceEventCollection::setNumEvents(*(this + 17), 0);
    }

    v11 = 0;
    goto LABEL_7;
  }

  PadHostService::PlainFireflyContactCollection::operator=(*(this + 17), v2);
  v3 = *(this + 16);
  v4 = *(this + 13);
  v6 = *(v4 + 80);
  v5 = *(v4 + 96);
  v7 = *(v4 + 64);
  *(v3 + 112) = *(v4 + 112);
  *(v3 + 80) = v6;
  *(v3 + 96) = v5;
  *(v3 + 64) = v7;
  v8 = *(v4 + 48);
  *(v3 + 32) = *(v4 + 32);
  *(v3 + 48) = v8;
  return 0;
}

void PadFireflyService::FFEventGenerationStep::~FFEventGenerationStep(PadFireflyService::FFEventGenerationStep *this)
{
  *this = &unk_2876F1EB8;
  *(this + 21) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F1EB8;
  *(this + 21) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadFireflyService::FFEventGenerationStep::generateFingerEvent(unsigned __int8 *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[1];
  v5[0] = 67109632;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_2653C2000, a2, OS_LOG_TYPE_ERROR, "FFEventGenerationStep:  P%d F%d stage=%d invalid surface descriptor -> skipping", v5, 0x14u);
}

void PadFireflyService::FFEventGenerationStep::generateFingerEvent(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 12);
  }

  else
  {
    v2 = -1;
  }

  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_2653C2000, a2, OS_LOG_TYPE_DEBUG, "FFEventGenerationStep:  Old P%d already gone", v3, 8u);
}

uint64_t PalmRejection::PalmRejectionTask::PalmRejectionTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *v13 = &unk_2876F1F58;
  v13[13] = a7;
  v13[14] = a3;
  v13[15] = a4;
  v13[16] = a5;
  v14 = (v13 + 17);
  AlgDataNode::AlgDataNode((v13 + 17), 0xF1290350D661C265, 0);
  *(a1 + 164) = 0u;
  *(a1 + 136) = &unk_2876F1FD0;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 152) = 31242;
  *(a1 + 160) = 48;
  AlgDataNode::AlgDataNode((a1 + 216));
  *(a1 + 244) = 0;
  *(a1 + 216) = &unk_2876F0108;
  *(a1 + 232) = 20480;
  *(a1 + 240) = 1;
  PlainDataNode<PalmRejection::PalmRejTaskParams>::PlainDataNode((a1 + 10528), 0x9AB3BB709348C027, 0, 0);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 12544), 0x4F002B3B04AB7324, 3u, 0);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 12600), 0xFA53BF60883DAA26, 2u, 0);
  PalmRejection::PalmRejSurfaceUtil::PalmRejSurfaceUtil((a1 + 12656), a1 + 164);
  PalmRejection::ParseContactDataStep::ParseContactDataStep((a1 + 12664), a1 + 12656, *(a1 + 128), a1 + 10556, *(a1 + 112), a1 + 244, a1 + 248, a1 + 10488);
  PalmRejection::ParseB222DataStep::ParseB222DataStep((a1 + 12808), *(a1 + 120), a1 + 248);
  PalmRejection::UpdateClassificationBasicFeatureStep::UpdateClassificationBasicFeatureStep((a1 + 12904), a1 + 12656, a1 + 10556, *(a1 + 112), a1 + 248, a1 + 8688);
  PalmRejection::UpdatePalmRejectionFeaturesStep::UpdatePalmRejectionFeaturesStep((a1 + 13024), a1 + 10556, a1 + 248, a1 + 8688);
  PalmRejection::ClusterWithGaussianMixtureModelStep::ClusterWithGaussianMixtureModelStep((a1 + 13128), a1 + 10556, a1 + 248, a1 + 8688);
  PalmRejection::GetClusterLevelFeaturesStep::GetClusterLevelFeaturesStep((a1 + 13232), a1 + 10556, a1 + 248, a1 + 8688);
  PalmRejection::CalculateMetaClassifierProbabilitiesStep::CalculateMetaClassifierProbabilitiesStep((a1 + 13336), a1 + 10556, a1 + 248, a1 + 8688, a1 + 10476);
  PalmRejection::DetermineClustersForRejectionStep::DetermineClustersForRejectionStep((a1 + 13448), a1 + 12656, a1 + 10556, a1 + 248, a1 + 8688, a1 + 10476);
  PalmRejection::UpdatePathAssignedFingerStep::UpdatePathAssignedFingerStep((a1 + 13568), a1 + 10556, a1 + 8688, a1 + 248);
  PalmRejection::UpdateTouchHoverDetectionFlagsStep::UpdateTouchHoverDetectionFlagsStep((a1 + 13680), a1 + 248);
  PalmRejection::UpdatePathsForPalmRejectionStep::UpdatePathsForPalmRejectionStep((a1 + 13768), a1 + 248, a1 + 10488, *(a1 + 128));
  PalmRejection::PalmRejectionTask::genPalmRejSurfInfo(v15, a6, v14);
  *(a1 + 244) = 1;
  bzero((a1 + 248), 0x20F8uLL);
  v16 = 0;
  v17 = (a1 + 312);
  do
  {
    *(v17 - 8) = v16;
    *v17 = 5000;
    ++v16;
    v17 += 100;
  }

  while (v16 != 20);
  *(a1 + 8628) = -1;
  *(a1 + 10488) = 0u;
  *(a1 + 10504) = 0u;
  *(a1 + 10520) = 0;
  bzero((a1 + 8688), 0x6FCuLL);
  SA1DArrayBase<float>::fill(a1 + 12576, 0.0);
  SA1DArrayBase<float>::fill(a1 + 12632, 0.0);
  PalmRejection::PalmRejectionTask::runNodeRegistrations(a1);
  return a1;
}

void sub_2653EA3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  AlgWorkNode::~AlgWorkNode((v10 + v13));
  AlgWorkNode::~AlgWorkNode((v10 + v14));
  AlgWorkNode::~AlgWorkNode((v10 + v15));
  AlgWorkNode::~AlgWorkNode((v10 + 1667));
  AlgWorkNode::~AlgWorkNode((v10 + 1654));
  AlgWorkNode::~AlgWorkNode((v10 + 1641));
  AlgWorkNode::~AlgWorkNode((v10 + 1628));
  AlgWorkNode::~AlgWorkNode((v10 + 1613));
  AlgWorkNode::~AlgWorkNode((v10 + 1601));
  AlgWorkNode::~AlgWorkNode((v10 + 1583));
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v10 + 1575);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v10 + 1568);
  *a10 = &unk_2876F3810;
  *v12 = &unk_2876F3810;
  *v11 = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v10);
  _Unwind_Resume(a1);
}

__n128 PalmRejection::PalmRejectionTask::genPalmRejSurfInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a2 + 196);
  v3 = *(a2 + 32);
  result.n128_u64[1] = *(a2 + 48);
  *(a3 + 28) = *(a2 + 224);
  *(a3 + 44) = result;
  *(a3 + 60) = v3;
  return result;
}

uint64_t PalmRejection::PalmRejectionTask::runNodeRegistrations(PalmRejection::PalmRejectionTask *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 16));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 15));
  AlgWorkNode::registerAlgDataNode(this + 8, this + 136);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 16));
  AlgWorkNode::registerAlgDataNode(this + 56, this + 10528);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 12544);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 12600);
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 12664));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 12808));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 12904));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 13024));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 13128));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 13232));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 13336));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 13448));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 13568));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 13680));

  return ConditionalInjExtAndTaskNode::registerChild(this, (this + 13768));
}

uint64_t PalmRejection::PalmRejectionTask::runAfterChildren(PalmRejection::PalmRejectionTask *this)
{
  v2 = this + 12576;
  v3 = this + 10476;
  v4 = (*(*(this + 1572) + 8))(this + 12576);
  v5 = (**(this + 1572))(v2);
  if (v4 != v3)
  {
    memcpy(v4, v3, 4 * v5);
  }

  v6 = *(this + 2608);
  *(*(*(this + 1579) + 8))(this + 12632) = v6;
  v7 = *(this + 2609);
  *((*(*(this + 1579) + 8))(this + 12632) + 4) = v7;
  return 0;
}

__n128 PlainDataNode<PalmRejSurfaceInfo>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 60) = *(a2 + 32);
  *(a1 + 44) = v3;
  *(a1 + 28) = result;
  return result;
}

double PlainDataNode<PalmRejection::PalmRejTaskParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  v4 = (a1 + 1972);
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v5 = &unk_2876F2020;
  *(v5 + 32) = xmmword_2655A8AE0;
  *(v5 + 48) = 0x434C000041B80000;
  *(v5 + 56) = 0x44FA0000003C000FLL;
  *(v5 + 64) = -1761607560;
  *(v5 + 68) = 20;
  *(v5 + 72) = 0x42F000003D4CCCCDLL;
  *(v5 + 80) = 800;
  *(v5 + 84) = xmmword_2655A8AF0;
  *(v5 + 100) = xmmword_2655A8B00;
  *(v5 + 132) = unk_2655A8B9C;
  *(v5 + 148) = xmmword_2655A8BAC;
  *(v5 + 164) = unk_2655A8BBC;
  *(v5 + 180) = xmmword_2655A8BCC;
  *(v5 + 116) = xmmword_2655A8B8C;
  *(v5 + 212) = unk_2655A8BEC;
  *(v5 + 228) = xmmword_2655A8BFC;
  *(v5 + 244) = unk_2655A8C0C;
  *(v5 + 260) = xmmword_2655A8C1C;
  *(v5 + 196) = xmmword_2655A8BDC;
  *(v5 + 308) = xmmword_2655A8C4C;
  *(v5 + 324) = unk_2655A8C5C;
  *(v5 + 340) = xmmword_2655A8C6C;
  *(v5 + 276) = xmmword_2655A8C2C;
  *(v5 + 292) = unk_2655A8C3C;
  *(v5 + 404) = xmmword_2655A8CAC;
  *(v5 + 420) = unk_2655A8CBC;
  *(v5 + 372) = xmmword_2655A8C8C;
  *(v5 + 388) = unk_2655A8C9C;
  *(v5 + 356) = xmmword_2655A8C7C;
  *(v5 + 452) = xmmword_2655A8CDC;
  *(v5 + 468) = unk_2655A8CEC;
  *(v5 + 436) = xmmword_2655A8CCC;
  *(v5 + 500) = unk_2655A8D0C;
  *(v5 + 516) = xmmword_2655A8D1C;
  *(v5 + 484) = xmmword_2655A8CFC;
  *(v5 + 532) = xmmword_2655A8D2C;
  *(v5 + 548) = unk_2655A8D3C;
  *(v5 + 608) = *(&xmmword_2655A8D6C + 12);
  *(v5 + 624) = xmmword_2655A8D88;
  *(v5 + 580) = unk_2655A8D5C;
  *(v5 + 596) = xmmword_2655A8D6C;
  *(v5 + 564) = xmmword_2655A8D4C;
  *(v5 + 700) = *(&xmmword_2655A8DC8 + 12);
  *(v5 + 672) = unk_2655A8DB8;
  *(v5 + 688) = xmmword_2655A8DC8;
  *(v5 + 640) = unk_2655A8D98;
  *(v5 + 656) = xmmword_2655A8DA8;
  *(v5 + 716) = xmmword_2655A8DE4;
  *(v5 + 732) = unk_2655A8DF4;
  *(v5 + 792) = *(&xmmword_2655A8E24 + 12);
  *(v5 + 764) = unk_2655A8E14;
  *(v5 + 780) = xmmword_2655A8E24;
  *(v5 + 748) = xmmword_2655A8E04;
  *(v5 + 808) = xmmword_2655A8E40;
  *(v5 + 824) = unk_2655A8E50;
  *(v5 + 884) = *(&xmmword_2655A8E80 + 12);
  *(v5 + 856) = unk_2655A8E70;
  *(v5 + 872) = xmmword_2655A8E80;
  *(v5 + 840) = xmmword_2655A8E60;
  *(v5 + 900) = xmmword_2655A8E9C;
  *(v5 + 916) = unk_2655A8EAC;
  *(v5 + 976) = *(&xmmword_2655A8EDC + 12);
  *(v5 + 992) = xmmword_2655A8EF8;
  *(v5 + 948) = unk_2655A8ECC;
  *(v5 + 964) = xmmword_2655A8EDC;
  *(v5 + 932) = xmmword_2655A8EBC;
  *(v5 + 1068) = *(&xmmword_2655A8F38 + 12);
  *(v5 + 1056) = xmmword_2655A8F38;
  *(v5 + 1040) = unk_2655A8F28;
  *(v5 + 1008) = unk_2655A8F08;
  *(v5 + 1024) = xmmword_2655A8F18;
  *(v5 + 1228) = 1068904212;
  *(v5 + 1116) = xmmword_2655A8F74;
  *(v5 + 1132) = unk_2655A8F84;
  *(v5 + 1084) = xmmword_2655A8F54;
  *(v5 + 1100) = unk_2655A8F64;
  *(v5 + 1196) = xmmword_2655A8FC4;
  *(v5 + 1212) = unk_2655A8FD4;
  *(v5 + 1164) = unk_2655A8FA4;
  *(v5 + 1180) = xmmword_2655A8FB4;
  *(v5 + 1148) = xmmword_2655A8F94;
  *(v5 + 1376) = 1067707300;
  *(v5 + 1312) = unk_2655A9038;
  *(v5 + 1328) = xmmword_2655A9048;
  *(v5 + 1344) = unk_2655A9058;
  *(v5 + 1360) = xmmword_2655A9068;
  *(v5 + 1248) = unk_2655A8FF8;
  *(v5 + 1264) = xmmword_2655A9008;
  *(v5 + 1280) = unk_2655A9018;
  *(v5 + 1296) = xmmword_2655A9028;
  *(v5 + 1232) = xmmword_2655A8FE8;
  *(v5 + 1524) = -1074425077;
  *(v5 + 1476) = xmmword_2655A90DC;
  *(v5 + 1492) = unk_2655A90EC;
  *(v5 + 1508) = xmmword_2655A90FC;
  *(v5 + 1412) = xmmword_2655A909C;
  *(v5 + 1428) = unk_2655A90AC;
  *(v5 + 1444) = xmmword_2655A90BC;
  *(v5 + 1460) = unk_2655A90CC;
  *(v5 + 1380) = xmmword_2655A907C;
  *(v5 + 1396) = unk_2655A908C;
  *(v5 + 1672) = -1090103579;
  *(v5 + 1624) = xmmword_2655A9170;
  *(v5 + 1640) = unk_2655A9180;
  *(v5 + 1656) = xmmword_2655A9190;
  *(v5 + 1560) = xmmword_2655A9130;
  *(v5 + 1576) = unk_2655A9140;
  *(v5 + 1592) = xmmword_2655A9150;
  *(v5 + 1608) = unk_2655A9160;
  *(v5 + 1528) = xmmword_2655A9110;
  *(v5 + 1544) = unk_2655A9120;
  *(v5 + 1820) = 1062673280;
  *(v5 + 1772) = xmmword_2655A9204;
  *(v5 + 1788) = unk_2655A9214;
  *(v5 + 1804) = xmmword_2655A9224;
  *(v5 + 1708) = xmmword_2655A91C4;
  *(v5 + 1724) = unk_2655A91D4;
  *(v5 + 1740) = xmmword_2655A91E4;
  *(v5 + 1756) = unk_2655A91F4;
  *(v5 + 1676) = xmmword_2655A91A4;
  *(v5 + 1692) = unk_2655A91B4;
  *(v5 + 1968) = 1070994065;
  *(v5 + 1904) = unk_2655A9288;
  *(v5 + 1920) = xmmword_2655A9298;
  *(v5 + 1936) = unk_2655A92A8;
  *(v5 + 1952) = xmmword_2655A92B8;
  *(v5 + 1840) = unk_2655A9248;
  *(v5 + 1856) = xmmword_2655A9258;
  *(v5 + 1872) = unk_2655A9268;
  *(v5 + 1888) = xmmword_2655A9278;
  *(v5 + 1824) = xmmword_2655A9238;
  result = 4.29812848e30;
  *v4 = xmmword_2655A8B10;
  v4[1] = xmmword_2655A8B20;
  *(v5 + 2004) = 0x40C0000040800000;
  *(v5 + 16) = 31240;
  *(v5 + 24) = 1984;
  return result;
}

uint64_t PadTouchService::PadTouchCoreAnalyticsStep::PadTouchCoreAnalyticsStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AlgWorkNode::AlgWorkNode(a1, 0xEB37F23032EE8AAALL);
  *v14 = &unk_2876F2070;
  v14[10] = a2;
  v14[12] = a3;
  v14[13] = a5;
  v14[14] = a4;
  AlgDataNode::AlgDataNode((v14 + 15), 0xA720C48ED5CC5E3FLL, 0);
  *(a1 + 148) = 0;
  *(a1 + 136) = 20482;
  *(a1 + 144) = 1;
  *(a1 + 120) = &unk_2876F20C0;
  AlgDataNode::AlgDataNode((a1 + 152), 0xD9D3ED1C43A2146DLL, 0);
  *(a1 + 152) = &unk_2876EFB10;
  *(a1 + 168) = 20481;
  *(a1 + 176) = 4;
  AlgDataNode::AlgDataNode((a1 + 184), 0x50A20CCB5AAB3407, 0);
  *(a1 + 184) = &unk_2876F01A8;
  *(a1 + 212) = 0;
  *(a1 + 200) = 20482;
  *(a1 + 208) = 1;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 216), 0x4495165EC2CFC6D8, 10, 7, 0, 0);
  AlgDataNode::AlgDataNode((a1 + 280), 0x2E9C9D30C526552BLL, 0);
  *(a1 + 280) = &unk_2876F01A8;
  *(a1 + 308) = 0;
  *(a1 + 296) = 20482;
  *(a1 + 304) = 1;
  AlgDataNode::AlgDataNode((a1 + 312), 0x301D5D5BF8411CF6, 0);
  *(a1 + 312) = &unk_2876F01A8;
  *(a1 + 340) = 0;
  *(a1 + 328) = 20482;
  *(a1 + 336) = 1;
  *(a1 + 344) = a6;
  *(a1 + 352) = a7;
  AlgDataNode::AlgDataNode((a1 + 512), 0x9B6A84D4334B576ELL, 0);
  *(a1 + 544) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 560) = 0;
  *(a1 + 544) = 1537;
  *(a1 + 528) = 39424;
  *(a1 + 536) = 0x500100000020;
  *(a1 + 512) = &unk_2876F2110;
  *(a1 + 576) = &unk_2876F2158;
  AlgDataNode::AlgDataNode((a1 + 584), 0xE3E425184701A5CLL, 0);
  *(a1 + 616) = 769;
  *(a1 + 628) = 0;
  *(a1 + 620) = 0;
  *(a1 + 600) = 39424;
  *(a1 + 608) = 0x500100000014;
  *(a1 + 584) = &unk_2876F21C8;
  *(a1 + 632) = &unk_2876F2210;
  AlgDataNode::AlgDataNode((a1 + 640), 0xC4DF75E001D21E8, 0);
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 672) = 1793;
  *(a1 + 656) = 39424;
  *(a1 + 664) = 0x500600000024;
  *(a1 + 640) = &unk_2876F2280;
  *(a1 + 704) = &unk_2876F22C8;
  AlgDataNode::AlgDataNode((a1 + 712), 0x4A576B4E50A36D43, 0);
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 744) = 1793;
  *(a1 + 728) = 39424;
  *(a1 + 736) = 0x500600000024;
  *(a1 + 712) = &unk_2876F2280;
  *(a1 + 776) = &unk_2876F22C8;
  AlgDataNode::AlgDataNode((a1 + 784), 0xA2AE1535D05CAEDFLL, 0);
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 816) = 2049;
  *(a1 + 800) = 39424;
  *(a1 + 808) = 0x500600000028;
  *(a1 + 784) = &unk_2876F2348;
  *(a1 + 856) = &unk_2876F2390;
  AlgDataNode::AlgDataNode((a1 + 864), 0xDF27796590ADB68ELL, 0);
  *(a1 + 864) = &unk_2876EFB10;
  *(a1 + 880) = 20481;
  *(a1 + 888) = 4;
  AlgDataNode::AlgDataNode((a1 + 896), 0x5BA5F62F23528D68, 0);
  *(a1 + 928) = 1025;
  *(a1 + 932) = 0u;
  *(a1 + 912) = 39424;
  *(a1 + 920) = 0x500600000018;
  *(a1 + 896) = &unk_2876F2400;
  *(a1 + 952) = &unk_2876F2448;
  AlgDataNode::AlgDataNode((a1 + 960), 0x7C06238969A06BLL, 0);
  *(a1 + 1024) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 992) = 2305;
  *(a1 + 976) = 39424;
  *(a1 + 984) = 0x50010000002CLL;
  *(a1 + 960) = &unk_2876F24B8;
  *(a1 + 1032) = &unk_2876F2500;
  AlgDataNode::AlgDataNode((a1 + 1040), 0x9D5460ECD582C876, 0);
  *(a1 + 1072) = 0u;
  *(a1 + 1232) = 0;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 10241;
  *(a1 + 1056) = 39424;
  *(a1 + 1064) = 0x5001000000A8;
  *(a1 + 1040) = &unk_2876F2570;
  *(a1 + 1240) = &unk_2876F25B8;
  AlgDataNode::AlgDataNode((a1 + 1248), 0x551E27B719F669ABLL, 0);
  *(a1 + 1280) = 5121;
  *(a1 + 1300) = 0;
  *(a1 + 1284) = 0u;
  *(a1 + 1264) = 39424;
  *(a1 + 1272) = 0x50020000001CLL;
  *(a1 + 1248) = &unk_2876F2628;
  *(a1 + 1304) = &unk_2876F2670;
  PadTouchService::PadTouchCoreAnalyticsStep::resetState(a1);
  PadTouchService::PadTouchCoreAnalyticsStep::runNodeRegistrations(a1);
  return a1;
}

void sub_2653EB448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  *v21 = &unk_2876F3810;
  *v20 = &unk_2876F3810;
  *v19 = &unk_2876F3810;
  *v18 = &unk_2876F3810;
  *v17 = &unk_2876F3810;
  *v23 = &unk_2876F3810;
  *v22 = &unk_2876F3810;
  *a10 = &unk_2876F3810;
  *a11 = &unk_2876F3810;
  *a12 = &unk_2876F3810;
  *a13 = &unk_2876F3810;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v16 + 27);
  *a14 = &unk_2876F3810;
  *a15 = &unk_2876F3810;
  *a16 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v16);
  _Unwind_Resume(a1);
}

void PadTouchService::PadTouchCoreAnalyticsStep::resetState(PadTouchService::PadTouchCoreAnalyticsStep *this)
{
  *(this + 148) = -1;
  *(this + 45) = 0;
  *(this + 212) = 0;
  SA1DArrayBase<float>::fill(this + 248, 0.0);
  *(this + 360) = 0;
  *(this + 11) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  SA1DArrayBase<float>::fill(this + 576, 0.0);
  SA1DArrayBase<float>::fill(this + 632, 0.0);
  v2 = (*(*(this + 97) + 8))(this + 776);
  v3 = (**(this + 97))(this + 776);
  bzero(v2, 4 * v3);
  v4 = (*(*(this + 88) + 8))(this + 704);
  v5 = (**(this + 88))(this + 704);
  bzero(v4, 4 * v5);
  v6 = (*(*(this + 107) + 8))(this + 856);
  v7 = (**(this + 107))(this + 856);
  bzero(v6, 4 * v7);
  *(this + 223) = 0;
  v8 = (*(*(this + 119) + 8))(this + 952);
  v9 = (**(this + 119))(this + 952);
  bzero(v8, 4 * v9);
  SA1DArrayBase<float>::fill(this + 1032, 0.0);
  SA1DArrayBase<float>::fill(this + 1240, 0.0);
  v10 = (*(*(this + 163) + 8))(this + 1304);
  v11 = (**(this + 163))(this + 1304);

  bzero(v10, v11);
}

void *PadTouchService::PadTouchCoreAnalyticsStep::runNodeRegistrations(PadTouchService::PadTouchCoreAnalyticsStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, this + 120);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 152);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 184);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 216);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 280);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 312);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 512);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 584);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 640);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 712);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 784);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 864);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 896);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 960);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 1040);

  return AlgWorkNode::registerAlgDataNode(this + 40, this + 1248);
}

void PadTouchService::PadTouchCoreAnalyticsStep::~PadTouchCoreAnalyticsStep(PadTouchService::PadTouchCoreAnalyticsStep *this)
{
  *this = &unk_2876F2070;
  *(this + 156) = &unk_2876F3810;
  *(this + 130) = &unk_2876F3810;
  *(this + 120) = &unk_2876F3810;
  *(this + 112) = &unk_2876F3810;
  *(this + 108) = &unk_2876F3810;
  *(this + 98) = &unk_2876F3810;
  *(this + 89) = &unk_2876F3810;
  *(this + 80) = &unk_2876F3810;
  *(this + 73) = &unk_2876F3810;
  *(this + 64) = &unk_2876F3810;
  *(this + 39) = &unk_2876F3810;
  *(this + 35) = &unk_2876F3810;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 27);
  *(this + 23) = &unk_2876F3810;
  *(this + 19) = &unk_2876F3810;
  *(this + 15) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  PadTouchService::PadTouchCoreAnalyticsStep::~PadTouchCoreAnalyticsStep(this);

  JUMPOUT(0x266758590);
}

float PadTouchService::PadTouchCoreAnalyticsStep::generatePatchCoverageOverPanelStats(PadTouchService::PadTouchCoreAnalyticsStep *this, float result)
{
  if (*(this + 173) == 1)
  {
    result = *(this + 45);
    if (result > 0.0 && result <= 34.0)
    {
      v5 = 0;
LABEL_17:
      v6 = (*(*(this + 79) + 8))(this + 632);
      result = *(v6 + 4 * v5) + 0.0083333;
      *(v6 + 4 * v5) = result;
      return result;
    }

    if (result > 34.0 && result <= 67.0)
    {
      v5 = 1;
      goto LABEL_17;
    }

    if (result > 67.0 && result <= 100.0)
    {
      v5 = 2;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t PadTouchService::PadTouchCoreAnalyticsStep::updateFFSPADirtyStats(uint64_t this, int a2)
{
  v3 = this;
  v4 = 0;
  v5 = this + 776;
  v6 = this + 704;
  do
  {
    if (((1 << v4) & a2) != 0)
    {
      if (((1 << v4) & *(v3 + 360)) != 0)
      {
        v7 = (**(v3 + 80) - *(v3 + 88)) / 0x3E8uLL;
        this = (*(*(v3 + 776) + 8))(v5);
        v8 = *(this + 4 * v4) + v7;
      }

      else
      {
        this = (*(*v6 + 8))(v6);
        v8 = *(this + 4 * v4) + 1;
      }

      *(this + 4 * v4) = v8;
    }

    ++v4;
  }

  while (v4 != 7);
  return this;
}

__n128 PadTouchService::PadTouchCoreAnalyticsStep::updateFFSPADirtyStatsExtended(PadTouchService::PadTouchCoreAnalyticsStep *this)
{
  v1 = vdupq_n_s32(*(this + 360));
  v2 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v1, xmmword_2655A9310)), vceqzq_s32(vandq_s8(v1, xmmword_2655A9320))));
  *v2.i8 = vand_s8(vmovn_s16(v2), 0x101010101010101);
  v2.i8[7] = 0;
  v2.i8[0] = vaddv_s8(*v2.i8);
  v6 = v2;
  v3 = (**(this + 10) - *(this + 11)) / 0x3E8uLL;
  v4 = (*(*(this + 107) + 8))(this + 856);
  result = v6;
  *(v4 + 4 * v6.n128_u8[0]) += v3;
  return result;
}

void PadTouchService::PadTouchCoreAnalyticsStep::generateFFSPADirtyStats(PadTouchService::PadTouchCoreAnalyticsStep *this)
{
  if (*(this + 205) == 1)
  {
    v2 = *(this + 212);
    PadTouchService::PadTouchCoreAnalyticsStep::updateFFSPADirtyStats(this, v2);
    PadTouchService::PadTouchCoreAnalyticsStep::updateFFSPADirtyStatsExtended(this);
    *(this + 360) = v2;
    *(this + 11) = **(this + 10);
  }
}

_BYTE *PadTouchService::PadTouchCoreAnalyticsStep::generateTouchDurationStats(PadTouchService::PadTouchCoreAnalyticsStep *this)
{
  result = *(this + 12);
  if (result[21] == 1)
  {
    result = (*(*result + 40))(result);
    if (result)
    {
      v3 = 0;
      v4 = 0;
      v5 = this + 368;
      do
      {
        v6 = ((*(*(*(this + 12) + 32) + 8))() + v3);
        v7 = v6[1];
        if (v7 == 3)
        {
          *&v5[8 * *v6] = **(this + 10);
        }

        else
        {
          v8 = *&v5[8 * *v6];
          v9 = v6[2];
          if (v7 != 5 || v8 == 0 || v9 < 6)
          {
            goto LABEL_34;
          }

          v12 = (**(this + 10) - v8) / 1000000.0;
          if (v12 > *(this + 223))
          {
            *(this + 223) = v12;
          }

          v13 = v12 / 60.0;
          if (v13 > 1.0 && v13 <= 3.0)
          {
            v17 = 0;
LABEL_33:
            v18 = (*(*(this + 119) + 8))(this + 952);
            ++*(v18 + 4 * v17);
            goto LABEL_34;
          }

          if (v13 > 3.0 && v13 <= 5.0)
          {
            v17 = 1;
            goto LABEL_33;
          }

          if (v13 > 5.0 && v13 <= 10.0)
          {
            v17 = 2;
            goto LABEL_33;
          }

          if (v13 > 10.0)
          {
            v17 = 3;
            goto LABEL_33;
          }
        }

LABEL_34:
        ++v4;
        result = (*(**(this + 12) + 40))(*(this + 12));
        v3 += 48;
      }

      while (v4 < result);
    }
  }

  return result;
}

uint64_t PadTouchService::PadTouchCoreAnalyticsStep::generateThermalRegionDurationStats(uint64_t this)
{
  if (*(this + 237) == 1)
  {
    v1 = *(this + 272);
    if (v1 << 16)
    {
      v2 = 0;
      v3 = *(this + 276);
      v4 = v3;
      v5 = this + 248;
      v18 = v3 << 16;
      v6 = v3 / 3;
      v7 = v1 / 3;
      v8 = this + 1032;
      if (v1 <= 1)
      {
        v1 = 1;
      }

      else
      {
        v1 = v1;
      }

      v16 = v7;
      v17 = v1;
      if (v4 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v4;
      }

      do
      {
        v10 = (*(*v5 + 8))(v5);
        this = (*(*v5 + 24))(v5);
        if (v18)
        {
          v11 = 0;
          v12 = v10 + 4 * this * v2;
          do
          {
            if (fabsf(*(v12 + 4 * v11)) > 10.0)
            {
              v13 = v11 / v6;
              if ((v11 / v6) >= 2)
              {
                v13 = 2;
              }

              if ((v2 / v16) >= 2)
              {
                v14 = 2;
              }

              else
              {
                v14 = v2 / v16;
              }

              v15 = 3 * v14 + v13;
              if (v15 <= 8)
              {
                this = (*(*v8 + 8))(v8);
                *(this + 4 * v15) = *(this + 4 * v15) + 0.0083333;
              }
            }

            ++v11;
          }

          while (v9 != v11);
        }

        ++v2;
      }

      while (v2 != v17);
    }
  }

  return this;
}

float PadTouchService::PadTouchCoreAnalyticsStep::computeDTISpan(PadTouchService::PadTouchCoreAnalyticsStep *this, const float *a2, int a3)
{
  if (!a3)
  {
    return -INFINITY;
  }

  v3 = 0;
  v4 = INFINITY;
  v5 = -INFINITY;
  do
  {
    v6 = fabsf(a2[2] + ((a2[1] * v3) + (*a2 * (v3 * v3))));
    if (v6 > v5)
    {
      v5 = v6;
    }

    if (v6 < v4)
    {
      v4 = v6;
    }

    ++v3;
  }

  while (a3 > v3);
  return v5 - v4;
}

uint64_t PadTouchService::PadTouchCoreAnalyticsStep::generatePencilDtiDurationStats(uint64_t this)
{
  if (*(*(this + 104) + 28) == 1)
  {
    v1 = this;
    v2 = 0;
    v3 = this + 1240;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = *(v1 + 112);
      v7 = *(v6 + 2 * v2 + 24);
      if (*(v6 + v2 + 56) == 1 && v7 <= 5)
      {
        v9 = 0;
        v10 = PadTouchService::PadTouchCoreAnalyticsStep::computeDTISpan(this, (v6 + 12 * v2), *(v6 + 28)) * *(v6 + 4 * v7 + 32);
        do
        {
          if (PadTouchService::FFDtiStatsBinRightEdgeRawDrive[v9] >= v10)
          {
            break;
          }

          ++v9;
        }

        while (v9 != 33);
        v11 = (*(*v3 + 8))(v3);
        *(v11 + 4 * v9) = *(v11 + 4 * v9) + 0.0041667;
        v12 = (*(*v3 + 8))(v3);
        *(v12 + 4 * v7 + 136) = *(v12 + 4 * v7 + 136) + 0.0041667;
        this = (*(*v3 + 8))(v3);
        if (v10 > *(this + 132))
        {
          this = (*(*v3 + 8))(v3);
          *(this + 132) = v10;
        }
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);
  }

  return this;
}

uint64_t PadTouchService::PadTouchCoreAnalyticsStep::generateCalblobErrorInAlgsStats(PadTouchService::PadTouchCoreAnalyticsStep *this)
{
  if (*(this + 301) == 1)
  {
    v2 = this + 1304;
    for (i = 10; i != 15; ++i)
    {
      *((*(*v2 + 8))(this + 1304) + i) = 0;
    }

    v4 = *(this + 308);
    if (v4 <= 3)
    {
      if (!*(this + 308))
      {
        v5 = 13;
        goto LABEL_15;
      }

      if (v4 != 1)
      {
        goto LABEL_16;
      }

      *((*(*v2 + 8))(this + 1304) + 14) = 1;
    }

    else if (v4 != 4)
    {
      if (v4 != 8)
      {
        if (v4 != 255)
        {
          goto LABEL_16;
        }

        v5 = 12;
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    *((*(*v2 + 8))(this + 1304) + 11) = 1;
LABEL_13:
    v5 = 10;
LABEL_15:
    *((*(*v2 + 8))(this + 1304) + v5) = 1;
  }

LABEL_16:
  if (*(this + 333) != 1)
  {
    goto LABEL_31;
  }

  v6 = this + 1304;
  for (j = 15; j != 20; ++j)
  {
    *((*(*v6 + 8))(this + 1304) + j) = 0;
  }

  v8 = *(this + 340);
  if (v8 <= 3)
  {
    if (!*(this + 340))
    {
      v9 = 18;
      goto LABEL_30;
    }

    if (v8 != 1)
    {
      goto LABEL_31;
    }

    *((*(*v6 + 8))(this + 1304) + 19) = 1;
    goto LABEL_27;
  }

  switch(v8)
  {
    case 4u:
LABEL_27:
      *((*(*v6 + 8))(this + 1304) + 16) = 1;
      goto LABEL_28;
    case 8u:
LABEL_28:
      v9 = 15;
      goto LABEL_30;
    case 0xFFu:
      v9 = 17;
LABEL_30:
      *((*(*v6 + 8))(this + 1304) + v9) = 1;
      break;
  }

LABEL_31:
  v10 = 0;
  v11 = this + 1304;
  do
  {
    *((*(*v11 + 8))(this + 1304) + v10++) = 0;
  }

  while (v10 != 5);
  v12 = *(*(this + 43) + 28);
  if (v12 <= 3)
  {
    if (!*(*(this + 43) + 28))
    {
      v13 = ((*(*v11 + 8))(this + 1304) + 3);
      goto LABEL_44;
    }

    if (v12 != 1)
    {
      goto LABEL_45;
    }

    *((*(*v11 + 8))(this + 1304) + 4) = 1;
    goto LABEL_41;
  }

  switch(v12)
  {
    case 4u:
LABEL_41:
      *((*(*v11 + 8))(this + 1304) + 1) = 1;
      goto LABEL_42;
    case 8u:
LABEL_42:
      v13 = (*(*v11 + 8))(this + 1304);
      goto LABEL_44;
    case 0xFFu:
      v13 = ((*(*v11 + 8))(this + 1304) + 2);
LABEL_44:
      *v13 = 1;
      break;
  }

LABEL_45:
  for (k = 5; k != 10; ++k)
  {
    result = (*(*v11 + 8))(this + 1304);
    *(result + k) = 0;
  }

  v16 = *(*(this + 44) + 28);
  if (v16 <= 3)
  {
    if (!*(*(this + 44) + 28))
    {
      v17 = 8;
      goto LABEL_58;
    }

    if (v16 != 1)
    {
      return result;
    }

    *((*(*v11 + 8))(this + 1304) + 9) = 1;
  }

  else if (v16 != 4)
  {
    if (v16 != 8)
    {
      if (v16 != 255)
      {
        return result;
      }

      v17 = 7;
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  *((*(*v11 + 8))(this + 1304) + 6) = 1;
LABEL_56:
  v17 = 5;
LABEL_58:
  result = (*(*v11 + 8))(v11);
  *(result + v17) = 1;
  return result;
}

uint64_t PadTouchService::PadTouchCoreAnalyticsStep::run(PadTouchService::PadTouchCoreAnalyticsStep *this, float a2)
{
  if (*(this + 141) == 1)
  {
    v3 = *(this + 148);
    if (v3 <= 5)
    {
      v4 = (*(*(this + 72) + 8))(a2);
      a2 = *(v4 + 4 * v3) + 0.0083333;
      *(v4 + 4 * v3) = a2;
    }
  }

  PadTouchService::PadTouchCoreAnalyticsStep::generatePatchCoverageOverPanelStats(this, a2);
  PadTouchService::PadTouchCoreAnalyticsStep::generateFFSPADirtyStats(this);
  PadTouchService::PadTouchCoreAnalyticsStep::generateTouchDurationStats(this);
  PadTouchService::PadTouchCoreAnalyticsStep::generateThermalRegionDurationStats(this);
  PadTouchService::PadTouchCoreAnalyticsStep::generatePencilDtiDurationStats(this);
  PadTouchService::PadTouchCoreAnalyticsStep::generateCalblobErrorInAlgsStats(this);
  return 0;
}

__n128 PlainDataNode<SA1DArrayPacket<float,(unsigned char)40>>::injectBuffer(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 60) = a2[2];
  *(a1 + 44) = v3;
  *(a1 + 28) = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 124) = a2[6];
  *(a1 + 108) = v6;
  *(a1 + 92) = v5;
  *(a1 + 76) = v4;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 188) = *(a2 + 20);
  *(a1 + 172) = v9;
  *(a1 + 156) = v8;
  *(a1 + 140) = result;
  return result;
}

uint64_t PadFireflyService::FireflyServiceEventCollection::FireflyServiceEventCollection(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v6 = &unk_2876F26E0;
  *(v6 + 32) = &unk_2876F2728;
  *(v6 + 40) = a3;
  *(v6 + 16) = 31245;
  v7 = (88 * a3 + 8);
  *(a1 + 44) = v7;
  *(a1 + 24) = v7;
  v8 = operator new(v7);
  *(a1 + 48) = v8;
  bzero(v8, *(a1 + 44));
  **(a1 + 48) = 0;
  return a1;
}

void PadFireflyService::FireflyServiceEventCollection::~FireflyServiceEventCollection(PadFireflyService::FireflyServiceEventCollection *this)
{
  *this = &unk_2876F26E0;
  *(this + 4) = &unk_2876F2728;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8015230203);
  }

  *this = &unk_2876F3810;
}

{
  PadFireflyService::FireflyServiceEventCollection::~FireflyServiceEventCollection(this);

  JUMPOUT(0x266758590);
}

uint64_t PadFireflyService::FireflyServiceEventCollection::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = *(result + 48);
  if (*v3)
  {
    *(a3 + 56) = v3;
    *(a3 + 48) = 88 * *v3 + 8;
    return a2(a3);
  }

  return result;
}

float PalmRejUtil::getDist2WeightParams(PalmRejUtil *this, const float *a2)
{
  v2 = *this;
  v3 = *(this + 2);
  v4 = *(this + 3);
  v5 = logf((1.0 - *(this + 1)) / *(this + 1));
  return (v5 - logf((1.0 - v4) / v4)) / (v2 - v3);
}

double PalmRejUtil::getMean(PalmRejUtil *this, const float *a2)
{
  if (!a2)
  {
    return 0.0;
  }

  v2 = a2;
  result = 0.0;
  do
  {
    v4 = *this;
    this = (this + 4);
    *&result = *&result + v4;
    --v2;
  }

  while (v2);
  *&result = *&result / a2;
  return result;
}

double PalmRejUtil::getVar(PalmRejUtil *this, const float *a2, float a3)
{
  if (!a2)
  {
    return 0.0;
  }

  v3 = a2;
  v4 = 0.0;
  do
  {
    v5 = *this;
    this = (this + 4);
    v4 = v4 + ((v5 - a3) * (v5 - a3));
    --v3;
  }

  while (v3);
  *&result = v4 / a2;
  return result;
}

float PalmRejUtil::getEllipseCovariance(float *a1, float *a2)
{
  v4 = __sincosf_stret(*a1);
  v5 = (v4.__cosval * 0.5) * (v4.__cosval * 0.5);
  v6 = (v4.__sinval * 0.5) * (v4.__sinval * 0.5);
  v7 = a1[1] * a1[1];
  v8 = a1[2] * a1[2];
  result = ((v4.__cosval * 0.5) * (v4.__sinval * 0.5)) * (v7 - v8);
  *a2 = (v8 * v6) + (v7 * v5);
  a2[1] = result;
  a2[2] = result;
  a2[3] = (v8 * v5) + (v7 * v6);
  return result;
}

float PalmRejUtil::calculateSAEllipseFoci(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return alg_CalculateEllipseFoci(v4, a2);
}

uint64_t PalmRejUtil::expandRectWithPoint(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 < *result)
  {
    *result = *a3;
  }

  v3 = *(a3 + 4);
  if (v3 < *(result + 4))
  {
    *(result + 4) = v3;
  }

  if (*a3 > *a2)
  {
    *a2 = *a3;
  }

  v4 = *(a3 + 4);
  if (v4 > *(a2 + 4))
  {
    *(a2 + 4) = v4;
  }

  return result;
}

BOOL PalmRejUtil::isTwoRectOverlap(unsigned int a1, unsigned int a2)
{
  v2 = a1 <= BYTE1(a2) && a2 <= BYTE1(a1);
  v3 = BYTE2(a2) <= HIBYTE(a1) && v2;
  return BYTE2(a1) <= HIBYTE(a2) && v3;
}

void PalmRejection::UpdatePathsForPalmRejectionStep::UpdatePathsForPalmRejectionStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AlgWorkNode::AlgWorkNode(a1, 0x4A7BEF9ACEE81C78);
  *v7 = &unk_2876F2790;
  v7[10] = a2;
  v7[11] = a3;
  v7[12] = a4;
}

uint64_t PalmRejection::UpdatePathsForPalmRejectionStep::run(PalmRejection::UpdatePathsForPalmRejectionStep *this)
{
  v39 = *MEMORY[0x277D85DE8];
  if (**(this + 11))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v26 = 0;
    do
    {
      v6 = (*(*(*(this + 12) + 32) + 8))();
      v7 = v6;
      v8 = v6 + v2;
      v9 = *(*(this + 10) + 400 * *(v6 + v2) + 58);
      if (*(v6 + v2 + 1) == 3 || v9 - 6 < 3 != *(*(this + 11) + *(v6 + v2) + 16) - 6 < 3)
      {
        v26 = 1;
      }

      v10 = v6 + v2;
      v11 = *(v6 + v2 + 2);
      if (*(v6 + v2 + 1) - 3 <= 2 && v11 != v9)
      {
        if (*(*(this + 10) + 400 * *(v6 + v2) + 58))
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13 || (v11 >= 6 ? (v14 = v9 >= 6) : (v14 = 1), !v14 || (v11 <= 5 ? (v15 = v9 >= 6) : (v15 = 0), v15)))
        {
          v16 = SALoggingGeneral();
          v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
          v11 = *(v10 + 2);
          if (v17)
          {
            v19 = *(*(this + 11) + 8);
            v20 = *(v7 + v2);
            v21 = *(v8 + 1);
            v22 = *(*(this + 10) + 400 * *(v7 + v2) + 160);
            *buf = 67110400;
            v28 = v19;
            v29 = 1024;
            v30 = v20;
            v31 = 1024;
            v32 = v21;
            v33 = 1024;
            v34 = v22;
            v35 = 1024;
            v36 = v11;
            v37 = 1024;
            v38 = v9;
            _os_log_debug_impl(&dword_2653C2000, v16, OS_LOG_TYPE_DEBUG, "UpdatePathsForPalmRejectionStep : time=%u  pid=%2u stage=(%u,%u) \t finger_id=(%u,%u)\n", buf, 0x26u);
            v11 = *(v10 + 2);
          }
        }

        if (v11 <= 8)
        {
          *(v10 + 2) = v9;
          v11 = v9;
        }
      }

      if (v9 - 6 > 2 || v11 > 0xB)
      {
        if (v9 - 1 < 5)
        {
          ++v5;
        }
      }

      else
      {
        ++v4;
        *(v10 + 2) = v9;
      }

      ++v3;
      v2 += 48;
    }

    while (v3 < **(this + 11));
    if (v26)
    {
      v23 = SALoggingGeneral();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = **(this + 11);
        *buf = 67109632;
        v28 = v25;
        v29 = 1024;
        v30 = v5;
        v31 = 1024;
        v32 = v4;
        _os_log_debug_impl(&dword_2653C2000, v23, OS_LOG_TYPE_DEBUG, "UpdatePathsForPalmRejectionStep : number_of_contacts=%u number_of_fingers=%u number_of_palms=%u\n", buf, 0x14u);
      }
    }
  }

  return 0;
}

void PalmRejection::UpdatePathsForPalmRejectionStep::~UpdatePathsForPalmRejectionStep(PalmRejection::UpdatePathsForPalmRejectionStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void Device0x039FireflyTask::Device0x039FireflyTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *v19 = &unk_2876F27E0;
  AlgDataNode::AlgDataNode((v19 + 13), 0x202823EF9EB16D97, 0);
  v53 = v20;
  *(a1 + 132) = 0;
  *(a1 + 148) = 0;
  *(a1 + 140) = 0;
  *(a1 + 156) = 0;
  v21 = *(a3 + 4);
  *(a1 + 200) = 0;
  *(a1 + 104) = &unk_2876F0B58;
  *(a1 + 120) = 20658;
  *(a1 + 128) = 28;
  *(a1 + 160) = a3;
  *(a1 + 168) = a4;
  *(a1 + 176) = a5;
  *(a1 + 184) = a6;
  *(a1 + 192) = a7;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *(a1 + 256) = 0;
  v22 = 12000 / v21;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = v22;
  *(a1 + 248) = v22;
  *(a1 + 232) = 0;
  SA3DArrayDynamicSize<short>::SA3DArrayDynamicSize((a1 + 264), 0xBB59D9CDEC2382FFLL, 3, 2, *(a5 + 13), 0);
  *(a1 + 264) = &unk_2876F0BA8;
  *(a1 + 296) = &unk_2876F0C00;
  *(a1 + 336) = a1 + 2832;
  SA3DArrayDynamicSize<short>::SA3DArrayDynamicSize((a1 + 344), 0xBB59D9CDEC238300, 3, 2, *(a5 + 10), 0);
  *(a1 + 344) = &unk_2876F0BA8;
  *(a1 + 376) = &unk_2876F0C00;
  *(a1 + 416) = a1 + 2832;
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((a1 + 424), 0x5CF65C0F2F3957D9, 3, 2, *(a5 + 13), 0);
  *(a1 + 424) = &unk_2876F0C50;
  *(a1 + 456) = &unk_2876F0CA8;
  *(a1 + 496) = a1 + 2832;
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((a1 + 504), 0x5CFBCD05B4960D1ALL, 3, 2, *(a5 + 10), 0);
  *(a1 + 504) = &unk_2876F0C50;
  *(a1 + 536) = &unk_2876F0CA8;
  *(a1 + 576) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 584), 0xBFDBEF53D0DAF87BLL, 2, *(a5 + 13), 0, 0);
  *(a1 + 584) = &unk_2876F0CF8;
  *(a1 + 616) = &unk_2876F0D48;
  *(a1 + 648) = a1 + 2832;
  v49 = SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 656), 0xBFDBEF53D0DAF87CLL, 2, *(a5 + 10), 0, 0);
  *(a1 + 656) = &unk_2876F0CF8;
  *(a1 + 688) = &unk_2876F0D48;
  *(a1 + 720) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 728), 0xBB59D9CDEC15D09ELL, 2, *(a5 + 13), 0, 0);
  v54 = a3;
  *(a1 + 728) = &unk_2876F0CF8;
  *(a1 + 760) = &unk_2876F0D48;
  *(a1 + 792) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 800), 0xBB59D9CDEC15D09FLL, 2, *(a5 + 10), 0, 0);
  *(a1 + 800) = &unk_2876F0CF8;
  *(a1 + 832) = &unk_2876F0D48;
  *(a1 + 864) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 872), 0x1E4424E39C6ED855, 2, *(a5 + 13), 0, 0);
  *(a1 + 872) = &unk_2876F0CF8;
  *(a1 + 904) = &unk_2876F0D48;
  *(a1 + 936) = a1 + 2832;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 944), 0x1E4995DA21CB8D96, 2, *(a5 + 10), 0, 0);
  *(a1 + 944) = &unk_2876F0CF8;
  *(a1 + 976) = &unk_2876F0D48;
  *(a1 + 1008) = a1 + 2832;
  v48 = SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 1016), 0xD5D66036FCC47838, 2, *(a5 + 13), 0, 0);
  *(a1 + 1016) = &unk_2876F0CF8;
  *(a1 + 1048) = &unk_2876F0D48;
  *(a1 + 1080) = a1 + 2832;
  v47 = SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 1088), 0xD5DBD12D82212D79, 2, *(a5 + 10), 0, 0);
  *(a1 + 1088) = &unk_2876F0CF8;
  *(a1 + 1120) = &unk_2876F0D48;
  *(a1 + 1152) = a1 + 2832;
  PadFireflyProjection::PadFireflyProjection((a1 + 1160), *(a5 + 10), *(a5 + 13), a1 + 2832, 1);
  SA2DArrayDynamicSize<short>::SA2DArrayDynamicSize((a1 + 2008), 0x252CA9A8633F67E5, 2, *(a5 + 13), 0, 0);
  SA2DArrayDynamicSize<short>::SA2DArrayDynamicSize((a1 + 2072), 0x252CA9A8633F67E6, 2, *(a5 + 10), 0, 0);
  AlgDataNode::AlgDataNode((a1 + 2136), 0xDA94E17B27780988, 0);
  v52 = v23;
  *(a1 + 2136) = &unk_2876F0D90;
  *(a1 + 2164) = 0u;
  *(a1 + 2152) = 20663;
  *(a1 + 2160) = 16;
  AlgDataNode::AlgDataNode((a1 + 2184), 0x6EE7EB8CB6409118, 0);
  v40 = v24;
  *(a1 + 2184) = &unk_2876F0DE0;
  *(a1 + 2212) = 0;
  *(a1 + 2200) = 20484;
  *(a1 + 2208) = 2;
  SensorImage<float>::SensorImage(a1 + 2216, 0x6E77BE7A6F17F92BLL, *(a5 + 10), *(a5 + 13), *(v54 + 1436), *(v54 + 1437), 0);
  v46 = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 2304), 0x726DDA1DC2AEC168, *(a5 + 13), 0);
  *(a1 + 2304) = &unk_2876F0E30;
  *(a1 + 2336) = &unk_2876F0E78;
  *(a1 + 2360) = a1 + 2832;
  v51 = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 2368), 0x726DDA1DC2AEC169, *(a5 + 10), 0);
  *(a1 + 2368) = &unk_2876F0E30;
  *(a1 + 2400) = &unk_2876F0E78;
  *(a1 + 2424) = a1 + 2832;
  *(a1 + 2432) = a8;
  *(a1 + 2440) = a9;
  AlgDataNode::AlgDataNode((a1 + 2448), 0x7D4007DE092002F9, 0);
  *(a1 + 2448) = &unk_2876F01A8;
  *(a1 + 2476) = 0;
  *(a1 + 2464) = 20482;
  *(a1 + 2472) = 1;
  *(a1 + 2480) = a11;
  AlgDataNode::AlgDataNode((a1 + 2488), 0xC1219A91C5D8FC40, 0);
  *(a1 + 2488) = &unk_2876F01A8;
  *(a1 + 2516) = 0;
  *(a1 + 2504) = 20482;
  *(a1 + 2512) = 1;
  *(a1 + 2520) = a12;
  Device0x039KonaFireflyCalBlobHandler::Device0x039KonaFireflyCalBlobHandler((a1 + 2528), 0x7990697F5F64FF07, *(a1 + 176), a1 + 2476, v54 + 8, v54 + 420, v54 + 484, v54 + 532, v54 + 768, v54 + 1644);
  Device0x039AlgsFireflyCalBlobHandler::Device0x039AlgsFireflyCalBlobHandler((a1 + 2624), 0x4DFDD14B925D56E5, *(a1 + 176), *(a1 + 2480) + 28, a3 + 8, a3 + 484, a3 + 532, a3 + 768);
  Device0x039P100CalBlobHandler::Device0x039P100CalBlobHandler((a1 + 2704), 0x8E434ACF09CE46EELL, *(a1 + 176), a1 + 2516, a3 + 8, a3 + 532, a3 + 768);
  MtdoCalBlobHandler::MtdoCalBlobHandler((a1 + 2776), 0x7470D9D061CDB6F2, a3 + 144, a1 + 3184, *(a1 + 2520) + 28);
  AlgDataNode::AlgDataNode((a1 + 2832), 0xCECE29DD463D1FALL, 0);
  *(a1 + 2832) = &unk_2876F0108;
  *(a1 + 2860) = 0;
  *(a1 + 2848) = 20480;
  *(a1 + 2856) = 1;
  AlgDataNode::AlgDataNode((a1 + 2864), 0x12283E913E601F77, 0);
  *(a1 + 2864) = &unk_2876F0108;
  *(a1 + 2892) = 0;
  *(a1 + 2880) = 20480;
  *(a1 + 2888) = 1;
  AlgDataNode::AlgDataNode((a1 + 2896), 0xA7C1D0C857BEC0E6, 0);
  *(a1 + 2924) = 0;
  *(a1 + 2912) = 20480;
  *(a1 + 2920) = 1;
  *(a1 + 2896) = &unk_2876F0EB0;
  *(a1 + 2928) = a1 + 2832;
  AlgDataNode::AlgDataNode((a1 + 2936), 0xEEDE222532BE097FLL, 0);
  *(a1 + 2936) = &unk_2876F0108;
  *(a1 + 2964) = 0;
  *(a1 + 2952) = 20480;
  *(a1 + 2960) = 1;
  AlgDataNode::AlgDataNode((a1 + 2968), 0xFC6CDD54BCECA76CLL, 0);
  *(a1 + 2968) = &unk_2876F0108;
  *(a1 + 2996) = 0;
  *(a1 + 2984) = 20480;
  *(a1 + 2992) = 1;
  AlgDataNode::AlgDataNode((a1 + 3000), 0x87069111AC36D126, 0);
  *(a1 + 3060) = 0;
  *(a1 + 3028) = 0u;
  *(a1 + 3044) = 0u;
  *(a1 + 3016) = 20710;
  *(a1 + 3024) = 36;
  *(a1 + 3000) = &unk_2876F0F00;
  *(a1 + 3064) = a1 + 2832;
  AlgDataNode::AlgDataNode((a1 + 3072), 0xD86021D475995084, 0);
  *(a1 + 3104) = 1537;
  *(a1 + 3108) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3088) = 39424;
  *(a1 + 3096) = 0x500200000010;
  *(a1 + 3072) = &unk_2876F0F68;
  *(a1 + 3120) = 0u;
  AlgDataNode::AlgDataNode((a1 + 3136), 0xBAE511251A9DF63FLL, 0);
  v44 = v25;
  *(a1 + 3136) = &unk_2876F0FD0;
  *(a1 + 3180) = 0;
  *(a1 + 3164) = 0u;
  *(a1 + 3152) = 20717;
  *(a1 + 3160) = 20;
  AlgDataNode::AlgDataNode((a1 + 3184), 0x50014BEDD2FFC8FLL, 0);
  *(a1 + 3184) = &unk_2876F0108;
  *(a1 + 3212) = 0;
  *(a1 + 3200) = 20480;
  *(a1 + 3208) = 1;
  AlgDataNode::AlgDataNode((a1 + 3216), 0xBB59D9CDEBED55A6, 0);
  *(a1 + 3216) = &unk_2876F1020;
  *(a1 + 3232) = 20679;
  *(a1 + 3240) = 4;
  AlgDataNode::AlgDataNode((a1 + 3248), 0x5BB66379363E093ELL, 0);
  v43 = v26;
  *(a1 + 3248) = &unk_2876F1070;
  *(a1 + 3276) = 0u;
  *(a1 + 3292) = 0u;
  *(a1 + 3308) = 0u;
  *(a1 + 3324) = 0u;
  *(a1 + 3340) = 0u;
  *(a1 + 3356) = 0u;
  *(a1 + 3372) = 0u;
  *(a1 + 3388) = 0u;
  *(a1 + 3404) = 0u;
  *(a1 + 3420) = 0u;
  *(a1 + 3436) = 0u;
  *(a1 + 3452) = 0u;
  *(a1 + 3468) = 0u;
  *(a1 + 3484) = 0u;
  *(a1 + 3500) = 0u;
  *(a1 + 3516) = 0u;
  *(a1 + 3532) = 0u;
  *(a1 + 3548) = 0u;
  *(a1 + 3564) = 0u;
  *(a1 + 3580) = 0u;
  *(a1 + 3596) = 0u;
  *(a1 + 3612) = 0u;
  *(a1 + 3628) = 0u;
  *(a1 + 3644) = 0u;
  *(a1 + 3660) = 0u;
  *(a1 + 3676) = 0u;
  *(a1 + 3692) = 0u;
  *(a1 + 3264) = 20684;
  *(a1 + 3272) = 432;
  AlgDataNode::AlgDataNode((a1 + 3712), 0x22FFCE66D6CFA02BLL, 0);
  *(a1 + 3712) = &unk_2876F10C0;
  *(a1 + 3740) = 0;
  *(a1 + 3728) = 20690;
  *(a1 + 3736) = 1;
  AlgDataNode::AlgDataNode((a1 + 3744), 0x20282447A71223BCLL, 0);
  *(a1 + 3744) = &unk_2876F1110;
  *(a1 + 3776) = 0;
  *(a1 + 3760) = 20694;
  *(a1 + 3768) = 8;
  AlgDataNode::AlgDataNode((a1 + 3784), 0xC6AFF4A93A498EE7, 0);
  v45 = v27;
  *(a1 + 3784) = &unk_2876F1160;
  *(a1 + 3812) = 0u;
  *(a1 + 3800) = 20693;
  *(a1 + 3808) = 16;
  AlgDataNode::AlgDataNode((a1 + 3832), 0xC7B00A3F48DE0253, 0);
  v50 = v28;
  *(a1 + 3832) = &unk_2876F0108;
  *(a1 + 3860) = 0;
  *(a1 + 3848) = 20480;
  *(a1 + 3856) = 1;
  AlgDataNode::AlgDataNode((a1 + 3864), 0xB6F623D9FF7182F0, 0);
  *(a1 + 3864) = &unk_2876F0108;
  *(a1 + 3892) = 0;
  *(a1 + 3880) = 20480;
  *(a1 + 3888) = 1;
  AlgDataNode::AlgDataNode((a1 + 3896), 0x2C47D663493762C1, 0);
  v42 = v29;
  *(a1 + 3896) = &unk_2876F0108;
  *(a1 + 3924) = 0;
  *(a1 + 3912) = 20480;
  *(a1 + 3920) = 1;
  AlgDataNode::AlgDataNode((a1 + 3928), 0xF5EAB78FD924E1C5, 0);
  *(a1 + 3928) = &unk_2876F0108;
  *(a1 + 3956) = 0;
  *(a1 + 3944) = 20480;
  *(a1 + 3952) = 1;
  AlgDataNode::AlgDataNode((a1 + 3960), 0x90F2F3BC3C0DB67FLL, 0);
  v39 = v30;
  *(a1 + 3960) = &unk_2876F0108;
  *(a1 + 3988) = 0;
  *(a1 + 3976) = 20480;
  *(a1 + 3984) = 1;
  AlgDataNode::AlgDataNode((a1 + 3992), 0x2F2D4B99917C9E38, 0);
  v38 = v31;
  *(a1 + 3992) = &unk_2876F0108;
  *(a1 + 4020) = 0;
  *(a1 + 4008) = 20480;
  *(a1 + 4016) = 1;
  AlgDataNode::AlgDataNode((a1 + 4024), 0x86A3D9C3ED1F6206, 0);
  *(a1 + 4024) = &unk_2876F01A8;
  *(a1 + 4052) = 0;
  *(a1 + 4040) = 20482;
  *(a1 + 4048) = 1;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 4056), 0x1B40A27B851FE8E2, *(a5 + 13), 0);
  *(a1 + 4056) = &unk_2876F0E30;
  *(a1 + 4088) = &unk_2876F0E78;
  *(a1 + 4112) = a1 + 2832;
  v41 = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 4120), 0x1B40A27B851FE8E3, *(a5 + 10), 0);
  *(a1 + 4120) = &unk_2876F0E30;
  *(a1 + 4152) = &unk_2876F0E78;
  *(a1 + 4176) = a1 + 2832;
  *(a1 + 4184) = a10;
  v32 = *(a1 + 192);
  AlgDataNode::AlgDataNode((a1 + 4192), 0x243E7AF0C0BC3422, 0);
  *(a1 + 4220) = 0u;
  *(a1 + 4208) = 20725;
  *(a1 + 4216) = 16;
  *(a1 + 4192) = &unk_2876F11B0;
  *(a1 + 4240) = v32;
  PadFireflyPathCollection::PadFireflyPathCollection(a1 + 4248, 0x78E09D1B6705FB6FLL, v43, v33, a1 + 3712, v52, v40, a3 + 144, v54 + 1712, v54 + 1616, a1 + 3216, a1 + 3744, v45, v54 + 392, a1 + 2832, v50, v42, *(a1 + 192), a6, v54 + 1968, a1 + 3000, v44, v53, v54 + 1912, a3 + 768, a1 + 200, v54);
  AlgDataNode::AlgDataNode((a1 + 5512), 0x9AB68B9F5C67859ELL, 0);
  *(a1 + 5512) = &unk_2876F1218;
  *(a1 + 5544) = 2359297;
  *(a1 + 5572) = 0;
  *(a1 + 5556) = 0;
  *(a1 + 5564) = 0;
  *(a1 + 5548) = 0;
  *(a1 + 5528) = 20578;
  *(a1 + 5536) = 0x5062507200000024;
  ConditionalInjExtAndTaskNode::ConditionalInjExtAndTaskNode();
  *(a1 + 5576) = &unk_2876F0AE0;
  *(a1 + 5680) = a1 + 200;
  ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *(&v37 + 1) = v46;
  *&v37 = v47;
  *(&v36 + 1) = v48;
  *&v36 = a1 + 944;
  PadFireflyJointNpcLcmCompensationWithDetectedPeak::PadFireflyJointNpcLcmCompensationWithDetectedPeak(a1 + 5896, 0x995024046E437373, a5, a1 + 584, v49, a1 + 728, a1 + 800, a1 + 872, v36, v37, v51, a1 + 3744, v45, a1 + 3216, v54 + 2072, a3 + 1712, v52, v54 + 264, v39, v38, *(a1 + 4184));
  PadFireflyDisplayNoiseProjectionStep::PadFireflyDisplayNoiseProjectionStep(a1 + 6328, 0x97187C6ED7215FA3, a5, a3 + 1836, a1 + 264, a1 + 344, a1 + 424, a1 + 504);
  HoverModelSelector::HoverModelSelector((a1 + 6488), a4 + 40, v53, a3 + 1912);
  AlgDataNode::AlgDataNode((a1 + 6512), 0xD4F8584B41CD68EDLL, 0);
  *(a1 + 6564) = 0;
  *(a1 + 6556) = 0;
  *(a1 + 6540) = 0u;
  *(a1 + 6528) = 20716;
  *(a1 + 6536) = 28;
  *(a1 + 6512) = &unk_2876F1268;
  v35 = v34;
  *(a1 + 6568) = a1 + 2832;
  AlgDataNode::AlgDataNode((a1 + 6576), 0x4D8B0D73C3D5824ELL, 0);
  *(a1 + 6604) = 0u;
  *(a1 + 6620) = 0u;
  *(a1 + 6592) = 20707;
  *(a1 + 6600) = 32;
  *(a1 + 6576) = &unk_2876F12D0;
  *(a1 + 6640) = a1 + 2832;
  PadFireflyShapeNoiseProjection::PadFireflyShapeNoiseProjection(a1 + 6648, v53, *(a1 + 176), a1 + 2832, a1 + 264, a1 + 344, v46, v51, a1 + 4056, v41, v35);
  PadFireflyModelBasedGridSearch::PadFireflyModelBasedGridSearch((a1 + 7880), *(a1 + 176), a1 + 6488, *(a4 + 1136), a1 + 2832, a1 + 6648, v53, a4 + 1176, a4 + 1520, a3 + 1912, a1 + 6576, a4 + 2904, a3 + 2008, a4 + 2848, v35);
}

{
  Device0x039FireflyTask::Device0x039FireflyTask(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_2653EEF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, AlgWorkNode *a29, void *a30, AlgWorkNode *a31, AlgTaskNode *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, uint64_t a43, AlgWorkNode *a44, PadFireflyShapeNoiseProjection *a45, uint64_t a46, void *a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, void *a53, void *a54, void *a55, uint64_t a56, void *a57, void *a58, void *a59, void *a60, void *a61, void *a62, PadFireflyProjection *a63)
{
  PadFireflyPathCollectionCuratingStep::~PadFireflyPathCollectionCuratingStep((v69 + 1238));
  v72 = *(v70 - 96);
  v69[1218] = &unk_2876F3580;
  v69[1234] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v72);
  v73 = *(v70 - 160);
  v69[1197] = &unk_2876F2A80;
  v69[1214] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v73);
  PadFireflyXYMeasurementStep::~PadFireflyXYMeasurementStep((v69 + 1161));
  PadFireflyWatershedStep::~PadFireflyWatershedStep((v69 + 1135));
  AlgWorkNode::~AlgWorkNode((v69 + 1120));
  v69[1088] = &unk_2876F2948;
  v69[1098] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(a44);
  PadFireflyPeakDetectionStep::~PadFireflyPeakDetectionStep((v69 + 1050));
  v69[1035] = &unk_2876F3530;
  v69[1046] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(a29);
  PadFireflyModelBasedGridSearch::~PadFireflyModelBasedGridSearch(a66);
  PadFireflyShapeNoiseProjection::~PadFireflyShapeNoiseProjection(a45);
  *a30 = &unk_2876F3810;
  *a47 = &unk_2876F3810;
  v69[791] = &unk_2876F3268;
  v69[805] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(a31);
  PadFireflyJointNpcLcmCompensationWithDetectedPeak::~PadFireflyJointNpcLcmCompensationWithDetectedPeak((v69 + 737));
  AlgTaskNode::~AlgTaskNode((v69 + 724));
  AlgTaskNode::~AlgTaskNode((v69 + 711));
  AlgTaskNode::~AlgTaskNode(a32);
  *a33 = &unk_2876F3810;
  v69[531] = &unk_2876F3358;
  InputDetectionStateNode::~InputDetectionStateNode((v69 + 559));
  v69[531] = &unk_2876F3810;
  *a34 = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a67);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a68);
  *a35 = &unk_2876F3810;
  *a53 = &unk_2876F3810;
  *a54 = &unk_2876F3810;
  *a36 = &unk_2876F3810;
  *a69 = &unk_2876F3810;
  *a52 = &unk_2876F3810;
  **(v70 - 152) = &unk_2876F3810;
  *STACK[0x220] = &unk_2876F3810;
  **(v70 - 256) = &unk_2876F3810;
  *STACK[0x208] = &unk_2876F3810;
  *STACK[0x210] = &unk_2876F3810;
  **(v70 - 120) = &unk_2876F3810;
  *a62 = &unk_2876F3810;
  *STACK[0x218] = &unk_2876F3810;
  *a55 = &unk_2876F3810;
  **(v70 - 248) = &unk_2876F3810;
  *a57 = &unk_2876F3810;
  *a58 = &unk_2876F3810;
  *a59 = &unk_2876F3810;
  *a60 = &unk_2876F3810;
  *STACK[0x228] = &unk_2876F3810;
  *a37 = &unk_2876F3810;
  *a38 = &unk_2876F3810;
  *a39 = &unk_2876F3810;
  *a40 = &unk_2876F3810;
  *a41 = &unk_2876F3810;
  *a42 = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(*(v70 - 144));
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(*(v70 - 240));
  v69[277] = &unk_2876EFEC0;
  v69[281] = &unk_2876EFF18;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(a61);
  *a64 = &unk_2876F3810;
  **(v70 - 136) = &unk_2876F3810;
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(v69 + 259);
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(v69 + 251);
  PadFireflyProjection::~PadFireflyProjection(a63);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 232));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 224));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 216));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 208));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(a48);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 200));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 192));
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(*(v70 - 184));
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(a65);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(*(v70 - 176));
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(*(v70 - 112));
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(*(v70 - 128));
  **(v70 - 104) = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v69);
  _Unwind_Resume(a1);
}

uint64_t Device0x039FireflyTask::runBeforeChildren(float **this)
{
  if (*(this + 3212) == 1)
  {
    PadHomography::deriveHomography(this + 535);
    *(this + 3212) = 0;
  }

  if (*(this + 147) == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  *(this + 3740) = v2;
  v3 = (*(this + 3892) & 1) != 0 || (*(this + 3956) & 1) != 0 || PadFireflyPathCollection::getFramesOutofRange((this + 531)) < 4;
  *(this + 3860) = v3;
  v4 = *(this + 125);
  *(this + 2860) = v4;
  if (v4 == 1)
  {
    v5 = this + 148;
    v6 = this + 148;
    if (*(this + 148) && (v6 = this + 151, *(this + 151)) && (v6 = this + 154, *(this + 154)))
    {
      v7 = this + 150;
    }

    else
    {
      v8 = v6[2];
      v7 = ((*(*(this[20] + 243) + 8))() + v8);
    }

    v9 = *v7;
    if (*(this + 148) == 1 || (v5 = this + 151, *(this + 151) == 1) || (v5 = this + 154, *(this + 154) == 1))
    {
      v10 = v5[2];
      v11 = ((*(*(this[20] + 243) + 8))() + v10);
    }

    else
    {
      v11 = this + 150;
    }

    v12 = *v11;
    *(this + 4052) = v9;
    if (*(this[20] + 509) == 2)
    {
      v13 = *(this[21] + 1137);
      v15 = v13 > v9 && v13 > v12;
    }

    else
    {
      v15 = 0;
    }

    *(this + 2892) = v15;
    PadFireflyShapeNoiseProjection::updateProjectionState((this + 831), 0);
    v16 = 0;
    *(this + 2008) = 0;
    v18 = v9 < 6 && v12 < 6;
    *(this + 3062) = v18;
    if (*(this + 3892) == 1)
    {
      v16 = *(this + 147) == 0 && v18;
    }

    *(this + 2924) = v16;
    *(this + 3924) = 1;
    v19 = this[523];
    *(v19 + 12) = v9;
    *(v19 + 13) = v12;
  }

  return 0;
}

uint64_t Device0x039FireflyTask::runAfterChildren(Device0x039FireflyTask *this)
{
  PadFireflyPathCollection::updateOORFireflyContact((this + 4248));
  PadFireflyPathCollection::updateFireflyOutputReady(this + 531);
  PadFireflyPathCollection::updatePalmRejection(this + 4248, this + 5540);
  PadFireflyPathCollection::updatePreviousFireflyContact((this + 4248));
  Device0x038FireflyTask::detectPencilTap(this);
  Path = PadFireflyPathCollection::getPath((this + 4248));
  if (PadFireflyPathTrack::getPathStage(Path) < 3 || (v3 = PadFireflyPathCollection::getPath((this + 4248)), PadFireflyPathTrack::getPathStage(v3) > 4) || (*(this + 144) & 3) != 0)
  {
    *(*(this + 523) + 56) = 0;
  }

  return 0;
}

uint64_t PadHoverDetectionStep::PadHoverDetectionStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v20 = &unk_2876F2858;
  *(v20 + 80) = a3;
  *(v20 + 88) = a5;
  *(v20 + 96) = a6;
  *(v20 + 104) = a7;
  *(v20 + 112) = a8;
  *(v20 + 120) = a8 + 176;
  *(v20 + 128) = a8 + 240;
  *(v20 + 136) = a8 + 304;
  *(v20 + 144) = a8 + 368;
  *(v20 + 152) = a8 + 432;
  *(v20 + 160) = a8 + 496;
  *(v20 + 168) = a8 + 560;
  *(v20 + 176) = a8 + 624;
  *(v20 + 184) = a10;
  *(v20 + 192) = a11;
  *(v20 + 200) = a12 + 148;
  *(v20 + 208) = a12 + 144;
  *(v20 + 216) = a13;
  *(v20 + 224) = a8 + 120;
  *(v20 + 232) = a14;
  v21 = *(a13 + 9);
  *(v20 + 240) = v21 - 1;
  *(v20 + 244) = v21 - 1;
  *(v20 + 248) = a9;
  v22 = v20 + 264;
  *(v20 + 256) = v21;
  AlgDataNode::AlgDataNode((v20 + 264), 0x377A34E1248190CLL, 0);
  *(a1 + 264) = &unk_2876F0108;
  *(a1 + 292) = 0;
  *(a1 + 280) = 20480;
  *(a1 + 288) = 1;
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 88));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 96));
  AlgWorkNode::registerAlgDataNode(a1 + 24, *(a1 + 224));
  AlgWorkNode::registerAlgDataNode(a1 + 24, *(a1 + 232));
  AlgWorkNode::registerAlgDataNode(a1 + 40, a8 + 1072);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a8 + 1144);
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 120));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 128));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 136));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 144));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 152));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 160));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 168));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 176));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a8 + 1216));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a8 + 1224));
  AlgWorkNode::registerAlgDataNode(a1 + 40, a8 + 944);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a8 + 1008);
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 184));
  AlgWorkNode::registerAlgDataNode(a1 + 56, v22);
  *(a1 + 292) = 1;
  return a1;
}

{
  return PadHoverDetectionStep::PadHoverDetectionStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t PadHoverDetectionStep::run(PadFireflyShapeNoiseProjection **this)
{
  if (*(this + 292) == 1)
  {
    PadHoverDetectionStep::runHoverDetectionStep(this);
  }

  return 0;
}

uint64_t PadHoverDetectionStep::runHoverDetectionStep(PadFireflyShapeNoiseProjection **this)
{
  if (!PadFireflyShapeNoiseProjection::getProjectionState(this[14]))
  {
    PadFireflyShapeNoiseProjection::runFireflySignalProjection(this[14], 3);
    PadFireflyShapeNoiseProjection::updateDetectionState(this[14]);
  }

  result = PadHoverDetectionStep::determineHoverRun(this);
  if ((*(this[23] + 28) & 1) == 0 && *(this[24] + 30))
  {
    v3 = this[31];
    if (*(v3 + 1) != 5)
    {
      *(v3 + 1) = 7;
    }
  }

  return result;
}

uint64_t PadHoverDetectionStep::determineHoverRun(uint64_t this)
{
  v1 = *(this + 240);
  if (v1 >= *(this + 244) && ((v2 = *(this + 216), v3 = *(this + 224), v4 = *(v2 + 4), (*(v2 + 10) & *(*(this + 80) + 40)) != 0) || *(v2 + 8) == 1))
  {
    v5 = *(v3 + 28) > *v2;
    if (*(v3 + 32) > v4)
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(*(this + 104) + 28);
    }

    *(*(this + 184) + 28) = v6 & 1;
    **(this + 208) = **(this + 208) + ((v1 - (*(this + 256) - 1)) / *(this + 256));
    *(this + 240) = 0;
    if (!v5)
    {
      ++*(*(this + 200) + 4);
    }
  }

  else
  {
    *(this + 240) = v1 + 1;
    *(*(this + 184) + 28) = 0;
  }

  return this;
}

void PadHoverDetectionStep::~PadHoverDetectionStep(PadHoverDetectionStep *this)
{
  *this = &unk_2876F2858;
  *(this + 33) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2858;
  *(this + 33) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PadFireflyPathCollectionCuratingStep::PadFireflyPathCollectionCuratingStep(uint64_t a1, uint64_t a2, PadFireflyPathCollection *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v17 = &unk_2876F28A8;
  v17[10] = a3;
  v17[11] = a4 + 28;
  v17[12] = a5 + 28;
  v17[13] = a6;
  *(a1 + 112) = PadFireflyPathCollection::getPath(a3);
  *(a1 + 120) = a7;
  *(a1 + 128) = a8;
  *(a1 + 136) = a9;
  *(a1 + 144) = a10 + 28;
  AlgDataNode::AlgDataNode((a1 + 152), 0xBFEDB166D3F72FFBLL, 0);
  *(a1 + 152) = &unk_2876F0108;
  *(a1 + 180) = 0;
  *(a1 + 168) = 20480;
  *(a1 + 176) = 1;
  AlgDataNode::AlgDataNode((a1 + 184), 0x72426E63B6586B00, 0);
  *(a1 + 184) = &unk_2876F0108;
  *(a1 + 212) = 0;
  *(a1 + 200) = 20480;
  *(a1 + 208) = 1;
  AlgDataNode::AlgDataNode((a1 + 216), 0xB9E9516EE212FEBFLL, 0);
  *(a1 + 216) = &unk_2876F0108;
  *(a1 + 244) = 0;
  *(a1 + 232) = 20480;
  *(a1 + 240) = 1;
  AlgDataNode::AlgDataNode((a1 + 248), 0x999130AE2F9F27B3, 0);
  *(a1 + 248) = &unk_2876F0108;
  *(a1 + 276) = 0;
  *(a1 + 264) = 20480;
  *(a1 + 272) = 1;
  AlgDataNode::AlgDataNode((a1 + 280), 0x377A34E1248190CLL, 0);
  *(a1 + 280) = &unk_2876F0108;
  *(a1 + 308) = 0;
  *(a1 + 296) = 20480;
  *(a1 + 304) = 1;
  ThresParams = PadFireflyPathCollection::getThresParams(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 56, ThresParams);
  AngleParams = PadFireflyPathCollection::getAngleParams(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 56, AngleParams);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 152);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 184);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 216);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 248);
  BreakState = PadFireflyPathCollection::getMakeBreakState(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 24, BreakState);
  StylusStatus = PadFireflyPathCollection::getStylusStatus(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, StylusStatus);
  TouchInteraction = PadFireflyPathCollection::getTouchInteraction(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, TouchInteraction);
  WatershedState = PadFireflyPathCollection::getWatershedState(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, WatershedState);
  NumPathsFromTouch = PadFireflyPathCollection::getNumPathsFromTouch(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, NumPathsFromTouch);
  Patch = PadFireflyPathCollection::getPatch(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, Patch);
  Validity = PadFireflyPathCollection::getValidity(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, Validity);
  NpcCompensation = PadFireflyPathCollection::getNpcCompensation(*(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, NpcCompensation);
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 80));
  *(a1 + 180) = 1;
  *(a1 + 212) = 1;
  *(a1 + 244) = 1;
  *(a1 + 276) = 1;
  *(a1 + 308) = 1;
  return a1;
}

{
  return PadFireflyPathCollectionCuratingStep::PadFireflyPathCollectionCuratingStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_2653F044C(_Unwind_Exception *a1)
{
  *v5 = &unk_2876F3810;
  *v4 = &unk_2876F3810;
  *v3 = &unk_2876F3810;
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadFireflyPathCollectionCuratingStep::run(PadFireflyPathCollectionCuratingStep *this)
{
  if (*(this + 308) != 1)
  {
    return 0;
  }

  PadFireflyPathTrack::updateTrajectoryFromProbes(*(this + 14), this + 152, this + 216, this + 248);
  PadFireflyPathCollection::setInputDetectionFlags(*(this + 10), 1);
  PadFireflyPathCollection::storePathIntoTransitionStateNode(*(this + 10));
  PadFireflyPathCollection::setHomographyPos(*(this + 10), this + 184);
  PadFireflyPathTrack::setPathStage(*(this + 14));
  v2 = *(this + 13);
  Path = PadFireflyPathCollection::getPath(*(this + 10));
  PathStage = PadFireflyPathTrack::getPathStage(Path);
  v6 = *(v2 + 48);
  v5 = *(v2 + 56);
  if (v5 >= 6)
  {
    v6 = (v6 + 1) % 6;
    *(v2 + 48) = v6;
    --v5;
  }

  *(v2 + 56) = v5 + 1;
  v7 = v6 >= 6 - v5;
  v8 = v2 + 36 + v6 - (6 - v5);
  v9 = (v2 + 36 + v6 + v5);
  if (v7)
  {
    v9 = v8;
  }

  *v9 = PathStage;
  v10 = PadFireflyPathCollection::getPath(*(this + 10));
  if (PadFireflyPathTrack::getPathStage(v10) == 3)
  {
    v11 = (*(this + 16) + 28);
    v12 = 1;
  }

  else
  {
    v15 = PadFireflyPathCollection::getPath(*(this + 10));
    v16 = PadFireflyPathTrack::getPathStage(v15);
    v12 = v16 == 4;
    v17 = *(this + 16);
    v18 = *(v17 + 28);
    v11 = (v17 + 28);
    if (v18 == 1 && v16 != 4)
    {
      *v11 = 1;
      Ztotal = PadFireflyPathTrack::getZtotal(*(this + 14));
      v20 = *(this + 12);
      v12 = 0;
      if (Ztotal >= *(*(this + 11) + 4))
      {
        *(v20 + 32) = 1;
      }

      else
      {
        *(v20 + 32) = 2;
      }

      goto LABEL_17;
    }
  }

  v13 = *(this + 12);
  if (*(*(this + 17) + 28) == 1)
  {
    v14 = *(v13 + 34);
  }

  else
  {
    v14 = 0;
  }

  *v11 = v14 & 1;
  *(v13 + 32) = 0;
LABEL_17:
  v21 = *(this + 18);
  if ((*v21 & 1) != 0 || v12)
  {
    LOBYTE(v12) = *(*(this + 17) + 28) ^ 1;
  }

  *v21 = v12 & 1;
  PadFireflyPathCollection::storePathIntoLocalContact(*(this + 10));
  return 0;
}

uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::PadFireflyJointNpcLcmCompensationWithDetectedPeak(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  AlgWorkNode::AlgWorkNode(a1, a2);
  *v25 = &unk_2876F28F8;
  *(v25 + 80) = a4;
  *(v25 + 88) = a5;
  *(v25 + 96) = a6;
  *(v25 + 104) = a7;
  *(v25 + 112) = a8;
  *(v25 + 120) = a9;
  *(v25 + 136) = a10;
  *(v25 + 152) = a11;
  *(v25 + 160) = a12 + 28;
  *(v25 + 168) = a13 + 28;
  *(v25 + 176) = a14 + 28;
  *(v25 + 184) = a15 + 28;
  *(v25 + 192) = a16 + 28;
  *(v25 + 200) = a17 + 28;
  *(v25 + 208) = a18 + 28;
  v26 = v25 + 240;
  *(v25 + 224) = a19 + 28;
  *(v25 + 232) = a20 + 28;
  AlgDataNode::AlgDataNode((v25 + 240), 0xE8C84E925EA20064, 0);
  *(a1 + 240) = &unk_2876F19E0;
  *(a1 + 268) = 0;
  *(a1 + 256) = 32779;
  *(a1 + 264) = 8;
  AlgDataNode::AlgDataNode((a1 + 280), 0x1D220DE32E0F447, 0);
  *(a1 + 280) = &unk_2876F19E0;
  *(a1 + 308) = 0;
  *(a1 + 296) = 32779;
  *(a1 + 304) = 8;
  if (*(a3 + 10) <= *(a3 + 13))
  {
    v27 = *(a3 + 13);
  }

  else
  {
    v27 = *(a3 + 10);
  }

  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((a1 + 320), 0xCAC169BA8C696179, 2, 2, v27, 0);
  AlgDataNode::AlgDataNode((a1 + 392), 0x377A34E1248190CLL, 0);
  *(a1 + 392) = &unk_2876F0108;
  *(a1 + 420) = 0;
  *(a1 + 408) = 20480;
  *(a1 + 416) = 1;
  *(a1 + 424) = a21;
  v28 = *(a3 + 10);
  *(a1 + 216) = v28;
  v29 = *(a3 + 13);
  *(a1 + 217) = v29;
  if (v28 <= v29)
  {
    LOBYTE(v28) = v29;
  }

  *(a1 + 218) = v28;
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 88));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 96));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 104));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 112));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 120));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 128));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 136));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 144));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 152));
  AlgWorkNode::registerAlgDataNode(a1 + 8, a12);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a13);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a14);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a16);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a17);
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 88));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 96));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 104));
  AlgWorkNode::registerAlgDataNode(a1 + 40, a12);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a13);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a14);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a16);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a17);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a18);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 392);
  AlgWorkNode::registerAlgDataNode(a1 + 24, v26);
  AlgWorkNode::registerAlgDataNode(a1 + 24, a1 + 280);
  AlgWorkNode::registerAlgDataNode(a1 + 24, a1 + 320);
  *(a1 + 420) = 1;
  return a1;
}

{
  return PadFireflyJointNpcLcmCompensationWithDetectedPeak::PadFireflyJointNpcLcmCompensationWithDetectedPeak(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void sub_2653F0C70(_Unwind_Exception *a1)
{
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 40);
  *v3 = &unk_2876F3810;
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::run(PadFireflyJointNpcLcmCompensationWithDetectedPeak *this)
{
  if (*(this + 420) == 1)
  {
    PadFireflyJointNpcLcmCompensationWithDetectedPeak::runFireflyJointNpcLcm(this);
  }

  return 0;
}

uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::runFireflyJointNpcLcm(PadFireflyJointNpcLcmCompensationWithDetectedPeak *this)
{
  v90 = 0;
  *v91 = 0;
  v85 = *(this + 217);
  v2 = *(this + 216);
  v3 = *(this + 20);
  *v3 = 0;
  *(v3 + 4) = 0;
  memset(v86, 0, sizeof(v86));
  v87 = *(this + 218);
  v88 = v87;
  v89 = 0;
  v4 = *(this + 10);
  v5 = v4[4];
  v4 += 4;
  v84 = (*(v5 + 8))(v4);
  (*(*v4 + 24))(v4);
  v6 = *(this + 10);
  v7 = v6[4];
  v6 += 4;
  v8 = (*(v7 + 8))(v6);
  v83 = (v8 + 4 * (*(*v6 + 24))(v6));
  v9 = *(this + 11);
  v10 = v9[4];
  v9 += 4;
  v11 = (*(v10 + 8))(v9);
  (*(*v9 + 24))(v9);
  v12 = *(this + 11);
  v13 = v12[4];
  v12 += 4;
  v14 = (*(v13 + 8))(v12);
  v15 = (v14 + 4 * (*(*v12 + 24))(v12));
  v16 = *(this + 12);
  v17 = v16[4];
  v16 += 4;
  v18 = (*(v17 + 8))(v16);
  (*(*v16 + 24))(v16);
  v19 = *(this + 12);
  v20 = v19[4];
  v19 += 4;
  v21 = (*(v20 + 8))(v19);
  v82 = (v21 + 4 * (*(*v19 + 24))(v19));
  v22 = *(this + 13);
  v23 = v22[4];
  v22 += 4;
  v24 = (*(v23 + 8))(v22);
  (*(*v22 + 24))(v22);
  v25 = *(this + 13);
  v26 = v25[4];
  v25 += 4;
  v27 = (*(v26 + 8))(v25);
  v81 = (v27 + 4 * (*(*v25 + 24))(v25));
  v28 = *(this + 14);
  v29 = v28[4];
  v28 += 4;
  v79 = (*(v29 + 8))(v28);
  (*(*v28 + 24))(v28);
  v30 = *(this + 14);
  v31 = v30[4];
  v30 += 4;
  v32 = (*(v31 + 8))(v30);
  v78 = v32 + 4 * (*(*v30 + 24))(v30);
  v33 = *(this + 15);
  v34 = v33[4];
  v33 += 4;
  v35 = (*(v34 + 8))(v33);
  (*(*v33 + 24))(v33);
  v36 = *(this + 15);
  v37 = v36[4];
  v36 += 4;
  v38 = (*(v37 + 8))(v36);
  v39 = v38 + 4 * (*(*v36 + 24))(v36);
  v40 = *(this + 16);
  v41 = v40[4];
  v40 += 4;
  v77 = (*(v41 + 8))(v40);
  (*(*v40 + 24))(v40);
  v42 = *(this + 16);
  v43 = v42[4];
  v42 += 4;
  v75 = (*(v43 + 8))(v42);
  v74 = (*(*v42 + 24))(v42);
  v44 = *(this + 17);
  v45 = v44[4];
  v44 += 4;
  v76 = (*(v45 + 8))(v44);
  (*(*v44 + 24))(v44);
  v46 = *(this + 17);
  v47 = v46[4];
  v46 += 4;
  v73 = (*(v47 + 8))(v46);
  v72 = (*(*v46 + 24))(v46);
  v48 = (*(*(*(this + 18) + 32) + 8))();
  v49 = (*(*(*(this + 19) + 32) + 8))();
  v80 = PadFireflyJointNpcLcmCompensationWithDetectedPeak::jointNpLcmCompensation(this, v84, v83, v79, v78, v48, v85, &v91[1], *(this + 22), v11, v15, v35, v39, v49, v2, v91, (*(this + 22) + 1), v86);
  if (v80 == 1 && (PadFireflyJointNpcLcmCompensationWithDetectedPeak::cleanLcmTipRingNoTipDetected(this, v84, v83, v11, v15, v85, v2), (*(*(this + 26) + 4) & 1) == 0))
  {
    PadFireflyJointNpcLcmCompensationWithDetectedPeak::cleanLcmTipRingNoTipDetected(this, v18, v82, v24, v81, v85, v2);
    return 0;
  }

  else
  {
    v86[0] = 1;
    v50 = *(this + 22);
    *&v86[1] = *v50;
    v87 = *(this + 218);
    v88 = v87;
    if (v80 == 2)
    {
      v89 = 1;
    }

    v51 = PadFireflyJointNpcLcmCompensationWithDetectedPeak::jointNpLcmCompensation(this, v18, v82, v77, v75 + 4 * v74, v48, v85, &v90 + 1, (v50 + 2), v24, v81, v76, v73 + 4 * v72, v49, v2, &v90, (v50 + 3), v86);
    v52 = *(this + 26);
    if (*(v52 + 8) <= **(this + 25) || (v53 = *(v52 + 52), v53 > v87) && v53 > v88)
    {
      v54 = *(this + 20);
      *(v54 + 4) = 1;
      *v54 = 1065353216;
      *(*(this + 24) + 40) = *(v52 + 72);
    }

    if (v80)
    {
      if (v80 == 3)
      {
        *(*(this + 24) + 40) = *(v52 + 72);
        v56 = *(this + 20);
        v55 = *(this + 21);
        *(v56 + 4) = 1;
        *v56 = 1065353216;
        if (v85)
        {
          v57 = 0;
          v58 = *v55;
          do
          {
            v84[v57] = v84[v57] + (v58 * fmaxf(v48[v57], 0.0));
            ++v57;
          }

          while (v85 > v57);
        }

        if (v2)
        {
          v59 = 0;
          v60 = v55[1];
          do
          {
            v11[v59] = v11[v59] + (v60 * fmaxf(v49[v59], 0.0));
            ++v59;
          }

          while (v2 > v59);
        }

        if (v85)
        {
          v61 = 0;
          v62 = v55[2];
          do
          {
            v18[v61] = v18[v61] + (v62 * fmaxf(v48[v61], 0.0));
            ++v61;
          }

          while (v85 > v61);
        }

        if (v2)
        {
          v63 = 0;
          v64 = v55[3];
          do
          {
            v24[v63] = v24[v63] + (v64 * fmaxf(v49[v63], 0.0));
            ++v63;
          }

          while (v2 > v63);
        }
      }

      else
      {
        v55 = *(this + 21);
      }
    }

    else
    {
      v65 = v91[0];
      v55 = *(this + 21);
      *v55 = v91[1];
      v55[1] = v65;
      if (v51 == 3)
      {
        if (v85)
        {
          v66 = 0;
          v67 = v55[2];
          do
          {
            v18[v66] = v18[v66] + (v67 * fmaxf(v48[v66], 0.0));
            ++v66;
          }

          while (v85 > v66);
        }

        if (v2)
        {
          v68 = 0;
          v69 = v55[3];
          do
          {
            v24[v68] = v24[v68] + (v69 * fmaxf(v49[v68], 0.0));
            ++v68;
          }

          while (v2 > v68);
        }

        **(this + 20) = 1065353216;
      }

      else
      {
        v71 = v90;
        v55[2] = *(&v90 + 1);
        *(v55 + 3) = v71;
      }
    }

    *(this + 268) = *v55;
    *(this + 308) = *(v55 + 1);
    return 1;
  }
}

uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::jointNpLcmCompensation(unint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7, float *a8, _BYTE *a9, float *a10, uint64_t a11, uint64_t *a12, uint64_t a13, float *a14, unsigned __int8 a15, float *a16, unsigned __int8 *a17, unsigned __int8 *a18)
{
  v137 = a16;
  v139 = a15;
  v140 = a14;
  v133 = a12;
  v134 = a13;
  *&v143[2] = *MEMORY[0x277D85DE8];
  v20 = *a18;
  v21 = *(a1 + 208);
  if (*a18)
  {
    v22 = v21[18];
    v23 = v21[19];
    if (v21[4])
    {
      v24 = a17;
    }

    else
    {
      v25 = *a9;
      if (v25 <= v22 || (~v22 + a7) <= v25)
      {
        ++v22;
      }

      v24 = a17;
      v27 = *a17;
      if (v27 <= v23 || (~v23 + v139) <= v27)
      {
        ++v23;
      }
    }
  }

  else
  {
    v24 = a17;
    v22 = v21[16];
    v23 = v21[17];
  }

  *v143 = 0;
  v130 = v22;
  v131 = a8;
  v136 = a7;
  v135 = a6;
  v29 = PadFireflyJointNpcLcmCompensationWithDetectedPeak::estNpLcmParamsCleanLcm(a1, a2, a3, a4, a5, a7, a6, v22, 0.0, a8, v20, &v143[1], 0);
  v30 = v143[1];
  *a9 = v143[1];
  v138 = a18;
  v31 = *a18;
  v32 = 1;
  v132 = v23;
  v33 = v23;
  v34 = v139;
  v35 = PadFireflyJointNpcLcmCompensationWithDetectedPeak::estNpLcmParamsCleanLcm(a1, a10, a11, v133, v134, v139, v140, v33, 0.0, v137, v31, v143, 1u);
  v36 = v143[0];
  *v24 = v143[0];
  if (v29 != 1 && v35 != 1)
  {
    v133 = &v125;
    MEMORY[0x28223BE20](v35);
    v38 = &v125 - v37;
    TouchIdx = PadFireflyJointNpcLcmCompensationWithDetectedPeak::findTouchIdx(a1, v135, v136, &v125 - v37);
    v40 = *(a1 + 218);
    v41 = *(a1 + 218);
    if (TouchIdx)
    {
      v42 = TouchIdx;
      v43 = v38;
      v41 = *(a1 + 218);
      do
      {
        v44 = *v43++;
        v45 = v44 - v30;
        if (v44 - v30 < 0)
        {
          v45 = -v45;
        }

        if (v45 < v41)
        {
          v41 = v45;
        }

        --v42;
      }

      while (v42);
    }

    v127 = TouchIdx;
    v138[3] = v41;
    MEMORY[0x28223BE20](TouchIdx);
    v47 = &v125 - v46;
    v48 = PadFireflyJointNpcLcmCompensationWithDetectedPeak::findTouchIdx(a1, v140, v34, &v125 - v46);
    v49 = v40;
    if (v48)
    {
      v50 = v48;
      v51 = v47;
      v49 = v40;
      do
      {
        v52 = *v51++;
        v53 = v52 - v36;
        if (v52 - v36 < 0)
        {
          v53 = -v53;
        }

        if (v53 < v49)
        {
          v49 = v53;
        }

        --v50;
      }

      while (v50);
    }

    v128 = v48;
    v138[4] = v49;
    MEMORY[0x28223BE20](v48);
    v57 = &v125 - v56;
    LODWORD(v56) = *v58;
    v134 = v55;
    v126 = v56;
    v125 = v40;
    if (v56)
    {
      *v57 = v30;
      MEMORY[0x28223BE20](v54);
      v60 = &v125 - v59;
      *(&v125 - v59) = v36;
      v61 = 1;
      v129 = 1;
      v62 = v136;
    }

    else
    {
      v63 = *(v55 + 24);
      v62 = v136;
      TipIdx = PadFireflyJointNpcLcmCompensationWithDetectedPeak::findTipIdx(a1, a2, v136, v63, v57);
      v61 = TipIdx;
      MEMORY[0x28223BE20](TipIdx);
      v60 = &v125 - v65;
      v129 = PadFireflyJointNpcLcmCompensationWithDetectedPeak::findTipIdx(a1, a10, v139, v63, &v125 - v65);
    }

    v66 = v138[5];
    if (PadFireflyJointNpcLcmCompensationWithDetectedPeak::isTouchPresent(a1, v135, v62, v57, v61, v66) & 1) != 0 || (PadFireflyJointNpcLcmCompensationWithDetectedPeak::isTouchPresent(a1, v140, v139, v60, v129, v66))
    {
      if (v126)
      {
        LOBYTE(v68) = v132;
        v69 = v134;
        v70 = v127;
        v71 = v128;
      }

      else
      {
        v69 = v134;
        v67 = *(v134 + 28);
        LOBYTE(v68) = v132;
        v70 = v127;
        v71 = v128;
        if (**(a1 + 168) < v67 && (*(v134 + 4) & 1) == 0)
        {
          v72 = *(v134 + 76);
          v130 = (v130 - v72) & ~((v130 - v72) >> 31);
          v68 = (v132 - v72) & ~((v132 - v72) >> 31);
        }
      }

      v73 = 0;
      if (v70)
      {
        v74 = v130 + v57[v61 - 1] + 1;
        v75 = (*v57 + ~v130) & ~((*v57 + ~v130) >> 31);
        v76 = v70;
        v77 = v38;
        do
        {
          v79 = *v77++;
          v78 = v79;
          if (v79 < v75 || v78 > v74)
          {
            v38[v73++] = v78;
          }

          --v76;
        }

        while (v76);
      }

      v80 = 0;
      if (v71)
      {
        v81 = v68 + v60[v129 - 1] + 1;
        v82 = (*v60 + ~v68) & ~((*v60 + ~v68) >> 31);
        v83 = v71;
        v84 = v47;
        v85 = v139;
        do
        {
          v87 = *v84++;
          v86 = v87;
          if (v87 < v82 || v86 > v81)
          {
            v47[v80++] = v86;
          }

          --v83;
        }

        while (v83);
      }

      else
      {
        v85 = v139;
      }

      v88 = v80;
      if (v80 + v73 >= *(v69 + 32))
      {
        if (v73)
        {
          v89 = 0;
          do
          {
            a2[v38[v89]] = -a2[v38[v89]];
            ++v89;
          }

          while (v73 > v89);
        }

        v90 = v135;
        if (v88)
        {
          v91 = 0;
          do
          {
            a10[v47[v91]] = -a10[v47[v91]];
            ++v91;
          }

          while (v88 > v91);
        }

        v142 = 0;
        v141 = 0.0;
        PadFireflyJointNpcLcmCompensationWithDetectedPeak::gainEstimationCombinedAxis(a1, a2, a10, v90, v140, v38, v47, v73, *(v69 + 36), v67, v88, &v142 + 1, &v142, &v141);
        v92 = 0.0;
        if (v73)
        {
          v93 = v131;
          if (v88)
          {
            v94 = v134;
            v95 = v135;
            v96 = 0.0;
            if (*(v134 + 96))
            {
              v92 = v141;
              v96 = *&v142;
            }
          }

          else
          {
            v96 = 0.0;
            v94 = v134;
            v95 = v135;
          }
        }

        else
        {
          v96 = 0.0;
          v94 = v134;
          v95 = v135;
          v93 = v131;
        }

        v97 = *(&v142 + 1);
        *v93 = *(&v142 + 1) + v96;
        v98 = v97 + v92;
        v99 = v137;
        *v137 = v98;
        *v99 = v98 * *(v94 + 36);
        if (v73)
        {
          v100 = 0;
          do
          {
            a2[v38[v100]] = -a2[v38[v100]];
            ++v100;
          }

          while (v73 > v100);
        }

        v101 = v125;
        if (v88)
        {
          v102 = 0;
          do
          {
            a10[v47[v102]] = -a10[v47[v102]];
            ++v102;
          }

          while (v88 > v102);
        }

        v103 = v136;
        v104 = v138;
        if (v136)
        {
          v105 = 0;
          v106 = *v93;
          do
          {
            a2[v105] = a2[v105] + (v106 * fmaxf(v95[v105], 0.0));
            ++v105;
          }

          while (v103 > v105);
        }

        v107 = v140;
        if (v85)
        {
          v108 = 0;
          v109 = *v137;
          do
          {
            a10[v108] = a10[v108] + (v109 * fmaxf(v107[v108], 0.0));
            ++v108;
          }

          while (v85 > v108);
        }

        if (v101)
        {
          v110 = 0;
          v111 = a1 + 352;
          do
          {
            if (v110 < *(a1 + 217))
            {
              v112 = a2[v110];
              v113 = *v104;
              v114 = (*(*v111 + 8))(a1 + 352);
              (*(*v111 + 32))(a1 + 352);
              v115 = (*(*v111 + 24))(a1 + 352) * v113;
              *(v114 + 4 * (v110 + v115 * (*(*v111 + 32))(a1 + 352))) = v112;
            }

            if (v110 < *(a1 + 216))
            {
              v116 = a10[v110];
              v117 = *v104;
              v118 = (*(*v111 + 8))(a1 + 352);
              v119 = (*(*v111 + 32))(a1 + 352);
              v120 = (*(*v111 + 24))(a1 + 352) * v117;
              *(v118 + 4 * (v110 + v119 + v120 * (*(*v111 + 32))(a1 + 352))) = v116;
            }

            ++v110;
          }

          while (v110 < *(a1 + 218));
        }

        v121 = v136;
        if (v136)
        {
          v122 = 0;
          do
          {
            a2[v122] = fmaxf(a2[v122], 0.0);
            ++v122;
          }

          while (v121 > v122);
        }

        if (v85)
        {
          v123 = 0;
          do
          {
            a10[v123] = fmaxf(a10[v123], 0.0);
            ++v123;
          }

          while (v85 > v123);
        }

        return 0;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      *v131 = 0.0;
      *v137 = 0.0;
      return 2;
    }
  }

  return v32;
}

BOOL PadFireflyJointNpcLcmCompensationWithDetectedPeak::cleanLcmTipRingNoTipDetected(PadFireflyJointNpcLcmCompensationWithDetectedPeak *this, float *a2, float *a3, float *a4, float *a5, signed int a6, signed int a7)
{
  v36 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](this);
  v14 = (&v31 - v13);
  bzero(&v31 - v13, v15);
  bzero(a3, 4 * a6);
  bzero(a5, 4 * a7);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  bzero(&v31 - v17, v19);
  if (a6 <= a7)
  {
    v21 = a7;
  }

  else
  {
    v21 = a6;
  }

  if (v21)
  {
    v22 = 0;
    do
    {
      v18[v22] = v22;
      ++v22;
    }

    while (v21 > v22);
  }

  v34 = 0;
  v35 = 0;
  v23 = PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v20, v18, a6, v14, a2, &v34);
  if (v23 && a6)
  {
    v24 = 0;
    v25 = v34;
    v26 = *&v35;
    do
    {
      a2[v24] = a2[v24] - (v26 + ((*(&v25 + 1) * v24) + (*&v25 * (v24 * v24))));
      ++v24;
    }

    while (a6 > v24);
  }

  v32 = 0;
  v33 = 0;
  result = PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v23, v18, a7, v14, a4, &v32);
  if (result && a7)
  {
    v28 = 0;
    v29 = v32;
    v30 = *&v33;
    do
    {
      a4[v28] = a4[v28] - (v30 + ((*(&v29 + 1) * v28) + (*&v29 * (v28 * v28))));
      ++v28;
    }

    while (a7 > v28);
  }

  return result;
}

uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::estNpLcmParamsCleanLcm(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float *a7, unsigned int a8, float a9, uint64_t a10, unsigned __int8 a11, float *a12, unsigned __int8 a13)
{
  v66 = a8;
  v64 = a7;
  v68 = a12;
  v72 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v21 = &v62[-v20];
  bzero(&v62[-v20], v22);
  v67 = a1;
  v23 = *(a1 + 184);
  v65 = a11;
  if (a11)
  {
    v24 = 1094;
    if (a13)
    {
      v24 = 1095;
    }

    v25 = *(v23 + v24);
    *v68 = v25;
    v26 = 1088;
    if (!a13)
    {
      v26 = 1084;
    }

    v27 = *(v23 + v26);
    *v21 = v25;
    v28 = 1;
  }

  else
  {
    v47 = 1092;
    if (a13)
    {
      v47 = 1093;
    }

    v48 = *(v23 + v47);
    *v68 = v48;
    v49 = 1076;
    if (a13)
    {
      v49 = 1080;
    }

    if (((*(a5 + 4 * v48) * *(a5 + 4 * v48)) + (*(a4 + 4 * v48) * *(a4 + 4 * v48))) <= 0.0)
    {
      return 1;
    }

    v50 = *(v67 + 208);
    v51 = *(v50 + 80);
    v52 = (v48 - v51) & ~((v48 - v51) >> 31);
    v53 = v51 + v48;
    if (a6 - 1 < v53)
    {
      LOBYTE(v53) = a6 - 1;
    }

    if (v53 < v52)
    {
      return 1;
    }

    v28 = 0;
    v27 = *(v23 + v49);
    v54 = *v50;
    do
    {
      if (((*(a5 + 4 * v52) * *(a5 + 4 * v52)) + (*(a4 + 4 * v52) * *(a4 + 4 * v52))) >= v54)
      {
        v21[v28++] = v52;
      }

      LOBYTE(v52) = v52 + 1;
    }

    while (v52 <= v53);
    if (!v28)
    {
      return 1;
    }
  }

  v63 = a13;
  v30 = __sincosf_stret(v27 + a9);
  if (!a6)
  {
    return 2;
  }

  v31 = 0;
  do
  {
    a2[v31] = (v30.__sinval * *(a3 + 4 * v31)) + (a2[v31] * v30.__cosval);
    *(a3 + 4 * v31++) = 0;
  }

  while (a6 > v31);
  v32 = v67;
  (MEMORY[0x28223BE20])(v29);
  v36 = &v62[-v35];
  v37 = 0;
  v38 = 0;
  v39 = v21[v28 - 1];
  v40 = *v21;
  v41 = a6 - 1;
  v42 = v39 + v66;
  v43 = a6 - 1 >= v39 + v66 ? v39 + v66 : a6 - 1;
  v44 = v40 - v66;
  do
  {
    if (v44 > v37 || v43 < v37)
    {
      v36[v38++] = v37;
    }

    ++v37;
  }

  while (a6 != v37);
  if (!v38)
  {
    return 2;
  }

  v68 = v34;
  if (v65 == 1 && (**(v32 + 232) & 1) != 0)
  {
    memcpy(v70, v64, 4 * a6);
    v45 = memcpy(v69, a2, 4 * a6);
    if (v40 <= v66)
    {
      LOBYTE(v41) = 0;
      v69[0] = 0.0;
      v70[0] = 0.0;
    }

    else
    {
      if (v42 < v41)
      {
        goto LABEL_47;
      }

      v69[v41] = 0.0;
      v70[v41] = 0.0;
    }

    v36[v38++] = v41;
LABEL_47:
    if (!PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v45, v36, v38, v70, v69, v71))
    {
      return 3;
    }

    goto LABEL_40;
  }

  if (!PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v33, v36, v38, v64, a2, v71))
  {
    return 3;
  }

LABEL_40:
  v55 = 0;
  v56 = v71[2];
  *v68 = v71[3];
  v57 = v71[0];
  v58 = v71[1];
  do
  {
    a2[v55] = a2[v55] - (v56 + ((v58 * v55) + (v57 * (v55 * v55))));
    ++v55;
  }

  while (a6 > v55);
  v59 = *(v32 + 424);
  result = 0;
  if (*(v59 + 30) == v63)
  {
    v60 = v65;
    v61 = (v59 + 12 * v65);
    *v61 = v57;
    v61[1] = v58;
    v61[2] = v56;
    *(v59 + v60 + 56) = 1;
  }

  return result;
}