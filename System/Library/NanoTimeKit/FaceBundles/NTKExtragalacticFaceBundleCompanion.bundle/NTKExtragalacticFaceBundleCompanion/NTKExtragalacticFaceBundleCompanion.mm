uint64_t sub_23BE50238()
{
  qword_27E1DC240 = [MEMORY[0x277D2C050] fontDescriptorForSectName:@"__Extra" fromMachO:&dword_23BE4F000];

  return MEMORY[0x2821F96F8]();
}

double sub_23BE50288(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1DC250);
  if (qword_27E1DC258)
  {
    v3 = qword_27E1DC258 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_27E1DC260))
  {
    v5 = qword_27E1DC248;
  }

  else
  {
    qword_27E1DC258 = v2;
    qword_27E1DC260 = [v2 version];
    v5 = sub_23BE50338(qword_27E1DC260, v2);
    qword_27E1DC248 = v5;
  }

  os_unfair_lock_unlock(&unk_27E1DC250);

  return *&v5;
}

double sub_23BE50338(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_284E9B7E8;
  v7[1] = &unk_284E9B800;
  v8[0] = &unk_284E9BB60;
  v8[1] = &unk_284E9BB70;
  v7[2] = &unk_284E9B818;
  v7[3] = &unk_284E9B830;
  v8[2] = &unk_284E9BB80;
  v8[3] = &unk_284E9BB90;
  v7[4] = &unk_284E9B848;
  v7[5] = &unk_284E9B860;
  v8[4] = &unk_284E9BBA0;
  v8[5] = &unk_284E9BBB0;
  v7[6] = &unk_284E9B878;
  v8[6] = &unk_284E9BBC0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:7];
  [v2 constantValue:v3 withOverrides:279.72];
  v5 = v4;

  return v5;
}

void sub_23BE510B8(uint64_t a1, void *a2, uint64_t a3)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D2C020];
  v5 = a2;
  v6 = [v4 placementWithWatchOS12Group:12 zOrder:4000];
  v7 = v6;
  if (a3)
  {
    v13 = v6;
    v8 = &v13;
    v9 = 4000;
  }

  else
  {
    v14[0] = v6;
    v8 = v14;
    v9 = 8000;
  }

  v10 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:2 zOrder:4000];
  v8[1] = v10;
  v11 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:17 zOrder:v9];
  v8[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v5 setCurationPlacements:v12];
}

id sub_23BE51E40(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = [MEMORY[0x277CD9F90] layer];
  [v10 setActions:*(a1 + 32)];
  [v10 setFrame:{a2, a3, a4, a5}];

  return v10;
}

id sub_23BE51EC8(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v12 = a2;
  v13 = v11(v10, a3, a4, a5, a6);
  v14 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5A8]];
  [v13 setCompositingFilter:v14];

  v15 = [v12 CGColor];
  [v13 setFillColor:v15];

  return v13;
}

id sub_23BE51FA4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 16);
  v13 = a2;
  v14 = v12(v11, a3, a4, a5, a6);
  [v14 setLineWidth:*(*(a1 + 32) + 408)];
  [v14 setFillColor:0];
  v15 = [v13 CGColor];

  [v14 setStrokeColor:v15];

  return v14;
}

double sub_23BE52760(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1DC270);
  if (qword_27E1DC278)
  {
    v3 = qword_27E1DC278 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_27E1DC280))
  {
    v5 = qword_27E1DC268;
  }

  else
  {
    qword_27E1DC278 = v2;
    qword_27E1DC280 = [v2 version];
    v5 = sub_23BE52810(qword_27E1DC280, v2);
    qword_27E1DC268 = v5;
  }

  os_unfair_lock_unlock(&unk_27E1DC270);

  return *&v5;
}

double sub_23BE52810(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:2.25];
  v4 = v3;

  return v4;
}

void sub_23BE52864()
{
  v4[15] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB68] null];
  v3[0] = @"instanceTransform";
  v3[1] = @"contentsMultiplyColor";
  v4[0] = v0;
  v4[1] = v0;
  v3[2] = @"transform";
  v3[3] = @"hidden";
  v4[2] = v0;
  v4[3] = v0;
  v3[4] = @"position";
  v3[5] = @"opacity";
  v4[4] = v0;
  v4[5] = v0;
  v3[6] = @"instanceCount";
  v3[7] = @"instanceDelay";
  v4[6] = v0;
  v4[7] = v0;
  v3[8] = @"backgroundColor";
  v3[9] = @"path";
  v4[8] = v0;
  v4[9] = v0;
  v3[10] = @"contents";
  v3[11] = @"sublayers";
  v4[10] = v0;
  v4[11] = v0;
  v3[12] = @"string";
  v3[13] = @"fillColor";
  v4[12] = v0;
  v4[13] = v0;
  v3[14] = @"strokeColor";
  v4[14] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:15];
  v2 = qword_27E1DC288;
  qword_27E1DC288 = v1;
}

void sub_23BE529B0()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284E9B920;
  v2[1] = &unk_284E9B938;
  v3[0] = &unk_284E9B920;
  v3[1] = &unk_284E9B938;
  v2[2] = &unk_284E9B950;
  v2[3] = &unk_284E9B968;
  v3[2] = &unk_284E9B950;
  v3[3] = &unk_284E9B968;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = qword_27E1DC298;
  qword_27E1DC298 = v0;
}

void sub_23BE52A54()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284E9B920;
  v2[1] = &unk_284E9B938;
  v3[0] = &unk_284E9B920;
  v3[1] = &unk_284E9B938;
  v2[2] = &unk_284E9B950;
  v2[3] = &unk_284E9B968;
  v3[2] = &unk_284E9B968;
  v3[3] = &unk_284E9B968;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = qword_27E1DC2A8;
  qword_27E1DC2A8 = v0;
}

void sub_23BE53B28()
{
  v4[15] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB68] null];
  v3[0] = @"instanceTransform";
  v3[1] = @"contentsMultiplyColor";
  v4[0] = v0;
  v4[1] = v0;
  v3[2] = @"transform";
  v3[3] = @"hidden";
  v4[2] = v0;
  v4[3] = v0;
  v3[4] = @"position";
  v3[5] = @"opacity";
  v4[4] = v0;
  v4[5] = v0;
  v3[6] = @"instanceCount";
  v3[7] = @"instanceDelay";
  v4[6] = v0;
  v4[7] = v0;
  v3[8] = @"backgroundColor";
  v3[9] = @"path";
  v4[8] = v0;
  v4[9] = v0;
  v3[10] = @"contents";
  v3[11] = @"sublayers";
  v4[10] = v0;
  v4[11] = v0;
  v3[12] = @"string";
  v3[13] = @"fillColor";
  v4[12] = v0;
  v4[13] = v0;
  v3[14] = @"strokeColor";
  v4[14] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:15];
  v2 = qword_27E1DC2B8;
  qword_27E1DC2B8 = v1;
}

void sub_23BE54E60(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFilters:0];
  [v3 setFilters:*(a1 + 32)];
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}