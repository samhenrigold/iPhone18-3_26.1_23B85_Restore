void sub_26F1EE5C8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{a5, v17[0], v14}];
  v17[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v9 emitTMLSignal:v12 withArguments:v16];

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
}

IMP sub_26F1EE710(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EE7B8;
  v7[3] = &unk_279DC9078;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EE7B8(uint64_t a1, void *a2, void *a3, void *a4, float a5)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v13 = *(a1 + 32);
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v14;
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  *&v12 = a5;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:{v12, v18[0], v15}];
  v18[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  [v9 emitTMLSignal:v13 withArguments:v17];

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
}

IMP sub_26F1EE908(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EE9B0;
  v7[3] = &unk_279DC90A0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EE9B0(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:{a5, v17[0], v14}];
  v17[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v9 emitTMLSignal:v12 withArguments:v16];

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
}

IMP sub_26F1EEB00(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EEBA8;
  v7[3] = &unk_279DC90C8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EEBA8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v13[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v7 emitTMLSignal:v9 withArguments:v12];

  if (!v8)
  {
  }
}

IMP sub_26F1EECA8(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EED50;
  v7[3] = &unk_279DC90F0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EED50(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{a5, v17[0], v14}];
  v17[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v9 emitTMLSignal:v12 withArguments:v16];

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
}

IMP sub_26F1EEE98(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EEF40;
  v7[3] = &unk_279DC9118;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EEF40(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = v10;
  if (!v10)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{a4, v12}];
  v16[1] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v16[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v9 emitTMLSignal:v11 withArguments:v15];

  if (!v10)
  {
  }
}

IMP sub_26F1EF068(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EF110;
  v7[3] = &unk_279DC9140;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EF110(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  v13[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v7 emitTMLSignal:v9 withArguments:v12];

  if (!v8)
  {
  }
}

IMP sub_26F1EF210(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EF2B8;
  v7[3] = &unk_279DC9168;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EF2B8(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = *(a1 + 32);
  v14 = v12;
  if (!v12)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v15 = [TMLTypes convertPoint:a5, a6, v14];
  v18[1] = v15;
  v16 = [MEMORY[0x277CCAE60] valueWithPointer:a4];
  v18[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  [v11 emitTMLSignal:v13 withArguments:v17];

  if (!v12)
  {
  }
}

IMP sub_26F1EF3F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EF49C;
  v7[3] = &unk_279DC91F0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EF49C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = v10;
  if (!v10)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v20[0] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_26F1EF6D8;
  v19[3] = &unk_279DC9188;
  v19[4] = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26F1EF6F4;
  v18[3] = &unk_279DC91A8;
  v18[4] = a4;
  v13 = [TMLPointer pointerWithReadBlock:v19 writeBlock:v18];
  v20[1] = v13;
  v16[4] = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26F1EF778;
  v17[3] = &unk_279DC9188;
  v17[4] = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26F1EF784;
  v16[3] = &unk_279DC91C8;
  v14 = [TMLPointer pointerWithReadBlock:v17 writeBlock:v16];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  [v9 emitTMLSignal:v11 withArguments:v15];

  if (!v10)
  {
  }
}

void sub_26F1EF6F4(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v9 CGRectValue];
    [v4 CGRectValue];
    *v3 = v5;
    v3[1] = v6;
    v3[2] = v7;
    v3[3] = v8;
  }
}

IMP sub_26F1EF78C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EF834;
  v7[3] = &unk_279DC9218;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EF834(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = v10;
  if (!v10)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{a4, v12}];
  v16[1] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:a5];
  v16[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v9 emitTMLSignal:v11 withArguments:v15];

  if (!v10)
  {
  }
}

IMP sub_26F1EF95C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EFA04;
  v7[3] = &unk_279DC9240;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EFA04(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{a4, v13}];
  v17[1] = v14;
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v9 emitTMLSignal:v12 withArguments:v16];

  if (!v11)
  {
  }

  if (!v10)
  {
  }
}

IMP sub_26F1EFB44(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EFBEC;
  v7[3] = &unk_279DC9268;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EFBEC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = *(a1 + 32);
  v15 = v12;
  if (!v12)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v20[0] = v15;
  v16 = v13;
  if (!v13)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v20[1] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v20[2] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v20[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  [v11 emitTMLSignal:v14 withArguments:v19];

  if (!v13)
  {

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_7:
}

IMP sub_26F1EFD5C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EFE04;
  v7[3] = &unk_279DC9290;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EFE04(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = *(a1 + 32);
  v15 = v12;
  if (!v12)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v20[0] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  v20[1] = v16;
  v17 = v13;
  if (!v13)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v20[2] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithBool:a6];
  v20[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  [v11 emitTMLSignal:v14 withArguments:v19];

  if (!v13)
  {
  }

  if (!v12)
  {
  }
}

IMP sub_26F1EFF6C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F0014;
  v7[3] = &unk_279DC92B8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1F0014(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v26 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25 = *(a1 + 32);
  v18 = v13;
  if (!v13)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v24 = v18;
  v27[0] = v18;
  v19 = v14;
  if (!v14)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v27[1] = v19;
  v20 = v15;
  if (!v15)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v27[2] = v20;
  v21 = v16;
  if (!v16)
  {
    v21 = [MEMORY[0x277CBEB68] null];
  }

  v27[3] = v21;
  v22 = v17;
  if (!v17)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v27[4] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
  [v26 emitTMLSignal:v25 withArguments:v23];

  if (v17)
  {
    if (v16)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v16)
    {
LABEL_13:
      if (v15)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  if (v15)
  {
LABEL_14:
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v13)
    {
      goto LABEL_16;
    }

LABEL_21:

    goto LABEL_16;
  }

LABEL_19:

  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_16:
}

IMP sub_26F1F01FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F02A4;
  v7[3] = &unk_279DC92E0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F02A4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v23[0] = v14;
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v23[1] = v15;
  v16 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v23[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v22 = 0;
  [v9 emitTMLSignal:v13 withArguments:v17 returnValue:&v22];
  v18 = v22;

  if (v12)
  {
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (v10)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  [v18 CGSizeValue];
  v20 = v19;

  return v20;
}

IMP sub_26F1F0444(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F04EC;
  v7[3] = &unk_279DC9308;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1F04EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v14 = *(a1 + 32);
  v15 = v12;
  if (!v12)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v16 = [TMLTypes convertRange:a4, a5, v15];
  v19[1] = v16;
  v17 = v13;
  if (!v13)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v19[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  [v11 emitTMLSignal:v14 withArguments:v18];

  if (!v13)
  {
  }

  if (!v12)
  {
  }
}

IMP sub_26F1F0634(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F06DC;
  v7[3] = &unk_279DC9330;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F06DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [a2 emitTMLSignal:v2 withArguments:0 returnValue:&v5];
  v3 = v5;

  return v3;
}

IMP sub_26F1F0724(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F07CC;
  v7[3] = &unk_279DC9358;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F07CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = 0;
  [a2 emitTMLSignal:v2 withArguments:0 returnValue:&v7];
  v3 = v7;
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

IMP sub_26F1F082C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F08D4;
  v7[3] = &unk_279DC9358;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F08D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  [a2 emitTMLSignal:v2 withArguments:0 returnValue:&v6];
  v3 = v6;
  v4 = [v3 integerValue];

  return v4;
}

IMP sub_26F1F0934(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F09DC;
  v7[3] = &unk_279DC9380;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F09DC(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = 0;
  [v5 emitTMLSignal:v7 withArguments:v9 returnValue:&v13];
  v10 = v13;
  v11 = v13;

  if (!v6)
  {
  }

  return v10;
}

IMP sub_26F1F0AD0(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F0B78;
  v7[3] = &unk_279DC93A8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F0B78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v11;
  v12 = v9;
  if (!v9)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v18[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v17 = 0;
  [v7 emitTMLSignal:v10 withArguments:v13 returnValue:&v17];
  v14 = v17;
  v15 = v17;

  if (!v9)
  {

    if (v8)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:

  return v14;
}

IMP sub_26F1F0CB4(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F0D5C;
  v7[3] = &unk_279DC93D0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F0D5C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v22[0] = v14;
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v22[1] = v15;
  v16 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v22[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v21 = 0;
  [v9 emitTMLSignal:v13 withArguments:v17 returnValue:&v21];
  v18 = v21;
  v19 = v21;

  if (v12)
  {
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (v10)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:

  return v18;
}

IMP sub_26F1F0EDC(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F0F84;
  v7[3] = &unk_279DC93F8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F0F84(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v16 = 0;
  [v7 emitTMLSignal:v9 withArguments:v12 returnValue:&v16];
  v13 = v16;
  v14 = v16;

  if (!v8)
  {
  }

  return v13;
}

IMP sub_26F1F109C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F1144;
  v7[3] = &unk_279DC9420;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F1144(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = v10;
  if (!v10)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v20[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v20[1] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v19 = 0;
  [v9 emitTMLSignal:v11 withArguments:v15 returnValue:&v19];
  v16 = v19;
  v17 = v19;

  if (!v10)
  {
  }

  return v16;
}

IMP sub_26F1F1284(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F132C;
  v7[3] = &unk_279DC9448;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F132C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *(a1 + 32);
  v16 = v11;
  if (!v11)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v26[0] = v16;
  v17 = v12;
  if (!v12)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v26[1] = v17;
  v18 = v13;
  if (!v13)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v26[2] = v18;
  v19 = v14;
  if (!v14)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v26[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v25 = 0;
  [v24 emitTMLSignal:v15 withArguments:v20 returnValue:&v25];
  v21 = v25;
  v22 = v25;

  if (v14)
  {
    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v13)
    {
LABEL_11:
      if (v12)
      {
        goto LABEL_12;
      }

LABEL_16:

      if (v11)
      {
        goto LABEL_13;
      }

LABEL_17:

      goto LABEL_13;
    }
  }

  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_13:

  return v21;
}

IMP sub_26F1F14EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F1594;
  v7[3] = &unk_279DC9470;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F1594(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v14 = *(a1 + 32);
  v15 = v12;
  if (!v12)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v24[0] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v24[1] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v24[2] = v17;
  v18 = v13;
  if (!v13)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v24[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v23 = 0;
  [v11 emitTMLSignal:v14 withArguments:v19 returnValue:&v23];
  v20 = v23;
  v21 = v23;

  if (!v13)
  {
  }

  if (!v12)
  {
  }

  return v20;
}

IMP sub_26F1F1714(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F17BC;
  v7[3] = &unk_279DC9498;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

id sub_26F1F17BC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = *(a1 + 32);
  v16 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v25[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v25[1] = v17;
  v18 = v13;
  if (!v13)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v25[2] = v18;
  v19 = v14;
  if (!v14)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v25[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v24 = 0;
  [v11 emitTMLSignal:v15 withArguments:v20 returnValue:&v24];
  v21 = v24;
  v22 = v24;

  if (v14)
  {
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  if (!v12)
  {
  }

  return v21;
}

IMP sub_26F1F195C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F1A04;
  v7[3] = &unk_279DC9118;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1F1A04(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = v10;
  if (!v10)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{a4, v12}];
  v16[1] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v16[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v9 emitTMLSignal:v11 withArguments:v15];

  if (!v10)
  {
  }
}

IMP sub_26F1F1B2C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F1BD4;
  v7[3] = &unk_279DC94C0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F1BD4(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = 0;
  [v5 emitTMLSignal:v7 withArguments:v9 returnValue:&v13];
  v10 = v13;

  if (!v6)
  {
  }

  v11 = [v10 integerValue];

  return v11;
}

IMP sub_26F1F1CD8(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F1D80;
  v7[3] = &unk_279DC94E8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F1D80(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = 0;
  [v5 emitTMLSignal:v7 withArguments:v9 returnValue:&v13];
  v10 = v13;

  if (!v6)
  {
  }

  v11 = [v10 unsignedIntegerValue];

  return v11;
}

IMP sub_26F1F1E84(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F1F2C;
  v7[3] = &unk_279DC9510;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F1F2C(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = 0;
  [v5 emitTMLSignal:v7 withArguments:v9 returnValue:&v14];
  v10 = v14;

  if (!v6)
  {
  }

  [v10 CGRectValue];
  v12 = v11;

  return v12;
}

IMP sub_26F1F2058(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F2100;
  v7[3] = &unk_279DC9538;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F2100(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v16 = 0;
  [v7 emitTMLSignal:v9 withArguments:v12 returnValue:&v16];
  v13 = v16;

  if (!v8)
  {
  }

  v14 = [v13 integerValue];

  return v14;
}

IMP sub_26F1F2228(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F22D0;
  v7[3] = &unk_279DC9560;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F22D0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v16 = 0;
  [v7 emitTMLSignal:v9 withArguments:v12 returnValue:&v16];
  v13 = v16;

  if (!v8)
  {
  }

  v14 = [v13 BOOLValue];

  return v14;
}

IMP sub_26F1F23F8(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F24A0;
  v7[3] = &unk_279DC9588;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F24A0(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = 0;
  [v5 emitTMLSignal:v7 withArguments:v9 returnValue:&v13];
  v10 = v13;

  if (!v6)
  {
  }

  v11 = [v10 BOOLValue];

  return v11;
}

IMP sub_26F1F25A4(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F264C;
  v7[3] = &unk_279DC95B0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F264C(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = 0;
  [v5 emitTMLSignal:v7 withArguments:v9 returnValue:&v14];
  v10 = v14;

  if (!v6)
  {
  }

  [v10 doubleValue];
  v12 = v11;

  return v12;
}

IMP sub_26F1F2758(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F2800;
  v7[3] = &unk_279DC95D8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F2800(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = v10;
  if (!v10)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v20[0] = v12;
  v13 = [TMLTypes convertPoint:a4, a5];
  v20[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v19 = 0;
  [v9 emitTMLSignal:v11 withArguments:v14 returnValue:&v19];
  v15 = v19;

  if (!v10)
  {
  }

  [v15 CGPointValue];
  v17 = v16;

  return v17;
}

IMP sub_26F1F2940(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F29E8;
  v7[3] = &unk_279DC9600;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F29E8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v14 = *(a1 + 32);
  v15 = v12;
  if (!v12)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v23[0] = v15;
  v16 = [TMLTypes convertRange:a4, a5];
  v23[1] = v16;
  v17 = v13;
  if (!v13)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v23[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v22 = 0;
  [v11 emitTMLSignal:v14 withArguments:v18 returnValue:&v22];
  v19 = v22;

  if (!v13)
  {
  }

  if (!v12)
  {
  }

  v20 = [v19 BOOLValue];

  return v20;
}

IMP sub_26F1F2B58(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F2C00;
  v7[3] = &unk_279DC9628;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F2C00(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = *(a1 + 32);
  v15 = v12;
  if (!v12)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v23[0] = v15;
  v16 = v13;
  if (!v13)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v23[1] = v16;
  v17 = [TMLTypes convertRange:a5, a6];
  v23[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v22 = 0;
  [v11 emitTMLSignal:v14 withArguments:v18 returnValue:&v22];
  v19 = v22;

  if (!v13)
  {

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = [v19 BOOLValue];

  return v20;
}

IMP sub_26F1F2D78(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F2E20;
  v7[3] = &unk_279DC9650;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F2E20(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v21[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v21[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v21[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v20 = 0;
  [v9 emitTMLSignal:v12 withArguments:v16 returnValue:&v20];
  v17 = v20;

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = [v17 integerValue];

  return v18;
}

IMP sub_26F1F2F90(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F3038;
  v7[3] = &unk_279DC9678;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F3038(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v21[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v21[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v21[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v20 = 0;
  [v9 emitTMLSignal:v12 withArguments:v16 returnValue:&v20];
  v17 = v20;

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = [v17 BOOLValue];

  return v18;
}

IMP sub_26F1F31A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F3250;
  v7[3] = &unk_279DC9678;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F3250(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v21[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v21[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v21[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v20 = 0;
  [v9 emitTMLSignal:v12 withArguments:v16 returnValue:&v20];
  v17 = v20;

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = [v17 BOOLValue];

  return v18;
}

IMP sub_26F1F33C0(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F3468;
  v7[3] = &unk_279DC96A0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F3468(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v22[0] = v14;
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v22[1] = v15;
  v16 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v22[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v21 = 0;
  [v9 emitTMLSignal:v13 withArguments:v17 returnValue:&v21];
  v18 = v21;

  if (v12)
  {
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (v10)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = [v18 BOOLValue];

  return v19;
}

IMP sub_26F1F35F8(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F36A0;
  v7[3] = &unk_279DC96C8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F36A0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v22[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v22[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v22[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v21 = 0;
  [v9 emitTMLSignal:v12 withArguments:v16 returnValue:&v21];
  v17 = v21;

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  [v17 doubleValue];
  v19 = v18;

  return v19;
}

IMP sub_26F1F3818(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F38C0;
  v7[3] = &unk_279DC96F0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F38C0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v22[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v22[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v22[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v21 = 0;
  [v9 emitTMLSignal:v12 withArguments:v16 returnValue:&v21];
  v17 = v21;

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  [v17 UIEdgeInsetsValue];
  v19 = v18;

  return v19;
}

IMP sub_26F1F3A58(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F3B00;
  v7[3] = &unk_279DC9718;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F3B00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v19[0] = v11;
  v12 = v9;
  if (!v9)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v19[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v18 = 0;
  [v7 emitTMLSignal:v10 withArguments:v13 returnValue:&v18];
  v14 = v18;

  if (!v9)
  {

    if (v8)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:
  [v14 doubleValue];
  v16 = v15;

  return v16;
}

IMP sub_26F1F3C54(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F3CFC;
  v7[3] = &unk_279DC9740;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F3CFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v11;
  v12 = v9;
  if (!v9)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v18[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v17 = 0;
  [v7 emitTMLSignal:v10 withArguments:v13 returnValue:&v17];
  v14 = v17;

  if (!v9)
  {

    if (v8)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = [v14 integerValue];

  return v15;
}

IMP sub_26F1F3E48(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F3EF0;
  v7[3] = &unk_279DC9768;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F3EF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v11;
  v12 = v9;
  if (!v9)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v18[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v17 = 0;
  [v7 emitTMLSignal:v10 withArguments:v13 returnValue:&v17];
  v14 = v17;

  if (!v9)
  {

    if (v8)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = [v14 BOOLValue];

  return v15;
}

IMP sub_26F1F403C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F40E4;
  v7[3] = &unk_279DC9790;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F40E4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v18[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v17 = 0;
  [v7 emitTMLSignal:v9 withArguments:v12 returnValue:&v17];
  v13 = v17;

  if (!v8)
  {
  }

  [v13 doubleValue];
  v15 = v14;

  return v15;
}

IMP sub_26F1F4214(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F42BC;
  v7[3] = &unk_279DC97B8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F42BC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = a2;
  v12 = [TMLTypes convertRect:a3, a4, a5, a6];
  v19[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v18 = 0;
  [v11 emitTMLSignal:v10 withArguments:v13 returnValue:&v18];

  v14 = v18;
  [v14 CGRectValue];
  v16 = v15;

  return v16;
}

IMP sub_26F1F43E4(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F448C;
  v7[3] = &unk_279DC97E0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F448C(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 32);
  v19 = a2;
  v20 = [TMLTypes convertRect:a3, a4, a5, a6];
  v28[0] = v20;
  v21 = [TMLTypes convertRect:a7, a8, a9, a10];
  v28[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v27 = 0;
  [v19 emitTMLSignal:v18 withArguments:v22 returnValue:&v27];

  v23 = v27;
  [v23 CGRectValue];
  v25 = v24;

  return v25;
}

IMP sub_26F1F4604(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F46AC;
  v7[3] = &unk_279DC9808;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F46AC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v22[0] = v13;
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v22[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v22[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v21 = 0;
  [v9 emitTMLSignal:v12 withArguments:v16 returnValue:&v21];
  v17 = v21;

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  [v17 CGSizeValue];
  v19 = v18;

  return v19;
}

IMP sub_26F1F482C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F48D4;
  v7[3] = &unk_279DC9830;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

double sub_26F1F48D4(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v21 = a2;
  v22 = a3;
  v23 = *(a1 + 32);
  v24 = v22;
  if (!v22)
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v33[0] = v24;
  v25 = [TMLTypes convertRect:a4, a5, a6, a7];
  v33[1] = v25;
  v26 = [TMLTypes convertRect:a8, a9, a10, a11];
  v33[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v32 = 0;
  [v21 emitTMLSignal:v23 withArguments:v27 returnValue:&v32];
  v28 = v32;

  if (!v22)
  {
  }

  [v28 CGRectValue];
  v30 = v29;

  return v30;
}

IMP sub_26F1F4A8C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F4B34;
  v7[3] = &unk_279DC9858;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F4B34(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = *(a1 + 32);
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v25[0] = v15;
  v16 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v25[1] = v16;
  v17 = v13;
  if (!v13)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v25[2] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithBool:a6];
  v25[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v24 = 0;
  [v23 emitTMLSignal:v14 withArguments:v19 returnValue:&v24];
  v20 = v24;

  if (v13)
  {
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (v11)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_10:
  v21 = [v20 BOOLValue];

  return v21;
}

IMP sub_26F1F4CEC(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1F4D94;
  v7[3] = &unk_279DC9880;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

uint64_t sub_26F1F4D94(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = *(a1 + 32);
  v17 = v14;
  if (!v14)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v26[0] = v17;
  v18 = v15;
  if (!v15)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v26[1] = v18;
  v19 = [TMLTypes convertRange:a5, a6];
  v26[2] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  v26[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v25 = 0;
  [v13 emitTMLSignal:v16 withArguments:v21 returnValue:&v25];
  v22 = v25;

  if (!v15)
  {

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = [v22 BOOLValue];

  return v23;
}

char *sub_26F1F5178(uint64_t a1, id a2, uint64_t a3)
{
  v6 = a2;
  result = strdup([a2 UTF8String]);
  *(*(*(a1 + 32) + 40) + 8 * a3) = result;
  return result;
}

void sub_26F1F5750(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_19 length:strlen(a83847776000000_19) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F1F7424(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:@"state"])
  {
    if ([v5 type] != 5)
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = MEMORY[0x277CCACA8];
      v8 = [v5 description];
      v9 = [v7 stringWithFormat:@"State property type is unexpected %@", v8];
      v14 = @"property";
      v15[0] = v5;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v6 exceptionWithName:@"TMLRuntimeException" reason:v9 userInfo:v10];
      v12 = v11;

      objc_exception_throw(v11);
    }
  }

  else
  {
    [*(a1 + 32) verifyStateProperty:v5 withClass:*(a1 + 40)];
  }
}

void sub_26F1F758C(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([a2 isEqualToString:@"state"] & 1) == 0)
  {
    attributes = xmmword_279DC98A0;
    v47 = xmmword_279DC98B0;
    v6 = *(a1 + 32);
    v7 = [v5 propertyName];
    class_addProperty(v6, [v7 UTF8String], &attributes, 2u);

    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 propertyName];
    v10 = [v8 stringWithFormat:@"%@ForState:", v9];

    v11 = NSSelectorFromString(v10);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_26F1F7988;
    v45[3] = &unk_279DC98C0;
    v45[4] = v11;
    v12 = MEMORY[0x27438BB60](v45);
    v13 = imp_implementationWithBlock(v12);

    v14 = MEMORY[0x277CCACA8];
    v15 = [v5 propertyName];
    v16 = [v15 substringToIndex:1];
    v17 = [v16 capitalizedString];
    v18 = [v5 propertyName];
    v19 = [v18 substringFromIndex:1];
    v20 = [v14 stringWithFormat:@"get%@%@", v17, v19];

    v21 = *(a1 + 32);
    v22 = NSSelectorFromString(v20);
    class_addMethod(v21, v22, v13, "@@:");
    v23 = MEMORY[0x277CCACA8];
    v24 = [v5 propertyName];
    v25 = [v24 substringToIndex:1];
    v26 = [v25 capitalizedString];
    v27 = [v5 propertyName];
    v28 = [v27 substringFromIndex:1];
    [v23 stringWithFormat:@"%@%@", v26, v28];
    v29 = v43 = a1;
    v30 = [v23 stringWithFormat:@"set%@:forState:", v29];

    v31 = NSSelectorFromString(v30);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_26F1F7A24;
    v44[3] = &unk_279DC98E0;
    v44[4] = v31;
    v32 = MEMORY[0x27438BB60](v44);
    v33 = imp_implementationWithBlock(v32);

    v34 = MEMORY[0x277CCACA8];
    v35 = [v5 propertyName];
    v36 = [v35 substringToIndex:1];
    v37 = [v36 capitalizedString];
    v38 = [v5 propertyName];
    v39 = [v38 substringFromIndex:1];
    v40 = [v34 stringWithFormat:@"set%@%@:", v37, v39];

    v41 = *(v43 + 32);
    v42 = NSSelectorFromString(v40);
    class_addMethod(v41, v42, v33, "v@:@");
  }
}

id sub_26F1F7988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tmlParent];
  if (v4)
  {
    v5 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v5, *(a1 + 32));
    v7 = (MethodImplementation)(v4, *(a1 + 32), [v3 state]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_26F1F7A24(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 tmlParent];
  if (v6)
  {
    v7 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v7, *(a1 + 32));
    (MethodImplementation)(v6, *(a1 + 32), v5, [v9 state]);
  }
}

id sub_26F1F8014(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc_init(TMLContext);
  [(TMLContext *)v4 loadSourceFromPath:v3];
  v5 = [(TMLContext *)v4 rootObject];
  v6 = [TMLWeakReferenceObject weakReferenceWithObject:v5];
  v7 = [v5 tmlIdentifier];
  [(TMLContext *)v4 addObject:v6 withIdentifier:v7];

  objc_setAssociatedObject(v5, "c", v4, 1);
  objc_initWeak(&location, v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F1F818C;
  v9[3] = &unk_279DC6368;
  objc_copyWeak(&v10, &location);
  [TMLObjectFinalizer runBlock:v9 onFinalize:v5];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v5;
}

void sub_26F1F8170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F1F818C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispose];
}

void sub_26F1F81CC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [v3 setObject:&unk_287F2E3A0 forKeyedSubscript:@"url"];
  v4 = [v3 objectForKeyedSubscript:@"url"];

  [v4 setObject:&unk_287F2E3C0 forKeyedSubscript:@"components"];
}

id sub_26F1F8254(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 length])
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_26F1F82D8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 length])
  {
    v3 = [MEMORY[0x277CCACE0] componentsWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_26F1F835C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 queryItems];
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 value];
          v11 = [v10 stringByRemovingPercentEncoding];

          if (v11)
          {
            v12 = [v9 name];
            [v3 setObject:v11 forKeyedSubscript:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_26F1F8548(void *a1, uint64_t a2, void *a3, void *a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [a1 withQueryParameters:v9];

  return v10;
}

id sub_26F1F8614(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (qword_2806D9378 != -1)
  {
    sub_26F201794();
  }

  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v7 = [v6 percentEncodedQuery];
  [v6 setQuery:v7];

  v8 = [v6 queryItems];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_26F1F8990;
    v20[3] = &unk_279DC6340;
    v10 = v9;
    v21 = v10;
    [v4 enumerateKeysAndObjectsUsingBlock:v20];
    if ([v10 count])
    {
      v23[0] = v5;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      [v10 sortUsingDescriptors:v11];

      [v6 setQueryItems:v10];
    }

    v12 = v21;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_26F1F8BFC;
    v18[3] = &unk_279DC6340;
    v12 = v13;
    v19 = v12;
    [v4 enumerateKeysAndObjectsUsingBlock:v18];
    if ([v12 count])
    {
      v22 = v5;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      [v12 sortUsingDescriptors:v14];

      [v6 setQueryItems:v12];
    }
  }

  v15 = [v6 query];
  [v6 setPercentEncodedQuery:v15];

  v16 = [v6 URL];

  return v16;
}

void sub_26F1F88FC()
{
  v0 = MEMORY[0x277CCAB50];
  v1 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v2 = [v1 bitmapRepresentation];
  v3 = [v0 characterSetWithBitmapRepresentation:v2];

  [v3 removeCharactersInString:{@"!*'();:@&=+$, /?%#[]"}];
  v4 = qword_2806D9370;
  qword_2806D9370 = v3;
}

void sub_26F1F8990(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 stringValue];

    v6 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:qword_2806D9370];

    v9 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:qword_2806D9370];

    v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:v8 value:v9];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = [*(a1 + 32) count];
    v11 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_26F1F8B94;
    v15[3] = &unk_279DC9968;
    v5 = v8;
    v16 = v5;
    v17 = *(a1 + 32);
    v18 = &v19;
    [v11 enumerateObjectsWithOptions:2 usingBlock:v15];
    v12 = v20[3];
    v13 = [*(a1 + 32) count];
    v14 = *(a1 + 32);
    if (v12 >= v13)
    {
      [v14 addObject:v10];
    }

    else
    {
      [v14 insertObject:v10 atIndex:v20[3]];
    }

    _Block_object_dispose(&v19, 8);
    v6 = v9;
  }
}

void sub_26F1F8B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F1F8B94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 name];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) removeObjectAtIndex:a3];
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }
}

void sub_26F1F8BFC(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 stringValue];

    v5 = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:qword_2806D9370];

    v8 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:qword_2806D9370];

    v9 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:v7 value:v8];
    [*(a1 + 32) addObject:v9];

    v5 = v8;
    v10 = v7;
  }
}

id sub_26F1F8D14(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isObject])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:0];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [v5 queryItems];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_26F1F8EF4;
    v22 = &unk_279DC9990;
    v23 = v4;
    v8 = v6;
    v24 = v8;
    [v7 enumerateObjectsUsingBlock:&v19];

    v9 = [v8 count];
    v10 = [v5 queryItems];
    v11 = [v10 count];

    if (v9 == v11)
    {
      v12 = a1;
    }

    else
    {
      [v5 setQueryItems:v8];
      v12 = [v5 URL];
    }

    v17 = v12;
  }

  else
  {
    v13 = MEMORY[0x277CD4658];
    v14 = [MEMORY[0x277CD4640] currentContext];
    v15 = [v13 valueWithNewErrorFromMessage:@"Callback is not a function" inContext:v14];
    v16 = [MEMORY[0x277CD4640] currentContext];
    [v16 setException:v15];

    v17 = a1;
  }

  return v17;
}

void sub_26F1F8EF4(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 name];
  v10[0] = v5;
  v6 = [v3 value];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v4 callWithArguments:v7];
  v9 = [v8 toBool];

  if (v9)
  {
    [*(a1 + 40) addObject:v3];
  }
}

id sub_26F1F8FEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = [a1 URLByAppendingPathComponent:?];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

void sub_26F1F95A0()
{
  v0 = qword_2806D9380;
  qword_2806D9380 = &unk_287F57518;
}

void sub_26F1F971C()
{
  v30[36] = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
  v29[0] = v28;
  v30[0] = &unk_287F56F90;
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"f"];
  v29[1] = v27;
  v30[1] = &unk_287F56FA8;
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"d"];
  v29[2] = v26;
  v30[2] = &unk_287F56FC0;
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"q"];
  v29[3] = v25;
  v30[3] = &unk_287F56FD8;
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"i"];
  v29[4] = v24;
  v30[4] = &unk_287F56FD8;
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"q"];
  v29[5] = v23;
  v30[5] = &unk_287F56FD8;
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Q"];
  v29[6] = v22;
  v30[6] = &unk_287F56FF0;
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"I"];
  v29[7] = v21;
  v30[7] = &unk_287F56FF0;
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Q"];
  v29[8] = v20;
  v30[8] = &unk_287F57008;
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Q"];
  v29[9] = v19;
  v30[9] = &unk_287F56FF0;
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGSize=dd}"];
  v29[10] = v18;
  v30[10] = &unk_287F57098;
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v29[11] = v17;
  v30[11] = &unk_287F570B0;
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGPoint=dd}"];
  v29[12] = v16;
  v30[12] = &unk_287F570C8;
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGVector=dd}"];
  v29[13] = v15;
  v30[13] = &unk_287F570E0;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{UIOffset=dd}"];
  v29[14] = v14;
  v30[14] = &unk_287F57230;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGAffineTransform=dddddd}"];
  v29[15] = v13;
  v30[15] = &unk_287F570F8;
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CATransform3D=dddddddddddddddd}"];
  v29[16] = v12;
  v30[16] = &unk_287F57110;
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{UIEdgeInsets=dddd}"];
  v29[17] = v0;
  v30[17] = &unk_287F57128;
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{NSDirectionalEdgeInsets=dddd}"];
  v29[18] = v1;
  v30[18] = &unk_287F57140;
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{_NSRange=QQ}"];
  v29[19] = v2;
  v30[19] = &unk_287F57158;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v29[20] = v3;
  v30[20] = &unk_287F57218;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"#"];
  v29[21] = v4;
  v30[21] = &unk_287F57218;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^v"];
  v29[22] = v5;
  v30[22] = &unk_287F57020;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^{CGColor=}"];
  v29[23] = v6;
  v30[23] = &unk_287F57020;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^{CGPath=}"];
  v29[24] = v7;
  v30[24] = &unk_287F57020;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^@"];
  v29[25] = v8;
  v30[25] = &unk_287F571E8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"v"];
  v29[26] = v9;
  v29[27] = @"@NSString";
  v30[26] = &unk_287F56F78;
  v30[27] = &unk_287F57038;
  v29[28] = @"@NSAttributedString";
  v29[29] = @"@NSURL";
  v30[28] = &unk_287F57050;
  v30[29] = &unk_287F57188;
  v29[30] = @"@NSArray";
  v29[31] = @"@NSDictionary";
  v30[30] = &unk_287F571A0;
  v30[31] = &unk_287F571B8;
  v29[32] = @"@TMLBlock";
  v29[33] = @"@UIColor";
  v30[32] = &unk_287F571A0;
  v30[33] = &unk_287F57068;
  v29[34] = @"@UIFont";
  v29[35] = @"@UIImage";
  v30[34] = &unk_287F57080;
  v30[35] = &unk_287F57170;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:36];
  v11 = qword_2806D9390;
  qword_2806D9390 = v10;
}

void sub_26F1F9DA4()
{
  v32[29] = *MEMORY[0x277D85DE8];
  v31[0] = &unk_287F56F78;
  v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"v"];
  v32[0] = v30;
  v31[1] = &unk_287F56F90;
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
  v32[1] = v29;
  v31[2] = &unk_287F56FA8;
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"f"];
  v32[2] = v28;
  v31[3] = &unk_287F56FC0;
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"d"];
  v32[3] = v27;
  v31[4] = &unk_287F56FD8;
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"q"];
  v32[4] = v26;
  v31[5] = &unk_287F56FF0;
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Q"];
  v32[5] = v25;
  v31[6] = &unk_287F57008;
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Q"];
  v32[6] = v24;
  v31[7] = &unk_287F57098;
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGSize=dd}"];
  v32[7] = v23;
  v31[8] = &unk_287F570B0;
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v32[8] = v22;
  v31[9] = &unk_287F570C8;
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGPoint=dd}"];
  v32[9] = v21;
  v31[10] = &unk_287F570E0;
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGVector=dd}"];
  v32[10] = v20;
  v31[11] = &unk_287F57230;
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{UIOffset=dd}"];
  v32[11] = v19;
  v31[12] = &unk_287F570F8;
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGAffineTransform=dddddd}"];
  v32[12] = v18;
  v31[13] = &unk_287F57110;
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CATransform3D=dddddddddddddddd}"];
  v32[13] = v17;
  v31[14] = &unk_287F57128;
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{UIEdgeInsets=dddd}"];
  v32[14] = v16;
  v31[15] = &unk_287F57140;
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{NSDirectionalEdgeInsets=dddd}"];
  v32[15] = v15;
  v31[16] = &unk_287F57158;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{_NSRange=QQ}"];
  v32[16] = v14;
  v31[17] = &unk_287F57020;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^v"];
  v32[17] = v13;
  v31[18] = &unk_287F57218;
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[18] = v12;
  v31[19] = &unk_287F57038;
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[19] = v11;
  v31[20] = &unk_287F57050;
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[20] = v0;
  v31[21] = &unk_287F571A0;
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[21] = v1;
  v31[22] = &unk_287F571B8;
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[22] = v2;
  v31[23] = &unk_287F571D0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@?"];
  v32[23] = v3;
  v31[24] = &unk_287F57068;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[24] = v4;
  v31[25] = &unk_287F57080;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[25] = v5;
  v31[26] = &unk_287F57170;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[26] = v6;
  v31[27] = &unk_287F571E8;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^@"];
  v32[27] = v7;
  v31[28] = &unk_287F57188;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v32[28] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:29];
  v10 = qword_2806D93A0;
  qword_2806D93A0 = v9;
}

id sub_26F1FA86C(uint64_t a1, double a2, double a3)
{
  v3 = [objc_alloc(*(a1 + 32)) initWithVector:{a2, a3}];

  return v3;
}

void sub_26F1FA96C(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___TMLJSNil;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = qword_2806D93B0;
  qword_2806D93B0 = v1;
}

JSValueRef sub_26F1FAB50(const OpaqueJSContext *a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 1:
      return JSValueMakeNull(a1);
    case 2:
      return JSValueMakeBoolean(a1, 0);
    case 3:
      return JSValueMakeNumber(a1, 0.0);
  }

  return JSValueMakeUndefined(a1);
}

uint64_t sub_26F1FAF2C()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"dictionary"];
  v1 = qword_2806D93C8;
  qword_2806D93C8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F1FB300(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [v3 setObject:&unk_287F2E480 forKeyedSubscript:@"rgb"];
  [v3 setObject:&unk_287F2E4A0 forKeyedSubscript:@"rgba"];
  [v3 setObject:&unk_287F2E4C0 forKeyedSubscript:@"hsb"];
  [v3 setObject:&unk_287F2E4E0 forKeyedSubscript:@"hsba"];
  [v3 setObject:&unk_287F2E500 forKeyedSubscript:@"color"];
  [v3 setObject:&unk_287F2E520 forKeyedSubscript:@"colorWithAlpha"];
  [v3 setObject:&unk_287F2E540 forKeyedSubscript:@"colorWithWhite"];
  [v3 setObject:&unk_287F2E560 forKeyedSubscript:@"invertedColor"];
  [v3 setObject:&unk_287F2E580 forKeyedSubscript:@"dynamicColor"];
}

id sub_26F1FB484(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_26F1FBA78(v2);
  v4 = [v3 objectForKeyedSubscript:v2];

  if (!v4)
  {
    v4 = sub_26F1FB4FC(v2);
  }

  return v4;
}

id sub_26F1FB4FC(void *a1)
{
  v1 = a1;
  if ([v1 length] == 4)
  {
    v2 = strtol(([v1 UTF8String] + 1), 0, 16);
    LODWORD(v2) = ((v2 & 0xF00) << 12) & 0xFFF00FF0 | ((v2 >> 4) << 12) | (16 * v2) | v2 & 0xF;
  }

  else if ([v1 length] == 7)
  {
    v2 = strtol(([v1 UTF8String] + 1), 0, 16);
  }

  else
  {
    LODWORD(v2) = 0;
  }

  v3 = [MEMORY[0x277D75348] colorWithRed:(BYTE2(v2) / 255.0) green:(BYTE1(v2) / 255.0) blue:(v2 / 255.0) alpha:1.0];

  return v3;
}

id sub_26F1FB618(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_26F1FBA78(v4);
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = sub_26F1FB4FC(v4);
  }

  v7 = [v6 colorWithAlphaComponent:a1];

  return v7;
}

id sub_26F1FB6C0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_26F1FBA78(v2);
  v4 = [v3 objectForKeyedSubscript:v2];

  if (!v4)
  {
    v4 = sub_26F1FB4FC(v2);
  }

  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [v4 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  v5 = [MEMORY[0x277D75348] colorWithRed:1.0 - v10 green:1.0 - v9 blue:1.0 - v8 alpha:v7];

  return v5;
}

id sub_26F1FB790(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_26F1FBA78(v5);
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v8 = sub_26F1FB4FC(v4);
    v7 = v8;
  }

  v9 = sub_26F1FBA78(v8);
  v10 = [v9 objectForKeyedSubscript:v5];

  if (!v10)
  {
    v10 = sub_26F1FB4FC(v5);
  }

  v11 = MEMORY[0x277D75348];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26F1FB8E8;
  v16[3] = &unk_279DC9B48;
  v17 = v10;
  v18 = v7;
  v12 = v7;
  v13 = v10;
  v14 = [v11 colorWithDynamicProvider:v16];

  return v14;
}

id sub_26F1FB8E8(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

uint64_t sub_26F1FB934(void *a1)
{
  v1 = a1;

  return [v1 CGColor];
}

id sub_26F1FB95C(void *a1)
{
  if (qword_2806D93E0 != -1)
  {
    sub_26F2017F8();
  }

  v2 = [qword_2806D93D8 objectForKey:a1];
  if (!v2)
  {
    v6.width = 1.0;
    v6.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v6, 1, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(CurrentContext, [a1 CGColor]);
    v7.origin.x = 0.0;
    v7.origin.y = 0.0;
    v7.size.width = 1.0;
    v7.size.height = 1.0;
    CGContextFillRect(CurrentContext, v7);
    v2 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [qword_2806D93D8 setObject:v2 forKey:a1];
  }

  return v2;
}

uint64_t sub_26F1FBA38()
{
  v0 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v1 = qword_2806D93D8;
  qword_2806D93D8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id sub_26F1FBA78(uint64_t a1)
{
  if (qword_2806D93F0 != -1)
  {
    sub_26F20180C();
  }

  v2 = qword_2806D93E8;

  return v2;
}

void sub_26F1FBABC()
{
  v190[156] = *MEMORY[0x277D85DE8];
  v182 = [MEMORY[0x277CBEB38] dictionary];
  v189[0] = @"aliceblue";
  v156 = [MEMORY[0x277D75348] colorWithRed:0.941176474 green:0.972549021 blue:1.0 alpha:1.0];
  v190[0] = v156;
  v189[1] = @"antiquewhite";
  v154 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[1] = v154;
  v189[2] = @"aqua";
  v152 = [MEMORY[0x277D75348] colorWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];
  v190[2] = v152;
  v189[3] = @"aquamarine";
  v151 = [MEMORY[0x277D75348] colorWithRed:0.498039216 green:1.0 blue:0.831372559 alpha:1.0];
  v190[3] = v151;
  v189[4] = @"azure";
  v150 = [MEMORY[0x277D75348] colorWithRed:0.941176474 green:1.0 blue:1.0 alpha:1.0];
  v190[4] = v150;
  v189[5] = @"beige";
  v149 = [MEMORY[0x277D75348] colorWithRed:0.960784316 green:0.960784316 blue:0.862745106 alpha:1.0];
  v190[5] = v149;
  v189[6] = @"bisque";
  v148 = [MEMORY[0x277D75348] colorWithRed:1.0 green:? blue:? alpha:?];
  v190[6] = v148;
  v189[7] = @"blanchedalmond";
  v147 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.921568632 blue:? alpha:?];
  v190[7] = v147;
  v189[8] = @"blueviolet";
  v146 = [MEMORY[0x277D75348] colorWithRed:0.541176498 green:0.168627456 blue:0.886274517 alpha:1.0];
  v190[8] = v146;
  v189[9] = @"burlywood";
  v145 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[9] = v145;
  v189[10] = @"cadetblue";
  v144 = [MEMORY[0x277D75348] colorWithRed:0.372549027 green:0.619607866 blue:? alpha:?];
  v190[10] = v144;
  v189[11] = @"chartreuse";
  v143 = [MEMORY[0x277D75348] colorWithRed:0.498039216 green:1.0 blue:0.0 alpha:1.0];
  v190[11] = v143;
  v189[12] = @"chocolate";
  v142 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[12] = v142;
  v189[13] = @"coral";
  v141 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.498039216 blue:0.313725501 alpha:1.0];
  v190[13] = v141;
  v189[14] = @"cornflowerblue";
  v140 = [MEMORY[0x277D75348] colorWithRed:0.392156869 green:0.58431375 blue:0.929411769 alpha:1.0];
  v190[14] = v140;
  v189[15] = @"cornsilk";
  v139 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.972549021 blue:0.862745106 alpha:1.0];
  v190[15] = v139;
  v189[16] = @"crimson";
  v138 = [MEMORY[0x277D75348] colorWithRed:0.862745106 green:0.0784313753 blue:? alpha:?];
  v190[16] = v138;
  v189[17] = @"darkblue";
  v137 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.545098066 alpha:1.0];
  v190[17] = v137;
  v189[18] = @"darkcyan";
  v136 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.545098066 blue:0.545098066 alpha:1.0];
  v190[18] = v136;
  v189[19] = @"darkgoldenrod";
  v135 = [MEMORY[0x277D75348] colorWithRed:0.721568644 green:0.525490224 blue:0.0431372561 alpha:1.0];
  v190[19] = v135;
  v189[20] = @"darkgreen";
  v134 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.392156869 blue:0.0 alpha:1.0];
  v190[20] = v134;
  v189[21] = @"darkgrey";
  v133 = [MEMORY[0x277D75348] colorWithRed:0.662745118 green:0.662745118 blue:0.662745118 alpha:1.0];
  v190[21] = v133;
  v189[22] = @"darkkhaki";
  v132 = [MEMORY[0x277D75348] colorWithRed:0.741176486 green:0.717647076 blue:0.419607848 alpha:1.0];
  v190[22] = v132;
  v189[23] = @"darkmagenta";
  v131 = [MEMORY[0x277D75348] colorWithRed:0.545098066 green:0.0 blue:0.545098066 alpha:1.0];
  v190[23] = v131;
  v189[24] = @"darkolivegreen";
  v130 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[24] = v130;
  v189[25] = @"darkorange";
  v129 = [MEMORY[0x277D75348] colorWithRed:1.0 green:? blue:? alpha:?];
  v190[25] = v129;
  v189[26] = @"darkorchid";
  v128 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[26] = v128;
  v189[27] = @"darkred";
  v127 = [MEMORY[0x277D75348] colorWithRed:0.545098066 green:0.0 blue:0.0 alpha:1.0];
  v190[27] = v127;
  v189[28] = @"darksalmon";
  v126 = [MEMORY[0x277D75348] colorWithRed:0.913725495 green:0.588235319 blue:? alpha:?];
  v190[28] = v126;
  v189[29] = @"darkseagreen";
  v125 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[29] = v125;
  v189[30] = @"darkslateblue";
  v124 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[30] = v124;
  v189[31] = @"darkslategray";
  v123 = [MEMORY[0x277D75348] colorWithRed:0.184313729 green:0.309803933 blue:0.309803933 alpha:1.0];
  v190[31] = v123;
  v189[32] = @"darkslategrey";
  v122 = [MEMORY[0x277D75348] colorWithRed:0.184313729 green:0.309803933 blue:0.309803933 alpha:1.0];
  v190[32] = v122;
  v189[33] = @"darkturquoise";
  v121 = [MEMORY[0x277D75348] colorWithRed:0.0 green:? blue:? alpha:?];
  v190[33] = v121;
  v189[34] = @"darkviolet";
  v120 = [MEMORY[0x277D75348] colorWithRed:0.580392182 green:0.0 blue:? alpha:?];
  v190[34] = v120;
  v189[35] = @"deeppink";
  v119 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0784313753 blue:? alpha:?];
  v190[35] = v119;
  v189[36] = @"deepskyblue";
  v118 = [MEMORY[0x277D75348] colorWithRed:0.0 green:? blue:? alpha:?];
  v190[36] = v118;
  v189[37] = @"dimgray";
  v117 = [MEMORY[0x277D75348] colorWithRed:0.411764711 green:0.411764711 blue:0.411764711 alpha:1.0];
  v190[37] = v117;
  v189[38] = @"dimgrey";
  v116 = [MEMORY[0x277D75348] colorWithRed:0.411764711 green:0.411764711 blue:0.411764711 alpha:1.0];
  v190[38] = v116;
  v189[39] = @"dodgerblue";
  v115 = [MEMORY[0x277D75348] colorWithRed:0.117647059 green:? blue:? alpha:?];
  v190[39] = v115;
  v189[40] = @"firebrick";
  v114 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[40] = v114;
  v189[41] = @"floralwhite";
  v113 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.980392158 blue:0.941176474 alpha:1.0];
  v190[41] = v113;
  v189[42] = @"forestgreen";
  v112 = [MEMORY[0x277D75348] colorWithRed:0.13333334 green:0.545098066 blue:0.13333334 alpha:1.0];
  v190[42] = v112;
  v189[43] = @"fuchsia";
  v111 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
  v190[43] = v111;
  v189[44] = @"gainsboro";
  v110 = [MEMORY[0x277D75348] colorWithRed:0.862745106 green:0.862745106 blue:0.862745106 alpha:1.0];
  v190[44] = v110;
  v189[45] = @"ghostwhite";
  v109 = [MEMORY[0x277D75348] colorWithRed:0.972549021 green:0.972549021 blue:1.0 alpha:1.0];
  v190[45] = v109;
  v189[46] = @"gold";
  v108 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.843137264 blue:0.0 alpha:1.0];
  v190[46] = v108;
  v189[47] = @"goldenrod";
  v107 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[47] = v107;
  v189[48] = @"greenyellow";
  v106 = [MEMORY[0x277D75348] colorWithRed:0.678431392 green:1.0 blue:0.184313729 alpha:1.0];
  v190[48] = v106;
  v189[49] = @"grey";
  v105 = [MEMORY[0x277D75348] colorWithRed:0.501960814 green:0.501960814 blue:0.501960814 alpha:1.0];
  v190[49] = v105;
  v189[50] = @"honeydew";
  v104 = [MEMORY[0x277D75348] colorWithRed:0.941176474 green:1.0 blue:0.941176474 alpha:1.0];
  v190[50] = v104;
  v189[51] = @"hotpink";
  v103 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.411764711 blue:? alpha:?];
  v190[51] = v103;
  v189[52] = @"indianred";
  v102 = [MEMORY[0x277D75348] colorWithRed:0.80392158 green:0.360784322 blue:0.360784322 alpha:1.0];
  v190[52] = v102;
  v189[53] = @"indigo";
  v101 = [MEMORY[0x277D75348] colorWithRed:0.294117659 green:0.0 blue:? alpha:?];
  v190[53] = v101;
  v189[54] = @"ivory";
  v100 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:0.941176474 alpha:1.0];
  v190[54] = v100;
  v189[55] = @"khaki";
  v98 = [MEMORY[0x277D75348] colorWithRed:0.941176474 green:0.90196079 blue:0.549019635 alpha:1.0];
  v190[55] = v98;
  v189[56] = @"lavender";
  v97 = [MEMORY[0x277D75348] colorWithRed:0.90196079 green:0.90196079 blue:0.980392158 alpha:1.0];
  v190[56] = v97;
  v189[57] = @"lavenderblush";
  v95 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.941176474 blue:0.960784316 alpha:1.0];
  v190[57] = v95;
  v189[58] = @"lawngreen";
  v94 = [MEMORY[0x277D75348] colorWithRed:0.486274511 green:0.988235295 blue:0.0 alpha:1.0];
  v190[58] = v94;
  v189[59] = @"lemonchiffon";
  v93 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.980392158 blue:0.80392158 alpha:1.0];
  v190[59] = v93;
  v189[60] = @"lightblue";
  v92 = [MEMORY[0x277D75348] colorWithRed:0.678431392 green:? blue:? alpha:?];
  v190[60] = v92;
  v189[61] = @"lightcoral";
  v91 = [MEMORY[0x277D75348] colorWithRed:0.941176474 green:0.501960814 blue:0.501960814 alpha:1.0];
  v190[61] = v91;
  v189[62] = @"lightcyan";
  v90 = [MEMORY[0x277D75348] colorWithRed:0.87843138 green:1.0 blue:1.0 alpha:1.0];
  v190[62] = v90;
  v189[63] = @"lightgoldenrodyellow";
  v89 = [MEMORY[0x277D75348] colorWithRed:0.980392158 green:0.980392158 blue:0.823529422 alpha:1.0];
  v190[63] = v89;
  v189[64] = @"lightgreen";
  v88 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[64] = v88;
  v189[65] = @"lightgrey";
  v87 = [MEMORY[0x277D75348] colorWithRed:0.827450991 green:0.827450991 blue:0.827450991 alpha:1.0];
  v190[65] = v87;
  v189[66] = @"lightpink";
  v86 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.713725507 blue:0.75686276 alpha:1.0];
  v190[66] = v86;
  v189[67] = @"lightsalmon";
  v85 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.627451003 blue:0.478431374 alpha:1.0];
  v190[67] = v85;
  v189[68] = @"lightseagreen";
  v84 = [MEMORY[0x277D75348] colorWithRed:0.125490203 green:0.698039234 blue:0.666666687 alpha:1.0];
  v190[68] = v84;
  v189[69] = @"lightskyblue";
  v83 = [MEMORY[0x277D75348] colorWithRed:0.529411793 green:0.807843149 blue:0.980392158 alpha:1.0];
  v190[69] = v83;
  v189[70] = @"lightslategray";
  v82 = [MEMORY[0x277D75348] colorWithRed:0.466666669 green:0.533333361 blue:0.600000024 alpha:1.0];
  v190[70] = v82;
  v189[71] = @"lightslategrey";
  v81 = [MEMORY[0x277D75348] colorWithRed:0.466666669 green:0.533333361 blue:0.600000024 alpha:1.0];
  v190[71] = v81;
  v189[72] = @"lightsteelblue";
  v80 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v190[72] = v80;
  v189[73] = @"lightyellow";
  v79 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:0.87843138 alpha:1.0];
  v190[73] = v79;
  v189[74] = @"lime";
  v77 = [MEMORY[0x277D75348] colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
  v190[74] = v77;
  v189[75] = @"limegreen";
  v76 = [MEMORY[0x277D75348] colorWithRed:0.196078435 green:0.80392158 blue:0.196078435 alpha:1.0];
  v190[75] = v76;
  v189[76] = @"linen";
  v75 = [MEMORY[0x277D75348] colorWithRed:0.980392158 green:0.941176474 blue:0.90196079 alpha:1.0];
  v190[76] = v75;
  v189[77] = @"maroon";
  v74 = [MEMORY[0x277D75348] colorWithRed:0.501960814 green:0.0 blue:0.0 alpha:1.0];
  v190[77] = v74;
  v189[78] = @"mediumaquamarine";
  v73 = [MEMORY[0x277D75348] colorWithRed:0.400000006 green:0.80392158 blue:0.666666687 alpha:1.0];
  v190[78] = v73;
  v189[79] = @"mediumblue";
  v71 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.80392158 alpha:1.0];
  v190[79] = v71;
  v189[80] = @"mediumorchid";
  v158 = [MEMORY[0x277D75348] colorWithRed:0.729411781 green:0.333333343 blue:0.827450991 alpha:1.0];
  v190[80] = v158;
  v189[81] = @"mediumpurple";
  v70 = [MEMORY[0x277D75348] colorWithRed:0.576470613 green:0.43921569 blue:? alpha:?];
  v190[81] = v70;
  v189[82] = @"mediumseagreen";
  v69 = [MEMORY[0x277D75348] colorWithRed:0.235294119 green:? blue:? alpha:?];
  v190[82] = v69;
  v189[83] = @"mediumslateblue";
  v66 = [MEMORY[0x277D75348] colorWithRed:0.482352942 green:0.407843143 blue:0.933333337 alpha:1.0];
  v190[83] = v66;
  v189[84] = @"mediumspringgreen";
  v65 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.980392158 blue:? alpha:?];
  v190[84] = v65;
  v189[85] = @"mediumturquoise";
  v64 = [MEMORY[0x277D75348] colorWithRed:0.282352954 green:0.819607854 blue:0.800000012 alpha:1.0];
  v190[85] = v64;
  v189[86] = @"mediumvioletred";
  v63 = [MEMORY[0x277D75348] colorWithRed:0.78039217 green:0.0823529437 blue:0.521568656 alpha:1.0];
  v190[86] = v63;
  v189[87] = @"midnightblue";
  v62 = [MEMORY[0x277D75348] colorWithRed:0.0980392173 green:0.0980392173 blue:0.43921569 alpha:1.0];
  v190[87] = v62;
  v189[88] = @"mintcream";
  v60 = [MEMORY[0x277D75348] colorWithRed:0.960784316 green:1.0 blue:0.980392158 alpha:1.0];
  v190[88] = v60;
  v189[89] = @"mistyrose";
  v59 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.894117653 blue:? alpha:?];
  v190[89] = v59;
  v189[90] = @"moccasin";
  v72 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.894117653 blue:0.709803939 alpha:1.0];
  v190[90] = v72;
  v189[91] = @"navajowhite";
  v56 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.870588243 blue:0.678431392 alpha:1.0];
  v190[91] = v56;
  v189[92] = @"navy";
  v54 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.501960814 alpha:1.0];
  v190[92] = v54;
  v189[93] = @"oldlace";
  v53 = [MEMORY[0x277D75348] colorWithRed:0.992156863 green:0.960784316 blue:0.90196079 alpha:1.0];
  v190[93] = v53;
  v189[94] = @"olive";
  v51 = [MEMORY[0x277D75348] colorWithRed:0.501960814 green:0.501960814 blue:0.0 alpha:1.0];
  v190[94] = v51;
  v189[95] = @"olivedrab";
  v58 = [MEMORY[0x277D75348] colorWithRed:0.419607848 green:0.556862772 blue:0.137254909 alpha:1.0];
  v190[95] = v58;
  v189[96] = @"orangered";
  v50 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.270588249 blue:0.0 alpha:1.0];
  v190[96] = v50;
  v189[97] = @"orchid";
  v49 = [MEMORY[0x277D75348] colorWithRed:0.854901969 green:0.43921569 blue:0.839215696 alpha:1.0];
  v190[97] = v49;
  v189[98] = @"palegoldenrod";
  v48 = [MEMORY[0x277D75348] colorWithRed:0.933333337 green:0.909803927 blue:0.666666687 alpha:1.0];
  v190[98] = v48;
  v189[99] = @"palegreen";
  v47 = [MEMORY[0x277D75348] colorWithRed:0.596078455 green:0.984313726 blue:0.596078455 alpha:1.0];
  v190[99] = v47;
  v189[100] = @"paleturquoise";
  v45 = [MEMORY[0x277D75348] colorWithRed:0.686274529 green:0.933333337 blue:0.933333337 alpha:1.0];
  v190[100] = v45;
  v189[101] = @"palevioletred";
  v170 = [MEMORY[0x277D75348] colorWithRed:0.858823538 green:0.43921569 blue:0.576470613 alpha:1.0];
  v190[101] = v170;
  v189[102] = @"papayawhip";
  v44 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.937254906 blue:0.835294127 alpha:1.0];
  v190[102] = v44;
  v189[103] = @"peachpuff";
  v43 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.854901969 blue:0.725490212 alpha:1.0];
  v190[103] = v43;
  v189[104] = @"peru";
  v42 = [MEMORY[0x277D75348] colorWithRed:0.80392158 green:0.521568656 blue:0.247058824 alpha:1.0];
  v190[104] = v42;
  v189[105] = @"pink";
  v41 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.752941191 blue:0.796078444 alpha:1.0];
  v190[105] = v41;
  v189[106] = @"plum";
  v40 = [MEMORY[0x277D75348] colorWithRed:0.866666675 green:0.627451003 blue:0.866666675 alpha:1.0];
  v190[106] = v40;
  v189[107] = @"powderblue";
  v38 = [MEMORY[0x277D75348] colorWithRed:0.690196097 green:0.87843138 blue:0.90196079 alpha:1.0];
  v190[107] = v38;
  v189[108] = @"rosybrown";
  v68 = [MEMORY[0x277D75348] colorWithRed:0.737254918 green:0.56078434 blue:0.56078434 alpha:1.0];
  v190[108] = v68;
  v189[109] = @"royalblue";
  v67 = [MEMORY[0x277D75348] colorWithRed:0.254901975 green:0.411764711 blue:0.882352948 alpha:1.0];
  v190[109] = v67;
  v189[110] = @"saddlebrown";
  v46 = [MEMORY[0x277D75348] colorWithRed:0.545098066 green:0.270588249 blue:0.0745098069 alpha:1.0];
  v190[110] = v46;
  v189[111] = @"salmon";
  v36 = [MEMORY[0x277D75348] colorWithRed:0.980392158 green:0.501960814 blue:0.447058827 alpha:1.0];
  v190[111] = v36;
  v189[112] = @"sandybrown";
  v35 = [MEMORY[0x277D75348] colorWithRed:0.956862748 green:0.643137276 blue:0.376470596 alpha:1.0];
  v190[112] = v35;
  v189[113] = @"seagreen";
  v55 = [MEMORY[0x277D75348] colorWithRed:0.180392161 green:0.545098066 blue:0.34117648 alpha:1.0];
  v190[113] = v55;
  v189[114] = @"seashell";
  v34 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.960784316 blue:0.933333337 alpha:1.0];
  v190[114] = v34;
  v189[115] = @"sienna";
  v176 = [MEMORY[0x277D75348] colorWithRed:0.627451003 green:0.321568638 blue:0.176470593 alpha:1.0];
  v190[115] = v176;
  v189[116] = @"silver";
  v33 = [MEMORY[0x277D75348] colorWithRed:0.752941191 green:0.752941191 blue:0.752941191 alpha:1.0];
  v190[116] = v33;
  v189[117] = @"skyblue";
  v178 = [MEMORY[0x277D75348] colorWithRed:0.529411793 green:0.807843149 blue:0.921568632 alpha:1.0];
  v190[117] = v178;
  v189[118] = @"slateblue";
  v174 = [MEMORY[0x277D75348] colorWithRed:0.41568628 green:0.352941185 blue:0.80392158 alpha:1.0];
  v190[118] = v174;
  v189[119] = @"slategray";
  v99 = [MEMORY[0x277D75348] colorWithRed:0.43921569 green:0.501960814 blue:0.564705908 alpha:1.0];
  v190[119] = v99;
  v189[120] = @"slategrey";
  v164 = [MEMORY[0x277D75348] colorWithRed:0.43921569 green:0.501960814 blue:0.564705908 alpha:1.0];
  v190[120] = v164;
  v189[121] = @"snow";
  v162 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.980392158 blue:0.980392158 alpha:1.0];
  v190[121] = v162;
  v189[122] = @"springgreen";
  v96 = [MEMORY[0x277D75348] colorWithRed:0.0 green:1.0 blue:0.498039216 alpha:1.0];
  v190[122] = v96;
  v189[123] = @"steelblue";
  v32 = [MEMORY[0x277D75348] colorWithRed:0.274509817 green:0.509803951 blue:0.70588237 alpha:1.0];
  v190[123] = v32;
  v189[124] = @"tan";
  v180 = [MEMORY[0x277D75348] colorWithRed:0.823529422 green:0.70588237 blue:0.549019635 alpha:1.0];
  v190[124] = v180;
  v189[125] = @"teal";
  v172 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.501960814 blue:0.501960814 alpha:1.0];
  v190[125] = v172;
  v189[126] = @"thistle";
  v78 = [MEMORY[0x277D75348] colorWithRed:0.847058833 green:0.749019623 blue:0.847058833 alpha:1.0];
  v190[126] = v78;
  v189[127] = @"tomato";
  v61 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.388235301 blue:0.278431386 alpha:1.0];
  v190[127] = v61;
  v189[128] = @"turquoise";
  v160 = [MEMORY[0x277D75348] colorWithRed:0.250980407 green:0.87843138 blue:0.815686285 alpha:1.0];
  v190[128] = v160;
  v189[129] = @"violet";
  v57 = [MEMORY[0x277D75348] colorWithRed:0.933333337 green:0.509803951 blue:0.933333337 alpha:1.0];
  v190[129] = v57;
  v189[130] = @"wheat";
  v168 = [MEMORY[0x277D75348] colorWithRed:0.960784316 green:0.870588243 blue:0.701960802 alpha:1.0];
  v190[130] = v168;
  v189[131] = @"whitesmoke";
  v185 = [MEMORY[0x277D75348] colorWithRed:0.960784316 green:0.960784316 blue:0.960784316 alpha:1.0];
  v190[131] = v185;
  v189[132] = @"yellowgreen";
  v183 = [MEMORY[0x277D75348] colorWithRed:0.603921592 green:0.80392158 blue:0.196078435 alpha:1.0];
  v190[132] = v183;
  v189[133] = @"transparent";
  v166 = [MEMORY[0x277D75348] clearColor];
  v190[133] = v166;
  v189[134] = @"black";
  v52 = [MEMORY[0x277D75348] blackColor];
  v190[134] = v52;
  v189[135] = @"darkGray";
  v39 = [MEMORY[0x277D75348] darkGrayColor];
  v190[135] = v39;
  v189[136] = @"lightGray";
  v37 = [MEMORY[0x277D75348] lightGrayColor];
  v190[136] = v37;
  v189[137] = @"white";
  v31 = [MEMORY[0x277D75348] whiteColor];
  v190[137] = v31;
  v189[138] = @"gray";
  v30 = [MEMORY[0x277D75348] grayColor];
  v190[138] = v30;
  v189[139] = @"red";
  v29 = [MEMORY[0x277D75348] redColor];
  v190[139] = v29;
  v189[140] = @"green";
  v28 = [MEMORY[0x277D75348] greenColor];
  v190[140] = v28;
  v189[141] = @"blue";
  v27 = [MEMORY[0x277D75348] blueColor];
  v190[141] = v27;
  v189[142] = @"cyan";
  v26 = [MEMORY[0x277D75348] cyanColor];
  v190[142] = v26;
  v189[143] = @"yellow";
  v25 = [MEMORY[0x277D75348] yellowColor];
  v190[143] = v25;
  v189[144] = @"magenta";
  v24 = [MEMORY[0x277D75348] magentaColor];
  v190[144] = v24;
  v189[145] = @"orange";
  v23 = [MEMORY[0x277D75348] orangeColor];
  v190[145] = v23;
  v189[146] = @"purple";
  v22 = [MEMORY[0x277D75348] purpleColor];
  v190[146] = v22;
  v189[147] = @"brown";
  v21 = [MEMORY[0x277D75348] brownColor];
  v190[147] = v21;
  v189[148] = @"clear";
  v0 = [MEMORY[0x277D75348] clearColor];
  v190[148] = v0;
  v189[149] = @"systemBlue";
  v1 = [MEMORY[0x277D75348] systemBlueColor];
  v190[149] = v1;
  v189[150] = @"systemIndigo";
  v2 = [MEMORY[0x277D75348] systemIndigoColor];
  v190[150] = v2;
  v189[151] = @"systemGreen";
  v3 = [MEMORY[0x277D75348] systemGreenColor];
  v190[151] = v3;
  v189[152] = @"systemOrange";
  v4 = [MEMORY[0x277D75348] systemOrangeColor];
  v190[152] = v4;
  v189[153] = @"systemRed";
  v5 = [MEMORY[0x277D75348] systemRedColor];
  v190[153] = v5;
  v189[154] = @"systemTeal";
  v6 = [MEMORY[0x277D75348] systemTealColor];
  v190[154] = v6;
  v189[155] = @"systemGray";
  v7 = [MEMORY[0x277D75348] systemGrayColor];
  v190[155] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:v189 count:156];
  [v182 addEntriesFromDictionary:v8];

  v187[0] = @"label";
  v186 = [MEMORY[0x277D75348] labelColor];
  v188[0] = v186;
  v187[1] = @"secondaryLabel";
  v184 = [MEMORY[0x277D75348] secondaryLabelColor];
  v188[1] = v184;
  v187[2] = @"tertiaryLabel";
  v181 = [MEMORY[0x277D75348] tertiaryLabelColor];
  v188[2] = v181;
  v187[3] = @"quaternaryLabel";
  v179 = [MEMORY[0x277D75348] quaternaryLabelColor];
  v188[3] = v179;
  v187[4] = @"link";
  v177 = [MEMORY[0x277D75348] linkColor];
  v188[4] = v177;
  v187[5] = @"placeholderText";
  v175 = [MEMORY[0x277D75348] placeholderTextColor];
  v188[5] = v175;
  v187[6] = @"separator";
  v173 = [MEMORY[0x277D75348] separatorColor];
  v188[6] = v173;
  v187[7] = @"opaqueSeparator";
  v171 = [MEMORY[0x277D75348] opaqueSeparatorColor];
  v188[7] = v171;
  v187[8] = @"systemBackground";
  v169 = [MEMORY[0x277D75348] systemBackgroundColor];
  v188[8] = v169;
  v187[9] = @"secondarySystemBackground";
  v167 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v188[9] = v167;
  v187[10] = @"tertiarySystemBackground";
  v165 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v188[10] = v165;
  v187[11] = @"systemGroupedBackground";
  v163 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v188[11] = v163;
  v187[12] = @"secondarySystemGroupedBackground";
  v161 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  v188[12] = v161;
  v187[13] = @"tertiarySystemGroupedBackground";
  v159 = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  v188[13] = v159;
  v187[14] = @"lightText";
  v157 = [MEMORY[0x277D75348] lightTextColor];
  v188[14] = v157;
  v187[15] = @"darkText";
  v155 = [MEMORY[0x277D75348] darkTextColor];
  v188[15] = v155;
  v187[16] = @"groupTableViewBackground";
  v153 = [MEMORY[0x277D75348] groupTableViewBackgroundColor];
  v188[16] = v153;
  v187[17] = @"systemFill";
  v9 = [MEMORY[0x277D75348] systemFillColor];
  v188[17] = v9;
  v187[18] = @"secondarySystemFill";
  v10 = [MEMORY[0x277D75348] secondarySystemFillColor];
  v188[18] = v10;
  v187[19] = @"tertiarySystemFill";
  v11 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v188[19] = v11;
  v187[20] = @"quaternarySystemFill";
  v12 = [MEMORY[0x277D75348] quaternarySystemFillColor];
  v188[20] = v12;
  v187[21] = @"systemGray2";
  v13 = [MEMORY[0x277D75348] systemGray2Color];
  v188[21] = v13;
  v187[22] = @"systemGray3";
  v14 = [MEMORY[0x277D75348] systemGray3Color];
  v188[22] = v14;
  v187[23] = @"systemGray4";
  v15 = [MEMORY[0x277D75348] systemGray4Color];
  v188[23] = v15;
  v187[24] = @"systemGray5";
  v16 = [MEMORY[0x277D75348] systemGray5Color];
  v188[24] = v16;
  v187[25] = @"systemGray6";
  v17 = [MEMORY[0x277D75348] systemGray6Color];
  v188[25] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v187 count:26];

  [v182 addEntriesFromDictionary:v18];
  v19 = [v182 copy];
  v20 = qword_2806D93E8;
  qword_2806D93E8 = v19;
}

void sub_26F1FE720(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = NSStringFromSelector(a2);
  v8 = MEMORY[0x277CCACA8];
  v9 = [v7 substringWithRange:{3, 1}];
  v10 = [v9 lowercaseString];
  v11 = [v7 substringWithRange:{4, objc_msgSend(v7, "length") - 5}];
  v13 = [v8 stringWithFormat:@"%@%@", v10, v11];

  v12 = v6[1];
  [v12 setObject:v5 forKey:v13];
}

id sub_26F1FE828(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = v3[1];

  v6 = [v5 objectForKey:v4];

  return v6;
}

void sub_26F1FE89C(void *a1, const char *a2, double a3, double a4)
{
  v7 = a1;
  v8 = NSStringFromSelector(a2);
  v9 = MEMORY[0x277CCACA8];
  v10 = [v8 substringWithRange:{3, 1}];
  v11 = [v10 lowercaseString];
  v12 = [v8 substringWithRange:{4, objc_msgSend(v8, "length") - 5}];
  v15 = [v9 stringWithFormat:@"%@%@", v11, v12];

  v13 = v7[1];
  v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3, a4}];
  [v13 setObject:v14 forKey:v15];
}

double sub_26F1FE9BC(uint64_t a1, SEL aSelector)
{
  v2 = *(a1 + 8);
  v3 = NSStringFromSelector(aSelector);
  v4 = [v2 objectForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 CGPointValue];
    v6 = v5;
  }

  else
  {
    v6 = *MEMORY[0x277CBF348];
  }

  return v6;
}

void sub_26F1FEA54(void *a1, const char *a2, double a3, double a4)
{
  v7 = a1;
  v8 = NSStringFromSelector(a2);
  v9 = MEMORY[0x277CCACA8];
  v10 = [v8 substringWithRange:{3, 1}];
  v11 = [v10 lowercaseString];
  v12 = [v8 substringWithRange:{4, objc_msgSend(v8, "length") - 5}];
  v15 = [v9 stringWithFormat:@"%@%@", v11, v12];

  v13 = v7[1];
  v14 = [MEMORY[0x277CCAE60] valueWithCGSize:{a3, a4}];
  [v13 setObject:v14 forKey:v15];
}

double sub_26F1FEB74(uint64_t a1, SEL aSelector)
{
  v2 = *(a1 + 8);
  v3 = NSStringFromSelector(aSelector);
  v4 = [v2 objectForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 CGSizeValue];
    v6 = v5;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
  }

  return v6;
}

void sub_26F1FEC0C(void *a1, const char *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = NSStringFromSelector(a2);
  v13 = MEMORY[0x277CCACA8];
  v14 = [v12 substringWithRange:{3, 1}];
  v15 = [v14 lowercaseString];
  v16 = [v12 substringWithRange:{4, objc_msgSend(v12, "length") - 5}];
  v19 = [v13 stringWithFormat:@"%@%@", v15, v16];

  v17 = v11[1];
  v18 = [MEMORY[0x277CCAE60] valueWithCGRect:{a3, a4, a5, a6}];
  [v17 setObject:v18 forKey:v19];
}

double sub_26F1FED44(uint64_t a1, SEL aSelector)
{
  v2 = *(a1 + 8);
  v3 = NSStringFromSelector(aSelector);
  v4 = [v2 objectForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 CGRectValue];
    v6 = v5;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A0];
  }

  return v6;
}

void sub_26F1FEDF8(void *a1, const char *a2, double a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  v7 = MEMORY[0x277CCACA8];
  v8 = [v6 substringWithRange:{3, 1}];
  v9 = [v8 lowercaseString];
  v10 = [v6 substringWithRange:{4, objc_msgSend(v6, "length") - 5}];
  v13 = [v7 stringWithFormat:@"%@%@", v9, v10];

  v11 = v5[1];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v11 setObject:v12 forKey:v13];
}

double sub_26F1FEF10(uint64_t a1, SEL aSelector)
{
  v2 = *(a1 + 8);
  v3 = NSStringFromSelector(aSelector);
  v4 = [v2 objectForKey:v3];

  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v5 = v6;
  }

  return v5;
}

void sub_26F1FEF94(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  v7 = MEMORY[0x277CCACA8];
  v8 = [v6 substringWithRange:{3, 1}];
  v9 = [v8 lowercaseString];
  v10 = [v6 substringWithRange:{4, objc_msgSend(v6, "length") - 5}];
  v13 = [v7 stringWithFormat:@"%@%@", v9, v10];

  v11 = v5[1];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v11 setObject:v12 forKey:v13];
}

uint64_t sub_26F1FF0AC(uint64_t a1, SEL aSelector)
{
  v2 = *(a1 + 8);
  v3 = NSStringFromSelector(aSelector);
  v4 = [v2 objectForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_26F1FF140(uint64_t *a1)
{
  if (!*(a1 + 20))
  {
    *(a1 + 20) = 1;
    if (!*(a1 + 21))
    {
      *(a1 + 21) = 1;
    }

    if (!a1[1])
    {
      a1[1] = *MEMORY[0x277D85E00];
    }

    if (!a1[2])
    {
      a1[2] = *MEMORY[0x277D85E08];
    }

    v2 = a1[5];
    if (!v2 || (v3 = a1[3], (v4 = *(v2 + 8 * v3)) == 0))
    {
      sub_26F1FFFB8(a1);
      v5 = sub_26F20005C(a1[1], 0x4000, a1);
      v3 = a1[3];
      *(a1[5] + 8 * v3) = v5;
      v2 = a1[5];
      v4 = *(v2 + 8 * v3);
    }

    a1[7] = *(v4 + 32);
    v6 = *(v4 + 16);
    a1[9] = v6;
    a1[17] = v6;
    a1[1] = **(v2 + 8 * v3);
    *(a1 + 48) = *v6;
  }

  v7 = *a1;
  v87 = *a1;
LABEL_13:
  *(a1 + 37) = 0;
  v8 = a1[9];
  if (*(a1 + 36))
  {
    v9 = v8 - *(a1 + 34);
    *(a1 + 36) = 0;
    *(a1 + 37) = v9;
  }

  v10 = *(a1 + 48);
  *v8 = v10;
  v11 = *(*(a1[5] + 8 * a1[3]) + 48) + *(a1 + 21);
  v12 = v8;
  while (1)
  {
    v13 = dword_26F209198[256 * v11 + v10];
    if (v13 >= 1)
    {
      do
      {
        if (dword_26F228D98[v13])
        {
          *(a1 + 28) = v13;
          a1[15] = v12;
        }

        v14 = *++v12;
        v13 = dword_26F209198[256 * v13 + v14];
      }

      while (v13 > 0);
    }

    v15 = -v13;
    while (2)
    {
      v16 = dword_26F228D98[v15];
      v17 = &v8[-*(a1 + 37)];
      a1[17] = v17;
      a1[8] = v12 - v17;
      *(a1 + 48) = *v12;
      *v12 = 0;
      a1[9] = v12;
      if (v15 != 5 && ((0x29FEFFF5uLL >> v16) & 1) == 0)
      {
        v18 = *(a1 + 37);
        v19 = a1[8];
        v20 = v19 > v18;
        v21 = v19 - v18;
        if (v20)
        {
          v22 = (a1[17] + v18);
          do
          {
            v23 = *v22++;
            if (v23 == 10)
            {
              v24 = *(a1[5] + 8 * a1[3]);
              *(v24 + 52) = (*(v24 + 52) + 1);
            }

            --v21;
          }

          while (v21);
        }
      }

LABEL_29:
      switch(v16)
      {
        case 0:
          *v12 = *(a1 + 48);
          v12 = a1[15] + 1;
          v15 = *(a1 + 28);
          continue;
        case 1:
          v69 = a1[8];
          if (v69)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v69 - 1) == 10;
          }

          goto LABEL_13;
        case 2:
          v79 = a1[8];
          if (v79)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v79 - 1) == 10;
          }

          goto LABEL_138;
        case 3:
          v71 = a1[8];
          if (v71)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v71 - 1) == 10;
          }

          goto LABEL_138;
        case 4:
          v72 = a1[8];
          if (v72)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v72 - 1) == 10;
          }

          goto LABEL_138;
        case 5:
          v75 = a1[8];
          if (v75)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v75 - 1) == 10;
          }

          goto LABEL_138;
        case 6:
          v64 = a1[8];
          if (v64)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v64 - 1) == 10;
          }

          goto LABEL_138;
        case 7:
          v74 = a1[8];
          if (v74)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v74 - 1) == 10;
          }

          goto LABEL_138;
        case 8:
          v62 = a1[8];
          if (v62)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v62 - 1) == 10;
          }

          goto LABEL_138;
        case 9:
          v80 = a1[8];
          if (v80)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v80 - 1) == 10;
          }

          goto LABEL_138;
        case 10:
          v60 = a1[8];
          if (v60)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v60 - 1) == 10;
          }

          goto LABEL_138;
        case 11:
          v70 = a1[8];
          if (v70)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v70 - 1) == 10;
          }

          goto LABEL_138;
        case 12:
          v73 = a1[8];
          if (v73)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v73 - 1) == 10;
          }

          goto LABEL_138;
        case 13:
          v81 = a1[8];
          if (v81)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v81 - 1) == 10;
          }

          goto LABEL_138;
        case 14:
          v65 = a1[8];
          if (v65)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v65 - 1) == 10;
          }

          goto LABEL_138;
        case 15:
          v61 = a1[8];
          if (v61)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v61 - 1) == 10;
          }

          goto LABEL_138;
        case 16:
          v77 = a1[8];
          if (v77)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v77 - 1) == 10;
          }

          goto LABEL_138;
        case 17:
          v82 = a1[8];
          if (v82)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v82 - 1) == 10;
          }

          goto LABEL_138;
        case 18:
          v59 = a1[8];
          if (v59)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v59 - 1) == 10;
          }

          goto LABEL_138;
        case 19:
          v76 = a1[8];
          if (v76)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v76 - 1) == 10;
          }

          goto LABEL_138;
        case 20:
          v63 = a1[8];
          if (v63)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v63 - 1) == 10;
          }

          goto LABEL_138;
        case 21:
          v83 = a1[8];
          if (v83)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v83 - 1) == 10;
          }

          goto LABEL_138;
        case 22:
          v78 = a1[8];
          if (v78)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v78 - 1) == 10;
          }

          goto LABEL_138;
        case 23:
          v84 = a1[8];
          if (v84)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v84 - 1) == 10;
          }

          goto LABEL_138;
        case 24:
          v68 = a1[8];
          if (v68)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v68 - 1) == 10;
          }

LABEL_138:
          if ((*(v7 + 16))(v7))
          {
            return 0;
          }

          goto LABEL_13;
        case 25:
          v85 = a1[8];
          if (v85)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v85 - 1) == 10;
          }

          *(a1 + 21) = 3;
          goto LABEL_135;
        case 26:
          v56 = a1[8];
          if (v56)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v56 - 1) == 10;
          }

          if ((*(v7 + 16))(v7))
          {
            return 0;
          }

          *(a1 + 21) = 1;
          goto LABEL_13;
        case 27:
          *v12 = *(a1 + 48);
          v57 = &v8[-*(a1 + 37)];
          a1[17] = v57;
          a1[8] = v12 - 1 - v57;
          a1[9] = v12 - 1;
          *(a1 + 48) = *(v12 - 1);
          *(v12 - 1) = 0;
          a1[9] = v12 - 1;
          goto LABEL_79;
        case 28:
LABEL_79:
          v58 = a1[8];
          if (v58)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = *(a1[17] + v58 - 1) == 10;
          }

LABEL_135:
          *(a1 + 36) = 1;
          goto LABEL_13;
        case 29:
          v66 = a1[8];
          v67 = a1[17];
          if (v66)
          {
            *(*(a1[5] + 8 * a1[3]) + 48) = v67[v66 - 1] == 10;
          }

          fwrite(v67, v66, 1uLL, a1[2]);
          goto LABEL_13;
        case 30:
          v25 = a1[17];
          *v12 = *(a1 + 48);
          v26 = a1[5];
          v27 = a1[3];
          v28 = *(v26 + 8 * v27);
          if (*(v28 + 64))
          {
            v29 = a1[7];
          }

          else
          {
            v29 = *(v28 + 32);
            a1[7] = v29;
            *v28 = a1[1];
            v28 = *(v26 + 8 * v27);
            *(v28 + 64) = 1;
          }

          v30 = a1[9];
          v31 = *(v28 + 8);
          if (v30 <= &v31[v29])
          {
            a1[9] = a1[17] + ~v25 + v12;
            v15 = sub_26F2000EC(a1);
            v12 = a1[9];
            v11 = dword_26F228F94[v15];
            if (!v11)
            {
              goto LABEL_70;
            }

            if (dword_26F228D98[v11])
            {
              *(a1 + 28) = v11;
              a1[15] = v12;
            }

            v8 = (a1[17] + *(a1 + 37));
            a1[9] = ++v12;
            goto LABEL_72;
          }

          if (v30 > &v31[v29 + 1])
          {
            sub_26F200178("fatal flex scanner internal error--end of buffer missed");
          }

          v32 = a1[17];
          if (!*(v28 + 60))
          {
            v36 = *(a1 + 37);
            if (v30 - &v32[v36] == 1)
            {
              goto LABEL_64;
            }

            goto LABEL_67;
          }

          v33 = ~v32 + v30;
          if (v33 >= 1)
          {
            v34 = ~v32 + v30;
            do
            {
              v35 = *v32++;
              *v31++ = v35;
              --v34;
            }

            while (v34);
            v28 = *(a1[5] + 8 * a1[3]);
          }

          v88 = v25;
          if (*(v28 + 64) == 2)
          {
            a1[7] = 0;
            *(v28 + 32) = 0;
          }

          else
          {
            v37 = ~v33;
            v38 = *(v28 + 24);
            LODWORD(v39) = v38 + ~v33;
            if (!v39)
            {
              v40 = a1[9];
              do
              {
                if (!*(v28 + 40))
                {
                  *(v28 + 8) = 0;
LABEL_141:
                  sub_26F200178("fatal error - scanner input buffer overflow");
                }

                v39 = *(v28 + 8);
                v41 = 2 * v38;
                *(v28 + 24) = v41;
                v42 = malloc_type_realloc(v39, v41 + 2, 0x3DA37B10uLL);
                *(v28 + 8) = v42;
                if (!v42)
                {
                  goto LABEL_141;
                }

                v40 = v42 + v40 - v39;
                a1[9] = v40;
                v28 = *(a1[5] + 8 * a1[3]);
                v38 = *(v28 + 24);
                LODWORD(v39) = v38 + v37;
              }

              while (!(v38 + v37));
              v7 = v87;
            }

            *__error() = 0;
            if (v39 >= 0x2000)
            {
              v39 = 0x2000;
            }

            else
            {
              v39 = v39;
            }

            v43 = fileno(a1[1]);
            v44 = read(v43, (*(*(a1[5] + 8 * a1[3]) + 8) + v33), v39);
            v45 = v44;
            a1[7] = v44;
            v28 = *(a1[5] + 8 * a1[3]);
            *(v28 + 32) = v44;
            if (v44 << 32)
            {
              v46 = 0;
              goto LABEL_58;
            }
          }

          if (*(a1 + 37) == v33)
          {
            sub_26F2001B0(a1[1], a1);
            v45 = a1[7];
            v28 = *(a1[5] + 8 * a1[3]);
            v46 = 1;
          }

          else
          {
            v45 = 0;
            v46 = 2;
            *(v28 + 64) = 2;
          }

LABEL_58:
          v47 = v45 + v33;
          if (v47 <= *(v28 + 24))
          {
            v53 = *(v28 + 8);
          }

          else
          {
            v48 = v47 + (v45 >> 1);
            v49 = malloc_type_realloc(*(v28 + 8), v48, 0x3DA37B10uLL);
            v50 = a1[5];
            v51 = a1[3];
            *(*(v50 + 8 * v51) + 8) = v49;
            v52 = *(v50 + 8 * v51);
            v53 = *(v52 + 8);
            if (!v53)
            {
              sub_26F200178("out of dynamic memory in yy_get_next_buffer()");
            }

            *(v52 + 24) = v48 - 2;
            v47 = a1[7] + v33;
          }

          a1[7] = v47;
          *(v53 + v47) = 0;
          *(*(*(a1[5] + 8 * a1[3]) + 8) + a1[7] + 1) = 0;
          v54 = a1[5];
          v55 = a1[3];
          v32 = *(*(v54 + 8 * v55) + 8);
          a1[17] = v32;
          if (v46 == 1)
          {
            v36 = *(a1 + 37);
LABEL_64:
            *(a1 + 22) = 0;
            a1[9] = &v32[v36];
            v16 = (*(a1 + 21) - 1) / 2 + 31;
            goto LABEL_29;
          }

          if (v46)
          {
            v31 = *(*(v54 + 8 * v55) + 8);
            v29 = a1[7];
LABEL_67:
            a1[9] = &v31[v29];
            v15 = sub_26F2000EC(a1);
            v12 = a1[9];
LABEL_70:
            v8 = (a1[17] + *(a1 + 37));
            continue;
          }

          a1[9] = &v32[~v88 + v12];
          v11 = sub_26F2000EC(a1);
          v12 = a1[9];
          v8 = (a1[17] + *(a1 + 37));
LABEL_72:
          v10 = *v12;
          break;
        case 31:
        case 32:
          return 0;
        default:
          sub_26F200178("fatal flex scanner internal error--no action found");
      }

      break;
    }
  }
}

double sub_26F1FFFB8(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0x3DA37B10uLL);
      a1[5] = v5;
      if (v5)
      {
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4;
        return result;
      }

LABEL_8:
      sub_26F200178("out of dynamic memory in yyensure_buffer_stack()");
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0x7B713882uLL);
    a1[5] = v8;
    if (!v8)
    {
      goto LABEL_8;
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_26F209180;
  }

  return result;
}

_DWORD *sub_26F20005C(FILE *a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0x7B713882uLL);
  if (!v6 || (v7 = v6, v6[6] = a2, v8 = malloc_type_malloc(a2 + 2, 0x7B713882uLL), (*(v7 + 8) = v8) == 0))
  {
    sub_26F200178("out of dynamic memory in yy_create_buffer()");
  }

  *(v7 + 40) = 1;
  sub_26F200260(v7, a1, a3);
  return v7;
}

uint64_t sub_26F2000EC(uint64_t a1)
{
  v1 = (*(*(*(a1 + 40) + 8 * *(a1 + 24)) + 48) + *(a1 + 84));
  v2 = (*(a1 + 136) + *(a1 + 148));
  for (i = *(a1 + 72); v2 < i; ++v2)
  {
    v4 = &dword_26F209198[256 * v1 + *v2];
    v5 = &dword_26F228F94[v1];
    if (*v2)
    {
      v5 = v4;
    }

    v1 = *v5;
    if (dword_26F228D98[v1])
    {
      *(a1 + 112) = v1;
      *(a1 + 120) = v2;
    }
  }

  return v1;
}

int *sub_26F2001B0(FILE *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 && (v5 = *(a2 + 24), *(v4 + 8 * v5)) || (sub_26F1FFFB8(a2), v6 = sub_26F20005C(*(a2 + 8), 0x4000, a2), v5 = *(a2 + 24), *(*(a2 + 40) + 8 * v5) = v6, (v4 = *(a2 + 40)) != 0))
  {
    v7 = *(v4 + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  result = sub_26F200260(v7, a1, a2);
  v9 = *(a2 + 40);
  v10 = *(a2 + 24);
  v11 = *(v9 + 8 * v10);
  *(a2 + 56) = *(v11 + 32);
  v12 = *(v11 + 16);
  *(a2 + 72) = v12;
  *(a2 + 136) = v12;
  *(a2 + 8) = **(v9 + 8 * v10);
  *(a2 + 48) = *v12;
  return result;
}

int *sub_26F200260(uint64_t a1, FILE *a2, uint64_t a3)
{
  v6 = *__error();
  sub_26F200434(a1, a3);
  *a1 = a2;
  *(a1 + 60) = 1;
  v7 = *(a3 + 40);
  if (v7)
  {
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 52) = 1;
  }

  if (a2)
  {
    v8 = fileno(a2);
    v9 = isatty(v8) > 0;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 44) = v9;
  result = __error();
  *result = v6;
  return result;
}

void sub_26F200300(uint64_t a1, uint64_t a2)
{
  sub_26F1FFFB8(a2);
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = *(v4 + 8 * v5);
    if (v6 != a1)
    {
      if (v6)
      {
        **(a2 + 72) = *(a2 + 48);
        v4 = *(a2 + 40);
        v5 = *(a2 + 24);
        *(*(v4 + 8 * v5) + 16) = *(a2 + 72);
        *(*(v4 + 8 * v5) + 32) = *(a2 + 56);
      }

      *(v4 + 8 * v5) = a1;
      v7 = *(a2 + 40);
      v8 = *(v7 + 8 * v5);
      *(a2 + 56) = *(v8 + 32);
      v9 = *(v8 + 16);
      *(a2 + 72) = v9;
      *(a2 + 136) = v9;
      *(a2 + 8) = **(v7 + 8 * v5);
      *(a2 + 48) = *v9;
      *(a2 + 88) = 1;
    }
  }
}

void sub_26F2003BC(void **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a2 + 24));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a1)
    {
      *(v3 + 8 * *(a2 + 24)) = 0;
    }

    if (*(a1 + 10))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t sub_26F200434(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 48) = 1;
    *(result + 64) = 0;
    v2 = *(a2 + 40);
    if (v2)
    {
      v3 = *(v2 + 8 * *(a2 + 24));
    }

    else
    {
      v3 = 0;
    }

    if (v3 == result)
    {
      v4 = *(a2 + 24);
      v5 = *(v2 + 8 * v4);
      *(a2 + 56) = *(v5 + 32);
      v6 = *(v5 + 16);
      *(a2 + 72) = v6;
      *(a2 + 136) = v6;
      *(a2 + 8) = **(v2 + 8 * v4);
      *(a2 + 48) = *v6;
    }
  }

  return result;
}

void sub_26F2004B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_26F1FFFB8(a2);
    v4 = *(a2 + 40);
    v5 = *(a2 + 24);
    if (*(v4 + 8 * v5))
    {
      **(a2 + 72) = *(a2 + 48);
      v4 = *(a2 + 40);
      v6 = *(a2 + 24);
      *(*(v4 + 8 * v6) + 16) = *(a2 + 72);
      *(*(v4 + 8 * v6) + 32) = *(a2 + 56);
      v5 = v6 + 1;
      *(a2 + 24) = v6 + 1;
    }

    *(v4 + 8 * v5) = a1;
    v7 = *(a2 + 40);
    v8 = *(v7 + 8 * v5);
    *(a2 + 56) = *(v8 + 32);
    v9 = *(v8 + 16);
    *(a2 + 72) = v9;
    *(a2 + 136) = v9;
    *(a2 + 8) = **(v7 + 8 * v5);
    *(a2 + 48) = *v9;
    *(a2 + 88) = 1;
  }
}

void sub_26F20056C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 + 8 * *(a1 + 24));
    if (v3)
    {
      sub_26F2003BC(v3, a1);
      v4 = *(a1 + 24);
      *(*(a1 + 40) + 8 * v4) = 0;
      if (v4)
      {
        *(a1 + 24) = --v4;
      }

      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          *(a1 + 56) = *(v6 + 32);
          v7 = *(v6 + 16);
          *(a1 + 72) = v7;
          *(a1 + 136) = v7;
          *(a1 + 8) = **(v5 + 8 * v4);
          *(a1 + 48) = *v7;
          *(a1 + 88) = 1;
        }
      }
    }
  }
}

char *sub_26F200604(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 < 2 || *(a1 + v3) || *(a1 + a2 - 1))
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x48uLL, 0x7B713882uLL);
  if (!v8)
  {
    sub_26F200178("out of dynamic memory in yy_scan_buffer()");
  }

  v5 = v8;
  *(v8 + 6) = v3;
  *(v8 + 1) = a1;
  *(v8 + 2) = a1;
  *v8 = 0;
  *(v8 + 4) = v3;
  *(v8 + 5) = 0;
  *(v8 + 12) = 1;
  *(v8 + 60) = 0;
  sub_26F200300(v8, a3);
  return v5;
}

char *sub_26F2006AC(char *a1, uint64_t a2)
{
  v4 = strlen(a1);

  return sub_26F2006F0(a1, v4, a2);
}

char *sub_26F2006F0(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(a2 + 2, 0x7B713882uLL);
  if (!v6)
  {
    sub_26F200178("out of dynamic memory in yy_scan_bytes()");
  }

  if (a2)
  {
    v7 = v6;
    v8 = a2;
    do
    {
      v9 = *a1++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  *&v6[a2] = 0;
  result = sub_26F200604(v6, a2 + 2, a3);
  if (!result)
  {
    sub_26F200178("bad buffer in yy_scan_bytes()");
  }

  *(result + 10) = 1;
  return result;
}

uint64_t sub_26F20078C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 8 * *(a1 + 24))) != 0)
  {
    return *(v2 + 52);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F2007B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 8 * *(a1 + 24))) != 0)
  {
    return *(v2 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F2007FC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (!v2 || (v3 = *(v2 + 8 * *(a2 + 24))) == 0)
  {
    sub_26F200178("yyset_lineno called with no buffer");
  }

  *(v3 + 52) = result;
  return result;
}

uint64_t sub_26F200830(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (!v2 || (v3 = *(v2 + 8 * *(a2 + 24))) == 0)
  {
    sub_26F200178("yyset_column called with no buffer");
  }

  *(v3 + 56) = result;
  return result;
}

uint64_t sub_26F200884(uint64_t *a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x98uLL, 0x7B713882uLL);
    *a1 = v2;
    if (v2)
    {
      v3 = v2;
      result = 0;
      v3[18] = 0;
      *(v3 + 7) = 0u;
      *(v3 + 8) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 3) = 0u;
      *(v3 + 4) = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      *v3 = 0u;
      v5 = *a1;
      *(v5 + 92) = 0;
      *(v5 + 96) = 0;
      *(v5 + 104) = 0;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 40) = 0;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      return result;
    }

    v6 = __error();
    v7 = 12;
  }

  else
  {
    v6 = __error();
    v7 = 22;
  }

  *v6 = v7;
  return 1;
}

uint64_t sub_26F200920(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v4 = malloc_type_malloc(0x98uLL, 0x7B713882uLL);
    *a2 = v4;
    if (v4)
    {
      v5 = v4;
      result = 0;
      v5[18] = 0;
      *(v5 + 7) = 0u;
      *(v5 + 8) = 0u;
      *(v5 + 5) = 0u;
      *(v5 + 6) = 0u;
      *(v5 + 3) = 0u;
      *(v5 + 4) = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 2) = 0u;
      *v5 = 0u;
      v7 = *a2;
      *v7 = a1;
      *(v7 + 92) = 0;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      return result;
    }

    v8 = __error();
    v9 = 12;
  }

  else
  {
    v8 = __error();
    v9 = 22;
  }

  *v8 = v9;
  return 1;
}

uint64_t sub_26F2009C4(uint64_t a1)
{
  for (i = *(a1 + 40); i; i = *(a1 + 40))
  {
    if (!i[*(a1 + 24)])
    {
      break;
    }

    sub_26F2003BC(i[*(a1 + 24)], a1);
    *(*(a1 + 40) + 8 * *(a1 + 24)) = 0;
    sub_26F20056C(a1);
  }

  free(i);
  *(a1 + 40) = 0;
  free(*(a1 + 104));
  free(a1);
  return 0;
}

uint64_t sub_26F200A48(const char *a1, uint64_t a2)
{
  v7 = 0;
  v3 = fopen(a1, "r");
  if (!v3)
  {
    return *__error();
  }

  v4 = v3;
  if (sub_26F200920(a2, &v7))
  {
    return 1;
  }

  v6 = v7;
  v7[1] = v4;
  sub_26F1FF140(v6);
  sub_26F2009C4(v7);
  fclose(v4);
  return 0;
}

uint64_t sub_26F200ACC(char *a1, uint64_t a2)
{
  v9 = 0;
  if (sub_26F200920(a2, &v9))
  {
    return 1;
  }

  v4 = strlen(a1);
  v5 = sub_26F2006F0(a1, v4, v9);
  v6 = v9;
  v7 = v9[5];
  if (!v7 || (v8 = *(v7 + 8 * v9[3])) == 0)
  {
    sub_26F200178("yyset_lineno called with no buffer");
  }

  *(v8 + 52) = 0;
  sub_26F1FF140(v6);
  sub_26F2003BC(v5, v9);
  sub_26F2009C4(v9);
  return 0;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  MEMORY[0x282123638](mapPoint, *&mapPoint.y);
  result.longitude = v2;
  result.latitude = v1;
  return result;
}

MKCoordinateRegion MKCoordinateRegionForMapRect(MKMapRect rect)
{
  MEMORY[0x282123640](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.span.longitudeDelta = v4;
  result.span.latitudeDelta = v3;
  result.center.longitude = v2;
  result.center.latitude = v1;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x282123648](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectUnion(MKMapRect rect1, MKMapRect rect2)
{
  MEMORY[0x2821236C0](rect1.origin, *&rect1.origin.y, rect1.size, *&rect1.size.height, rect2.origin, *&rect2.origin.y, rect2.size, *&rect2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x2821F9A68](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}