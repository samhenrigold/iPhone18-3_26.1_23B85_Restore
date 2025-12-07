void TSCEFormulaCreationMagic::COLUMN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(22, &v5, a3);
}

void TSCEFormulaCreationMagic::COLUMNS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(23, &v5, a3);
}

void TSCEFormulaCreationMagic::COLUMNS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(23, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::COMBIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(24, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CONCAT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(329, &v5, a3);
}

void TSCEFormulaCreationMagic::CONCATENATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(25, &v5, a3);
}

void TSCEFormulaCreationMagic::CONCATENATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(25, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CONFIDENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(26, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CONVERT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(255, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CORREL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(27, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::COS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(28, &v5, a3);
}

void TSCEFormulaCreationMagic::COSH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(29, &v5, a3);
}

void TSCEFormulaCreationMagic::COUNT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(30, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUNTA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(31, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUNTBLANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(32, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUNTIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(33, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::COUNTIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(33, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::COUNTIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(233, &v5, a3);
}

void TSCEFormulaCreationMagic::COUNTIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(233, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::COUNTMATCHES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(317, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::COUPDAYBS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(34, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUPDAYS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(35, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUPDAYSNC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(36, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUPNUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(37, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COVAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(38, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::CRITBINOM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(251, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CUMIPMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(201, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::CUMPRINC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(202, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::DAYS360(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(261, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::DB(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(42, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::DDB(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(43, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::DEC2BIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(265, &v5, a3);
}

void TSCEFormulaCreationMagic::DEC2HEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(264, &v5, a3);
}

void TSCEFormulaCreationMagic::DEC2OCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(266, &v5, a3);
}

void TSCEFormulaCreationMagic::DEGREES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(44, &v5, a3);
}

void TSCEFormulaCreationMagic::DELTA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(223, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::DEVSQ(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(221, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::DISC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(45, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::DOLLAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(46, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2DAYS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(210, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2HOURS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(207, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2MILLISECONDS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(277, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2MINUTES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(208, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2SECONDS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(209, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2WEEKS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(211, &v5, a3);
}

void TSCEFormulaCreationMagic::DURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(212, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::EFFECT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(185, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::EOMONTH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(203, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ERF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(196, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ERFC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(197, &v5, a3);
}

void TSCEFormulaCreationMagic::EVEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(48, &v5, a3);
}

void TSCEFormulaCreationMagic::EXP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(50, &v5, a3);
}

void TSCEFormulaCreationMagic::EXPONDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(213, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::FACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(51, &v5, a3);
}

void TSCEFormulaCreationMagic::FACTDOUBLE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(224, &v5, a3);
}

void TSCEFormulaCreationMagic::FDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(244, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::FIND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(53, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(257, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::FIXED(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(54, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FORECAST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(56, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::FORMULATEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(323, &v5, a3);
}

void TSCEFormulaCreationMagic::FREQUENCY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(222, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(57, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::GAMMADIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(229, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::GAMMAINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(230, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::GAMMALN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(227, &v5, a3);
}

void TSCEFormulaCreationMagic::GCD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(58, &v5, a3);
}

void TSCEFormulaCreationMagic::GCD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(58, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::GEOMEAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(263, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::GESTEP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(225, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::GETPIVOTDATA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(325, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::GETPIVOTDATA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(325, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::GETPIVOTDATA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(325, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::GETPIVOTDATA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>, TSCEFormulaCreator a10)
{
  v25 = MEMORY[0x223DA1C10](*this);
  v33 = v25;
  v18 = MEMORY[0x223DA1C10](*a2.var0);
  v32 = v18;
  v19 = MEMORY[0x223DA1C10](*a3.var0);
  v31 = v19;
  v20 = MEMORY[0x223DA1C10](*a4.var0);
  v30 = v20;
  v21 = MEMORY[0x223DA1C10](*a5.var0);
  v29 = v21;
  v22 = MEMORY[0x223DA1C10](*a6.var0);
  v28 = v22;
  v23 = MEMORY[0x223DA1C10](*a7.var0);
  v27 = v23;
  v24 = MEMORY[0x223DA1C10](*a8.var0);
  v26 = v24;
  TSCEFormulaCreationMagic::function_8arg(325, &v33, &v32, &v31, &v30, &v29, &v28, &v27, a9, &v26);
}

void TSCEFormulaCreationMagic::HARMEAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(262, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::HEX2BIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(273, &v5, a3);
}

void TSCEFormulaCreationMagic::HEX2DEC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(274, &v5, a3);
}

void TSCEFormulaCreationMagic::HEX2OCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(275, &v5, a3);
}

void TSCEFormulaCreationMagic::HLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(59, &v5, a3);
}

void TSCEFormulaCreationMagic::HLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(59, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::HOUR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(60, &v5, a3);
}

void TSCEFormulaCreationMagic::IFERROR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(235, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::INDEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(63, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::INDEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(63, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::INT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(65, &v5, a3);
}

void TSCEFormulaCreationMagic::INTERCEPT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(66, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::INTERSECT_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(280, &v5, a3);
}

void TSCEFormulaCreationMagic::INTRATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(199, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::IPMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(67, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::IRR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(68, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::ISDATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(306, &v5, a3);
}

void TSCEFormulaCreationMagic::ISERROR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v6 = v5;
  TSCEFormulaCreationMagic::function_1arg(70, &v6, a4);
}

void TSCEFormulaCreationMagic::ISEVEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(71, &v5, a3);
}

void TSCEFormulaCreationMagic::ISNUMBER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(304, &v5, a3);
}

void TSCEFormulaCreationMagic::ISNUMBERORDATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(373, &v5, a3);
}

void TSCEFormulaCreationMagic::ISODD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(72, &v5, a3);
}

void TSCEFormulaCreationMagic::ISTEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(305, &v5, a3);
}

void TSCEFormulaCreationMagic::ISPMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(73, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::LARGE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(74, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LCM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(75, &v5, a3);
}

void TSCEFormulaCreationMagic::LCM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(75, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::LINEST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(276, &v5, a3);
}

void TSCEFormulaCreationMagic::LN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(78, &v5, a3);
}

void TSCEFormulaCreationMagic::LOG(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(79, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LOG10(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(80, &v5, a3);
}

void TSCEFormulaCreationMagic::LOGINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(240, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::LOGNORMDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(239, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::LOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(81, &v5, a3);
}

void TSCEFormulaCreationMagic::LOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(81, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MATCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(83, &v5, a3);
}

void TSCEFormulaCreationMagic::MATCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(83, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MATCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(83, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::_MAX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(84, &v5, a3);
}

void TSCEFormulaCreationMagic::_MAX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(84, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::_MAX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(84, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::MAXA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(85, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MAXIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(309, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MAXIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(309, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MEDIAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(86, &v5, a3);
}

void TSCEFormulaCreationMagic::MEDIAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(86, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::_MIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(88, &v5, a3);
}

void TSCEFormulaCreationMagic::_MIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(88, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::_MIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(88, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MINA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(89, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MINIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(310, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MINIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(310, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MINUTE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(90, &v5, a3);
}

void TSCEFormulaCreationMagic::MIRR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(91, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::MOD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(92, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MODE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(93, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MROUND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(95, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MULTINOMIAL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(250, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::NEGBINOMDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(243, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::NETWORKDAYS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(260, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::NOMINAL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(186, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::NORMDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(187, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::NORMINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(189, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::NORMSDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(188, &v5, a3);
}

void TSCEFormulaCreationMagic::NORMSINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(190, &v5, a3);
}

void TSCEFormulaCreationMagic::NOW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(97, &v5, a3);
}

void TSCEFormulaCreationMagic::NPER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(98, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::NPV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(99, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::NUMTOBASE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(253, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::OCT2BIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(270, &v5, a3);
}

void TSCEFormulaCreationMagic::OCT2DEC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(271, &v5, a3);
}

void TSCEFormulaCreationMagic::OCT2HEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(272, &v5, a3);
}

void TSCEFormulaCreationMagic::ODD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(100, &v5, a3);
}

void TSCEFormulaCreationMagic::OFFSET(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(101, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::OFFSET(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(101, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::OR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(102, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::PERCENTILE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(103, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PERCENTRANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(226, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PERMUT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(245, &v9, &v8, a4);
}

void *TSCEFormulaCreationMagic::PI@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221184BB4;
  v6[3] = &unk_278460290;
  v7 = 104;
  result = objc_msgSend_copy(v6, a2, a3, a4);
  *a1 = result;
  return result;
}

void TSCEFormulaCreationMagic::PMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(105, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::POISSON(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(106, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::POLYNOMIAL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(287, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::POWER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(107, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::PPMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(108, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PRICE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(109, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::PRICEDISC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(110, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::PRICEMAT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(111, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PROB(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(112, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PRODUCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(113, &v5, a3);
}

void TSCEFormulaCreationMagic::PRODUCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(113, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::PROPER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(114, &v5, a3);
}

void TSCEFormulaCreationMagic::PV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(115, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::QUARTILE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(249, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::QUOTIENT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(116, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::RADIANS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(117, &v5, a3);
}

void *TSCEFormulaCreationMagic::RAND@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221184BB4;
  v6[3] = &unk_278460290;
  v7 = 118;
  result = objc_msgSend_copy(v6, a2, a3, a4);
  *a1 = result;
  return result;
}

void TSCEFormulaCreationMagic::RANDBETWEEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(119, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::RANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(120, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::RANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(120, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::RATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(121, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::RECEIVED(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(200, &v21, &v20, &v19, &v18, &v17, a7);
}

void *TSCEFormulaCreationMagic::REFERENCE_NAME@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221184BB4;
  v6[3] = &unk_278460290;
  v7 = 322;
  result = objc_msgSend_copy(v6, a2, a3, a4);
  *a1 = result;
  return result;
}

void TSCEFormulaCreationMagic::REFERENCE_NAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(322, &v5, a3);
}

void TSCEFormulaCreationMagic::REFERENCE_NAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(322, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::REFERENCE_NAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(322, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::REPLACE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(122, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::REGEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(321, &v5, a3);
}

void TSCEFormulaCreationMagic::REGEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(321, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::REGEX_EXTRACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(324, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::REGEX_EXTRACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(324, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::REGEX_EXTRACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(324, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::REPT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(123, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ROMAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(125, &v9, &v8, a4);
}

void *TSCEFormulaCreationMagic::ROW@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221184BB4;
  v6[3] = &unk_278460290;
  v7 = 129;
  result = objc_msgSend_copy(v6, a2, a3, a4);
  *a1 = result;
  return result;
}

void TSCEFormulaCreationMagic::ROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(129, &v5, a3);
}

void TSCEFormulaCreationMagic::ROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(130, &v5, a3);
}

void TSCEFormulaCreationMagic::ROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(130, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SEARCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(131, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SECOND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(132, &v5, a3);
}

void *TSCEFormulaCreationMagic::SEQUENCE@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221184BB4;
  v6[3] = &unk_278460290;
  v7 = 338;
  result = objc_msgSend_copy(v6, a2, a3, a4);
  *a1 = result;
  return result;
}

void TSCEFormulaCreationMagic::SEQUENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(338, &v5, a3);
}

void TSCEFormulaCreationMagic::SEQUENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(338, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SEQUENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(338, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SEQUENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(338, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SERIESSUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(286, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SHOW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v12 = v4;
  TSUDecimal::operator=();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2211846E4;
  v13[3] = &unk_2784601E0;
  v13[4] = v9;
  v13[5] = v10;
  v8 = objc_msgSend_copy(v13, v5, v6, v7);
  v11 = v8;
  TSCEFormulaCreationMagic::function_2arg(341, &v12, &v11, a3);
}

void TSCEFormulaCreationMagic::SIGN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(133, &v5, a3);
}

void TSCEFormulaCreationMagic::SIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(134, &v5, a3);
}

void TSCEFormulaCreationMagic::SINH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(135, &v5, a3);
}

void TSCEFormulaCreationMagic::SLN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(136, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SLOPE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(137, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SMALL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(138, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SQRT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(139, &v5, a3);
}

void TSCEFormulaCreationMagic::SQRTPI(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(219, &v5, a3);
}

void TSCEFormulaCreationMagic::STANDARDIZE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(198, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::STDEV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(140, &v5, a3);
}

void TSCEFormulaCreationMagic::STDEV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(140, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::STDEVA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(141, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::STDEVP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(142, &v5, a3);
}

void TSCEFormulaCreationMagic::STDEVP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(142, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::STDEVPA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(143, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::STRIPDURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(278, &v5, a3);
}

void TSCEFormulaCreationMagic::SUBSTITUTE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(144, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SUBSTITUTE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(144, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SUBTOTAL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(316, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SUMIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(145, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SUMIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(145, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::SUMIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(231, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SUMIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(231, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SUMPRODUCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(146, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SUMSQ(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(147, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SUMX2MY2(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(216, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SUMX2PY2(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(217, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SUMXMY2(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(218, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SYD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(148, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::T(T *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(149, &v5, a3);
}

void TSCEFormulaCreationMagic::TAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(150, &v5, a3);
}

void TSCEFormulaCreationMagic::TANH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(151, &v5, a3);
}

void TSCEFormulaCreationMagic::TDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(241, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTAFTER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(320, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TEXTAFTER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(320, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTBEFORE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(318, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TEXTBEFORE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(318, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTBETWEEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(319, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTBETWEEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(319, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::TEXTJOIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(328, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTJOIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(328, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::TEXTSPLIT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(347, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TEXTSPLIT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(347, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTSPLIT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(347, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::TIME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(152, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(254, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TRIM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(155, &v5, a3);
}

void TSCEFormulaCreationMagic::TRUNC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(157, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TTEST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(248, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::VAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(160, &v5, a3);
}

void TSCEFormulaCreationMagic::VAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(160, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::VARA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(161, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::VARP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(162, &v5, a3);
}

void TSCEFormulaCreationMagic::VARP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(162, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::VARPA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(163, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::VDB(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(164, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::VLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(165, &v5, a3);
}

void TSCEFormulaCreationMagic::WEEKNUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(206, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::WEIBULL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(288, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::WORKDAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(204, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::XIRR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(311, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::XNPV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(312, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::YEARFRAC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(214, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::YIELD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(191, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::YIELDDISC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(192, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::YIELDMAT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(193, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::ZTEST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(215, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::__CELLVALUETYPE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(327, &v5, a3);
}

void TSCEFormulaCreationMagic::__INTERACTIONTYPE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(326, &v5, a3);
}

void TSCEFormulaCreationMagic::__SPILL(uint64_t *__return_ptr a1@<X8>, TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a3@<0:X1>)
{
  v4 = MEMORY[0x223DA1C10](*this, a3.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(337, &v5, a1);
}

void TSCEASTNodeArgInfo::TSCEASTNodeArgInfo(TSCEASTNodeArgInfo *this)
{
  this->var0 = 0;
  this->var2._lower = 0;
  this->var2._upper = 0;
  this->var3 = 0x7FFF7FFFFFFFLL;
  *this->var1 = -1;
  this->var1[2] = -1;
}

{
  this->var0 = 0;
  this->var2._lower = 0;
  this->var2._upper = 0;
  this->var3 = 0x7FFF7FFFFFFFLL;
  *this->var1 = -1;
  this->var1[2] = -1;
}

void TSCEASTNodeArgInfo::TSCEASTNodeArgInfo(TSCEASTNodeArgInfo *this, int a2, int a3, int a4)
{
  this->var2._lower = 0;
  this->var2._upper = 0;
  this->var3 = 0x7FFF7FFFFFFFLL;
  this->var0 = 0;
  this->var1[0] = a2;
  this->var1[1] = a3;
  this->var1[2] = a4;
}

{
  this->var2._lower = 0;
  this->var2._upper = 0;
  this->var3 = 0x7FFF7FFFFFFFLL;
  this->var0 = 0;
  this->var1[0] = a2;
  this->var1[1] = a3;
  this->var1[2] = a4;
}

uint64_t TSCEASTNodeArgInfo::positionForArg(TSCEASTNodeArgInfo *this, unsigned int a2)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return this->var1[a2];
  }
}

void TSCEFormulaCreator::TSCEFormulaCreator(TSCEFormulaCreator *this, double a2, const char *a3, uint64_t a4, uint64_t a5)
{
  this->var0 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22119D5D0;
  v8[3] = &unk_2784603F0;
  *&v8[4] = a2;
  v6 = objc_msgSend_copy(v8, a3, a4, a5);
  var0 = this->var0;
  this->var0 = v6;
}

void TSCEFormulaCreator::TSCEFormulaCreator(TSCEFormulaCreator *this, const char *a2, uint64_t a3, uint64_t a4)
{
  this->var0 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22119D6B4;
  v7[3] = &unk_278460410;
  v8 = a2;
  v5 = objc_msgSend_copy(v7, a2, a3, a4);
  var0 = this->var0;
  this->var0 = v5;
}

void **TSCEFormulaCreator::TSCEFormulaCreator(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEFormulaCreator::TSCEFormulaCreator(std::nullptr_t)", a4);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaCreator.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 2536, 0, "Passing NULL as an arg to TSCEFormulaCreator() - it doesn't like that");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v17 = objc_msgSend_copy(&unk_2834A28F0, v14, v15, v16);
  v18 = *a1;
  *a1 = v17;

  return a1;
}

void **TSCEFormulaCreator::operator=(void **a1, id *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_copy(*a2, a2, a3, a4);
  v6 = *a1;
  *a1 = v5;

  return a1;
}

void *TSCEFormulaCreator::operator-@<X0>(uint64_t a1@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22119D918;
  v7[3] = &unk_278460450;
  v7[4] = a1;
  result = objc_msgSend_copy(v7, a3, a4, a5);
  *a2 = result;
  return result;
}

unint64_t sub_22119D918(uint64_t a1, TSCEASTNodeArray *a2)
{
  (*(**(a1 + 32) + 16))();

  return TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 13, v3, v4);
}

uint64_t *sub_22119D9CC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_22119DA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_22107C2C0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_22119DA54(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = 0;
      v7 = *v6++;
      v8 = MEMORY[0x223DA1C10](v7);
      v9 = *a4;
      *a4++ = v8;
    }

    while (v6 != a3);
  }

  return a4;
}

id sub_22119DAB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_functionIndex(a2, a2, a3, a4);
  if (v6 > 299)
  {
    switch(v6)
    {
      case 300:
        goto LABEL_5;
      case 301:
        v9 = sub_221219ABC(a1);
        goto LABEL_10;
      case 302:
LABEL_5:
        v9 = sub_221219A78(a1);
LABEL_10:
        v14 = v9;
        v15 = 2;
        goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v6 == 298)
  {
    v13 = sub_2212199B4(a1);
    goto LABEL_12;
  }

  if (v6 == 299)
  {
    v13 = sub_2212199F8(a1);
LABEL_12:
    v14 = v13;
    v15 = 1;
    goto LABEL_14;
  }

LABEL_13:
  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "NSString *localizedModeName(TSCEStockAttribute, TSCEFunctionSpec *__unsafe_unretained)", v8);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataFunctions.mm", v19);
  v24 = objc_msgSend_functionName(a2, v21, v22, v23);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v25, v17, v20, 69, 0, "Unexpected function %@!", v24);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  v14 = -1;
  v15 = -1;
LABEL_14:
  v29 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v10, v11, v12);
  v33 = objc_msgSend_functionName(a2, v30, v31, v32);
  v35 = objc_msgSend_localizedModeNameForArgument_modeIndex_ofFunction_(v29, v34, v15, v14, v33);

  return v35;
}

id sub_22119DC84(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v9 = objc_msgSend_calcEngine(v5, v6, v7, v8);
  v200 = objc_msgSend_remoteDataStore(v9, v10, v11, v12);

  v13 = **a3;
  v14 = *(*a3 + 8);
  v213[0] = 0;
  v16 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v15, v5, a2, 0, v213);
  v17 = v213[0];
  v201 = objc_msgSend_uppercaseString(v16, v18, v19, v20);

  v212 = v17;
  v22 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v21, v5, a2, 1, &v212);
  v23 = v212;

  v27 = objc_msgSend_uppercaseString(v22, v24, v25, v26);

  if (v23)
  {
    v30 = objc_msgSend_raiseErrorOrConvert_(v5, v28, v23, v29);
    goto LABEL_40;
  }

  v198 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%@%@=X", v29, v201, v27);
  v34 = objc_msgSend_functionIndex(a2, v31, v32, v33);
  v35 = *a3;
  v36 = *(a3 + 8) - *a3;
  if (v34 != 301)
  {
    if (v36 < 0x11)
    {
      v48 = 0;
      goto LABEL_16;
    }

    v199 = v35[2];
    if (objc_msgSend_isTokenOrEmptyArg(v199, v43, v44, v45))
    {
      v48 = 0;
LABEL_11:

LABEL_16:
      v49 = sub_221219A58(v48);
      v199 = 0;
      v203 = 0x7FFFFFFFFFFFFFFFLL;
      v204 = 0x7FFFFFFFFFFFFFFFLL;
      v202 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_17;
    }

    v48 = 0;
    v99 = objc_msgSend_deepType_(v199, v46, v5, v47);
    if (v99 > 6)
    {
      if (v99 == 7)
      {
        v206 = 0;
        v141 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v199, v86, v5, a2, 2, &v206);
        v23 = v206;
        v136 = objc_msgSend_lowercaseString(v141, v142, v143, v144);

        if (v23)
        {
          v140 = objc_msgSend_raiseErrorOrConvert_(v5, v145, v23, v147);
          goto LABEL_57;
        }

        v177 = objc_msgSend_locale(v5, v145, v146, v147);
        v48 = sub_22128EE4C(v136, v177);

        if (v48 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v205 = 0;
          v179 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v199, v178, v5, a2, 2, &v205);
          v23 = v205;
          v183 = objc_msgSend_integer(v179, v180, v181, v182);

          if (v23)
          {
            v140 = objc_msgSend_raiseErrorOrConvert_(v5, v184, v23, v186);
            goto LABEL_57;
          }

          if (v183 >= 0xB)
          {
            v187 = objc_msgSend_invalidLiveCurrencyAttributeError(TSCEError, v184, v185, v186);
            v190 = objc_msgSend_raiseErrorOrConvert_(v5, v191, v187, v192);
            goto LABEL_77;
          }

          v48 = v183;
        }

        goto LABEL_82;
      }

      if (v99 == 10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (!v99)
      {
        goto LABEL_11;
      }

      if (v99 == 5)
      {
        v207 = 0;
        v100 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v199, v86, v5, a2, 2, &v207);
        v23 = v207;
        v104 = objc_msgSend_integer(v100, v101, v102, v103);

        if (v23)
        {
          v98 = objc_msgSend_raiseErrorOrConvert_(v5, v105, v23, v107);
          goto LABEL_34;
        }

        if (v104 >= 0xB)
        {
          v109 = objc_msgSend_invalidLiveCurrencyAttributeError(TSCEError, v105, v106, v107);
          v164 = objc_msgSend_raiseErrorOrConvert_(v5, v165, v109, v166);
LABEL_64:
          v30 = v164;
          goto LABEL_50;
        }

        v48 = v104;
LABEL_82:
        if (v48 - 9 <= 1)
        {
          v193 = sub_221219A58(v48);
          v109 = sub_221219B30(v193);
          v111 = objc_msgSend_disallowedStockModeError_(TSCEError, v194, v109, v195);
          v114 = objc_msgSend_raiseErrorOrConvert_(v5, v196, v111, v197);
          goto LABEL_49;
        }

        goto LABEL_11;
      }
    }

LABEL_48:
    v109 = objc_msgSend_functionName(a2, v86, v87, v88);
    v111 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v110, v109, 2);
    v114 = objc_msgSend_raiseErrorOrConvert_(v5, v112, v111, v113);
LABEL_49:
    v30 = v114;

LABEL_50:
    goto LABEL_38;
  }

  if (v36 >= 0x11)
  {
    v199 = v35[2];
    if (objc_msgSend_isTokenOrEmptyArg(v199, v37, v38, v39))
    {
      v42 = 0;
LABEL_7:

      goto LABEL_13;
    }

    v42 = 0;
    v89 = objc_msgSend_deepType_(v199, v40, v5, v41);
    if (v89 <= 6)
    {
      if (!v89)
      {
        goto LABEL_7;
      }

      if (v89 == 5)
      {
        v211 = 0;
        v90 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v199, v86, v5, a2, 2, &v211);
        v23 = v211;
        v94 = objc_msgSend_integer(v90, v91, v92, v93);

        if (v23)
        {
          v98 = objc_msgSend_raiseErrorOrConvert_(v5, v95, v23, v97);
LABEL_34:
          v30 = v98;
          goto LABEL_39;
        }

        if (v94 < 4)
        {
          v42 = v94;
          goto LABEL_7;
        }

        v109 = objc_msgSend_invalidHistoricalCurrencyAttributeError(TSCEError, v95, v96, v97);
        v164 = objc_msgSend_raiseErrorOrConvert_(v5, v162, v109, v163);
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v89 != 7)
    {
      if (v89 == 10)
      {
        goto LABEL_7;
      }

      goto LABEL_48;
    }

    v210 = 0;
    v132 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v199, v86, v5, a2, 2, &v210);
    v23 = v210;
    v136 = objc_msgSend_lowercaseString(v132, v133, v134, v135);

    if (v23)
    {
      v140 = objc_msgSend_raiseErrorOrConvert_(v5, v137, v23, v139);
LABEL_57:
      v30 = v140;
LABEL_58:

      goto LABEL_39;
    }

    v167 = objc_msgSend_locale(v5, v137, v138, v139);
    v42 = sub_22128EE64(v136, v167);

    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v209 = 0;
      v169 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v199, v168, v5, a2, 2, &v209);
      v23 = v209;
      v173 = objc_msgSend_integer(v169, v170, v171, v172);

      if (v23)
      {
        v140 = objc_msgSend_raiseErrorOrConvert_(v5, v174, v23, v176);
        goto LABEL_57;
      }

      if (v173 >= 4)
      {
        v187 = objc_msgSend_invalidHistoricalCurrencyAttributeError(TSCEError, v174, v175, v176);
        v190 = objc_msgSend_raiseErrorOrConvert_(v5, v188, v187, v189);
LABEL_77:
        v30 = v190;

        v23 = 0;
        goto LABEL_58;
      }

      v42 = v173;
    }

    goto LABEL_7;
  }

  v42 = 0;
LABEL_13:
  v49 = sub_221219A9C(v42);
  v50 = *(*a3 + 24);
  v208 = 0;
  v52 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v50, v51, v5, a2, 3, &v208);
  v23 = v208;
  v199 = v52;
  if (!v23)
  {
    if (!v52 || (objc_msgSend_timeIntervalSinceNow(v52, v53, v54, v55), v82 > 0.0))
    {
      v83 = objc_msgSend_invalidHistoricalDateError(TSCEError, v53, v54, v55);
      v30 = objc_msgSend_raiseErrorOrConvert_(v5, v84, v83, v85);

      goto LABEL_23;
    }

    v203 = 0x7FFFFFFFFFFFFFFFLL;
    v204 = 0x7FFFFFFFFFFFFFFFLL;
    v202 = 0x7FFFFFFFFFFFFFFFLL;
    v115 = MEMORY[0x277CBEAA8];
    objc_msgSend_timeIntervalSinceReferenceDate(v52, v116, v117, v118);
    v123 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v115, v120, v121, v122, (86400 * vcvtmd_s64_f64(v119 / 86400.0)));
    if (!v123)
    {
      v148 = MEMORY[0x277D81150];
      v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "TSCEValue *evaluateCurrencyFunction(TSCEEvaluationContext *__strong, TSCEFunctionSpec *__unsafe_unretained, const TSCEValueVector &)", v125);
      v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataFunctions.mm", v151);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v153, v149, v152, 244, 0, "Failed to transform date %@ for CURRENCYH function!", 0);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v154, v155, v156);
      v61 = objc_msgSend_invalidHistoricalDateError(TSCEError, v157, v158, v159);
      v30 = objc_msgSend_raiseErrorOrConvert_(v5, v160, v61, v161);
LABEL_37:

LABEL_38:
      v23 = 0;
      goto LABEL_39;
    }

    v126 = v123;

    v130 = objc_msgSend_gregorianCalendar(TSCECalendar, v127, v128, v129);
    objc_msgSend_extractComponentsFromDate_year_month_day_(v130, v131, v126, &v204, &v203, &v202);

    v199 = v126;
LABEL_17:
    v59 = objc_msgSend_functionIndex(a2, v56, v57, v58);
    v61 = objc_msgSend_specifierWithFunctionIndex_symbol_attribute_year_month_day_(TSCERemoteDataSpecifier, v60, v59, v198, v49, v204, v203, v202);
    objc_msgSend_addRemoteDataSpecifierInterestedIn_(v5, v62, v61, v63);
    v66 = objc_msgSend_valueForRemoteData_(v200, v64, v61, v65);
    if ((objc_msgSend_isNil(v66, v67, v68, v69) & 1) != 0 || objc_msgSend_isError(v66, v70, v71, v72))
    {
      v73 = objc_msgSend_attribute(v61, v70, v71, v72);
      v76 = sub_22119DAB0(v73, a2, v74, v75);
      v79 = objc_msgSend_remoteDataUnavailableErrorWithAttribute_(TSCEError, v77, v76, v78);
      v30 = objc_msgSend_raiseErrorOrConvert_(v5, v80, v79, v81);
    }

    else
    {
      v30 = v66;
    }

    goto LABEL_37;
  }

  v30 = objc_msgSend_raiseErrorOrConvert_(v5, v53, v23, v55);
LABEL_23:

LABEL_39:
LABEL_40:

  return v30;
}

id sub_22119E890(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_isNumberValue(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_number(v4, v8, v9, v10);
    if (objc_msgSend_hasUnits(v11, v12, v13, v14) && objc_msgSend_dimension(v11, v15, v16, v17) == 4)
    {
      v21 = objc_msgSend_unit(v11, v18, v19, v20);
      v24 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v22, v21, v23);

      if (v24)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v25 = objc_msgSend_locale(v3, v8, v9, v10);
  v24 = objc_msgSend_currencyCode(v25, v26, v27, v28);

LABEL_8:

  return v24;
}

id sub_22119F154(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v9 = objc_msgSend_calcEngine(v5, v6, v7, v8);
  v13 = objc_msgSend_remoteDataStore(v9, v10, v11, v12);

  v14 = **a3;
  v217 = 0;
  v16 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v15, v5, a2, 0, &v217);
  v17 = v217;
  v21 = objc_msgSend_uppercaseString(v16, v18, v19, v20);

  if (v17)
  {
    v25 = objc_msgSend_raiseErrorOrConvert_(v5, v22, v17, v24);
    goto LABEL_31;
  }

  if (!objc_msgSend_length(v21, v22, v23, v24))
  {
    v206 = objc_msgSend_functionName(a2, v26, v27, v28);
    v45 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v44, v206, 1);
    v48 = objc_msgSend_raiseErrorOrConvert_(v5, v46, v45, v47);
    goto LABEL_12;
  }

  v29 = objc_msgSend_functionIndex(a2, v26, v27, v28);
  v33 = *a3;
  v34 = *(a3 + 8) - *a3;
  if (v29 != 299)
  {
    if (v34 < 9 || (objc_msgSend_isTokenOrEmptyArg(v33[1], v30, v31, v32) & 1) != 0)
    {
      v49 = 0;
LABEL_16:
      v36 = sub_221219994(v49);
      v208 = 0x7FFFFFFFFFFFFFFFLL;
      v209 = 0x7FFFFFFFFFFFFFFFLL;
      v206 = 0;
      v207 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_17;
    }

    v206 = *(*a3 + 8);
    v49 = 0;
    v110 = objc_msgSend_deepType_(v206, v108, v5, v109);
    if (v110 > 6)
    {
      if (v110 != 7)
      {
        if (v110 != 10)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      v211 = 0;
      v148 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v206, v95, v5, a2, 1, &v211);
      v17 = v211;
      v37 = objc_msgSend_lowercaseString(v148, v149, v150, v151);

      if (v17)
      {
        v43 = objc_msgSend_raiseErrorOrConvert_(v5, v152, v17, v154);
        goto LABEL_10;
      }

      v185 = objc_msgSend_locale(v5, v152, v153, v154);
      v49 = sub_22128ECD4(v37, v185);

      if (v49 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v210 = 0;
        v187 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v206, v186, v5, a2, 1, &v210);
        v17 = v210;
        v191 = objc_msgSend_integer(v187, v188, v189, v190);

        if (v17)
        {
          v43 = objc_msgSend_raiseErrorOrConvert_(v5, v192, v17, v194);
          goto LABEL_10;
        }

        if (v191 >= 0x1A)
        {
          v198 = objc_msgSend_invalidLiveStockAttributeError(TSCEError, v192, v193, v194);
          v25 = objc_msgSend_raiseErrorOrConvert_(v5, v199, v198, v200);

          v17 = 0;
          goto LABEL_29;
        }

        v49 = v191;
      }
    }

    else
    {
      if (!v110)
      {
LABEL_50:

        goto LABEL_16;
      }

      if (v110 != 5)
      {
        goto LABEL_53;
      }

      v212 = 0;
      v111 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v206, v95, v5, a2, 1, &v212);
      v17 = v212;
      v115 = objc_msgSend_integer(v111, v112, v113, v114);

      if (v17)
      {
        v107 = objc_msgSend_raiseErrorOrConvert_(v5, v116, v17, v118);
        goto LABEL_44;
      }

      if (v115 >= 0x1A)
      {
        v169 = objc_msgSend_invalidLiveStockAttributeError(TSCEError, v116, v117, v118);
        v172 = objc_msgSend_raiseErrorOrConvert_(v5, v173, v169, v174);
        goto LABEL_66;
      }

      v49 = v115;
    }

    if (v49 <= 0x12 && ((1 << v49) & 0x66000) != 0)
    {
      v201 = sub_221219994(v49);
      v45 = sub_221219B30(v201);
      v59 = objc_msgSend_disallowedStockModeError_(TSCEError, v202, v45, v203);
      v75 = objc_msgSend_raiseErrorOrConvert_(v5, v204, v59, v205);
      goto LABEL_19;
    }

    goto LABEL_50;
  }

  if (v34 >= 9 && (objc_msgSend_isTokenOrEmptyArg(v33[1], v30, v31, v32) & 1) == 0)
  {
    v206 = *(*a3 + 8);
    v35 = 0;
    v98 = objc_msgSend_deepType_(v206, v93, v5, v94);
    if (v98 <= 6)
    {
      if (!v98)
      {
        goto LABEL_47;
      }

      if (v98 == 5)
      {
        v216 = 0;
        v99 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v206, v95, v5, a2, 1, &v216);
        v17 = v216;
        v103 = objc_msgSend_integer(v99, v100, v101, v102);

        if (v17)
        {
          v107 = objc_msgSend_raiseErrorOrConvert_(v5, v104, v17, v106);
LABEL_44:
          v25 = v107;
          goto LABEL_30;
        }

        if (v103 >= 5)
        {
          v169 = objc_msgSend_invalidHistoricalStockAttributeError(TSCEError, v104, v105, v106);
          v172 = objc_msgSend_raiseErrorOrConvert_(v5, v170, v169, v171);
LABEL_66:
          v25 = v172;

          goto LABEL_25;
        }

        v35 = v103;
LABEL_47:

        goto LABEL_8;
      }

LABEL_53:
      v45 = objc_msgSend_functionName(a2, v95, v96, v97);
      v59 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v136, v45, 2);
      v75 = objc_msgSend_raiseErrorOrConvert_(v5, v137, v59, v138);
      goto LABEL_19;
    }

    if (v98 != 7)
    {
      if (v98 == 10)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }

    v215 = 0;
    v139 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v206, v95, v5, a2, 1, &v215);
    v17 = v215;
    v143 = objc_msgSend_lowercaseString(v139, v140, v141, v142);

    if (v17)
    {
      v147 = objc_msgSend_raiseErrorOrConvert_(v5, v144, v17, v146);
LABEL_57:
      v25 = v147;
LABEL_58:

      goto LABEL_30;
    }

    v175 = objc_msgSend_locale(v5, v144, v145, v146);
    v35 = sub_22128EE34(v143, v175);

    if (v35 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v214 = 0;
      v177 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v206, v176, v5, a2, 1, &v214);
      v17 = v214;
      v181 = objc_msgSend_integer(v177, v178, v179, v180);

      if (v17)
      {
        v147 = objc_msgSend_raiseErrorOrConvert_(v5, v182, v17, v184);
        goto LABEL_57;
      }

      if (v181 >= 5)
      {
        v195 = objc_msgSend_invalidHistoricalStockAttributeError(TSCEError, v182, v183, v184);
        v25 = objc_msgSend_raiseErrorOrConvert_(v5, v196, v195, v197);

        v17 = 0;
        goto LABEL_58;
      }

      v35 = v181;
    }

    goto LABEL_47;
  }

  v35 = 0;
LABEL_8:
  v36 = sub_2212199D8(v35);
  v37 = *(*a3 + 16);
  v213 = 0;
  v39 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v37, v38, v5, a2, 2, &v213);
  v17 = v213;
  v206 = v39;
  if (v17)
  {
    v43 = objc_msgSend_raiseErrorOrConvert_(v5, v40, v17, v42);
LABEL_10:
    v25 = v43;
LABEL_29:

    goto LABEL_30;
  }

  if (!v39 || (objc_msgSend_timeIntervalSinceNow(v39, v40, v41, v42), v88 > 0.0))
  {
    v89 = objc_msgSend_invalidHistoricalDateError(TSCEError, v40, v41, v42);
    v25 = objc_msgSend_raiseErrorOrConvert_(v5, v90, v89, v91);

    goto LABEL_29;
  }

  v208 = 0x7FFFFFFFFFFFFFFFLL;
  v209 = 0x7FFFFFFFFFFFFFFFLL;
  v207 = 0x7FFFFFFFFFFFFFFFLL;
  v119 = MEMORY[0x277CBEAA8];
  objc_msgSend_timeIntervalSinceReferenceDate(v39, v120, v121, v122);
  v127 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v119, v124, v125, v126, (86400 * vcvtmd_s64_f64(v123 / 86400.0)));
  if (v127)
  {
    v130 = v127;

    v134 = objc_msgSend_gregorianCalendar(TSCECalendar, v131, v132, v133);
    objc_msgSend_extractComponentsFromDate_year_month_day_(v134, v135, v130, &v209, &v208, &v207);

    v206 = v130;
LABEL_17:
    v53 = objc_msgSend_functionIndex(a2, v50, v51, v52);
    v45 = objc_msgSend_specifierWithFunctionIndex_symbol_attribute_year_month_day_(TSCERemoteDataSpecifier, v54, v53, v21, v36, v209, v208, v207);
    objc_msgSend_addRemoteDataSpecifierInterestedIn_(v5, v55, v45, v56);
    v59 = objc_msgSend_valueForRemoteData_(v13, v57, v45, v58);
    v63 = objc_msgSend_asErrorValue(v59, v60, v61, v62);
    v67 = objc_msgSend_error(v63, v64, v65, v66);
    isNotReadyError = objc_msgSend_isNotReadyError(v67, v68, v69, v70);

    if (!isNotReadyError && ((objc_msgSend_isNil(v59, v72, v73, v74) & 1) != 0 || objc_msgSend_isError(v59, v76, v77, v78)))
    {
      v79 = objc_msgSend_attribute(v45, v76, v77, v78);
      v82 = sub_22119DAB0(v79, a2, v80, v81);
      v85 = objc_msgSend_remoteDataUnavailableErrorWithAttribute_(TSCEError, v83, v82, v84);
      v25 = objc_msgSend_raiseErrorOrConvert_(v5, v86, v85, v87);

      goto LABEL_23;
    }

    v75 = v59;
LABEL_19:
    v25 = v75;
LABEL_23:

    goto LABEL_24;
  }

  v155 = MEMORY[0x277D81150];
  v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "TSCEValue *evaluateStockFunction(TSCEEvaluationContext *__strong, TSCEFunctionSpec *__unsafe_unretained, const TSCEValueVector &)", v129);
  v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataFunctions.mm", v158);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v155, v160, v156, v159, 610, 0, "Failed to transform date %@ for STOCKH function!", 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162, v163);
  v45 = objc_msgSend_invalidHistoricalDateError(TSCEError, v164, v165, v166);
  v48 = objc_msgSend_raiseErrorOrConvert_(v5, v167, v45, v168);
LABEL_12:
  v25 = v48;
LABEL_24:

LABEL_25:
  v17 = 0;
LABEL_30:

LABEL_31:

  return v25;
}

void sub_2211A0C90(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_msgSend_setKeepObjectInMemory_(v9, v3, 1, v4);
  v7 = objc_msgSend__groupForTileID_(*(a1 + 32), v5, *(a1 + 40), v6);
  objc_msgSend_setReference_forTileID_(v7, v8, v9, *(a1 + 40));
}

void sub_2211A0D20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4);
  v5 = *(a1 + 32);
  v9 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v6, 0, 1000000);
  objc_msgSend_pruneTilesForRows_(v5, v7, v9, v8);
}

__n128 sub_2211A0DA8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211A0DCC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2211A0DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(*(a1 + 32) + 8);
  v9 = (a1 + 40);
  v7 = sub_2211A6CD0((v6 + 48), (a1 + 40), &unk_2217E0608, &v9);
  v8 = v7[3];
  v7[3] = v3;
}

uint64_t sub_2211A0E74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4);
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8) + 48;
  v7 = *(*(a1 + 48) + 8) + 48;

  return MEMORY[0x2821F9670](v5, sel__upgradeFromTileIDMap_referenceMap_, v6, v7);
}

BOOL sub_2211A1484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return *(a2 + 8) < *(a3 + 8);
  }

  else
  {
    return *a2 < *a3;
  }
}

void sub_2211A14AC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = (*(a1 + 48) + a3);
  v17 = v5;
  v8 = objc_msgSend__tileForID_createIfMissing_(*(a1 + 32), v7, v6 >> 8, 1);
  objc_msgSend_spliceRowInfo_atTileRowIndex_overwrite_(v8, v9, v17, v6, 1);
  if ((objc_msgSend_bncStorageBufferExists(v17, v10, v11, v12) & 1) == 0)
  {
    objc_msgSend_setLastSavedInBNC_(v8, v13, 0, v14);
  }

  if (objc_msgSend_containsIndex_(*(a1 + 40), v13, v6, v14))
  {
    *(*(a1 + 32) + 160) = 1;
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_2216F6D0C();
    }
  }

  objc_msgSend_addIndex_(*(a1 + 40), v15, v6, v16);
}

void sub_2211A15C8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2211A160C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2211A1988(void *a1, void *a2, int a3)
{
  v24 = a2;
  v6 = a1[5];
  v7 = *(v6 + 40);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 32);
  v9 = *v7;
  if (v8 >= *v7)
  {
    if (v9 != *(v6 + 36))
    {
LABEL_7:
      *v7 = v9 + 1;
      v10 = google::protobuf::Arena::CreateMaybeMessage<TST::TileStorage_Tile>(*(v6 + 24));
      v11 = *(v6 + 32);
      v12 = *(v6 + 40) + 8 * v11;
      *(v6 + 32) = v11 + 1;
      *(v12 + 8) = v10;
      goto LABEL_8;
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
    v7 = *(v6 + 40);
    v9 = *v7;
    goto LABEL_7;
  }

  *(v6 + 32) = v8 + 1;
  v10 = *&v7[2 * v8 + 2];
LABEL_8:
  v13 = *(v10 + 16);
  *(v10 + 16) = v13 | 2;
  *(v10 + 32) = a3;
  v14 = a1[4];
  *(v10 + 16) = v13 | 3;
  v15 = *(v10 + 24);
  if (!v15)
  {
    v16 = *(v10 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x223DA0390](v16);
    *(v10 + 24) = v15;
  }

  objc_msgSend_setStrongLazyReference_message_(v14, v5, v24, v15);
  v17 = a1[6];
  v18 = *(v17 + 32);
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = *(v17 + 24);
  v20 = *v18;
  if (v19 < *v18)
  {
    *(v17 + 24) = v19 + 1;
    v21 = *&v18[2 * v19 + 2];
    goto LABEL_19;
  }

  if (v20 == *(v17 + 28))
  {
LABEL_17:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v17 + 16));
    v18 = *(v17 + 32);
    v20 = *v18;
  }

  *v18 = v20 + 1;
  v21 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree_Node>(*(v17 + 16));
  v22 = *(v17 + 24);
  v23 = *(v17 + 32) + 8 * v22;
  *(v17 + 24) = v22 + 1;
  *(v23 + 8) = v21;
LABEL_19:
  v21[4] |= 3u;
  v21[6] = a3 << 8;
  v21[7] = a3;
}

void sub_2211A1CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211A1CEC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v9 = objc_msgSend_archivingCompatibilityVersion(v11, v6, v7, v8);
  v10 = *(*(a1 + 32) + 8);
  if (v9 > *(v10 + 24))
  {
    *(v10 + 24) = v9;
  }

  if (v9 == 0xA000000000003)
  {
    *a4 = 1;
  }
}

void sub_2211A1F4C()
{
  v0 = objc_alloc_init(MEMORY[0x277D81378]);
  v1 = qword_27CFB5298;
  qword_27CFB5298 = v0;
}

void sub_2211A268C(uint64_t a1, void *a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211A2730;
  v7[3] = &unk_2784605B0;
  v8 = *(a1 + 32);
  v9 = a3;
  objc_msgSend_enumerateTilesWithBlock_(a2, v5, v7, v6);
}

uint64_t sub_2211A2730(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

void sub_2211A282C(uint64_t a1, void *a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211A28D0;
  v7[3] = &unk_2784605B0;
  v8 = *(a1 + 32);
  v9 = a3;
  objc_msgSend_enumerateLoadedTilesWithBlock_(a2, v5, v7, v6);
}

uint64_t sub_2211A28D0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

void sub_2211A3E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose((v25 - 136), 8);

  _Unwind_Resume(a1);
}

void *sub_2211A3EB0(void *result, const char *a2, unint64_t a3, _BYTE *a4)
{
  v5 = *(result + 6);
  v6 = a3 >= v5;
  v7 = a3 - v5;
  if (v6)
  {
    if (*(result + 7) + v5 <= a3)
    {
      *a4 = 1;
    }

    else
    {
      *(*(*(result + 5) + 8) + 24) = 1;
      return objc_msgSend_replacePointerAtIndex_withPointer_(*(result + 4), a2, v7, a2);
    }
  }

  return result;
}

void *sub_2211A3EF8(void *result, const char *a2, unint64_t a3, _BYTE *a4)
{
  v5 = *(result + 6);
  v6 = a3 >= v5;
  v7 = a3 - v5;
  if (v6)
  {
    if (*(result + 7) + v5 <= a3)
    {
      *a4 = 1;
    }

    else
    {
      *(*(*(result + 5) + 8) + 24) = 1;
      return objc_msgSend_replacePointerAtIndex_withPointer_(*(result + 4), a2, v7, a2);
    }
  }

  return result;
}

void sub_2211A4070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211A40A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211A40C0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2211A41A4;
  v11[3] = &unk_278460648;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v14 = a3;
  v8 = v5;
  objc_msgSend_performAsync_(v6, v9, v11, v10);
}

void sub_2211A426C(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211A4314;
  v8[3] = &unk_278460698;
  v11 = a3;
  v9 = *(a1 + 32);
  v10 = a4;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(a2, v6, v8, v7);
}

uint64_t sub_2211A4314(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

void sub_2211A44CC(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211A4500(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 48) + a3;
  if (v8 >= *(a1 + 52))
  {
    if (v8 <= *(a1 + 56))
    {
      v9 = v7;
      (*(*(a1 + 32) + 16))();
      v7 = v9;
      if (*a4 == 1)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      *a4 = 1;
    }
  }
}

void sub_2211A4AE0()
{
  v0 = TSULogCreateCategory();
  v1 = TSTTilesCat_log_t;
  TSTTilesCat_log_t = v0;
}

void sub_2211A4BA4()
{
  v0 = TSULogCreateCategory();
  v1 = TSTTilesCat_log_t;
  TSTTilesCat_log_t = v0;
}

void sub_2211A4E2C()
{
  v0 = TSULogCreateCategory();
  v1 = TSTTilesCat_log_t;
  TSTTilesCat_log_t = v0;
}

void sub_2211A5090()
{
  v0 = TSULogCreateCategory();
  v1 = TSTTilesCat_log_t;
  TSTTilesCat_log_t = v0;
}

void sub_2211A51EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2211A520C(uint64_t a1, void *a2)
{
  v13 = a2;
  if (objc_msgSend_cellCount(v13, v3, v4, v5))
  {
    v11 = objc_msgSend_maxColumnIndex(v13, v6, v7, v8);
    v12 = 0;
    do
    {
      if (objc_msgSend_cellStorageRefAtIndex_(v13, v9, v12, v10))
      {
        objc_msgSend_incrementValueForKey_(*(*(*(a1 + 32) + 8) + 40), v9, v12, v10);
      }

      ++v12;
    }

    while (v11 >= v12);
  }
}

void sub_2211A5480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211A54BC(uint64_t a1, void *a2, int a3)
{
  v5 = objc_msgSend_removeColumnsAtColumnIndex_numberOfColumns_(a2, a2, *(a1 + 52), *(a1 + 48));
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    os_unfair_lock_lock((*(*(a1 + 40) + 8) + 48));
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211A55BC;
    v11[3] = &unk_278460730;
    v13 = a3;
    v12 = *(a1 + 32);
    objc_msgSend_enumerateKeysAndValuesUsingBlock_(v5, v9, v11, v10);
    os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 48));
  }
}

void sub_2211A57CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2211A57EC(uint64_t a1, void *a2, unsigned int a3)
{
  v16 = a2;
  if (!v16)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableTileStorage populatedRows]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1438, 0, "invalid nil value for '%{public}s'", "rowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v5, a3, v6);
}

void sub_2211A5A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211A5A3C(uint64_t a1, const char *a2, _BYTE *a3)
{
  v4 = a2;
  v6 = objc_msgSend__tileForID_createIfMissing_(*(a1 + 32), a2, a2, 0);
  v21 = v6;
  if (!v6)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Corrupt tile ID set!", "[TSTTableTileStorage lastPopulatedRowIndex]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 1457);
    v13 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableTileStorage lastPopulatedRowIndex]_block_invoke", v15);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v16, v19, 1457, 1, "Corrupt tile ID set!");

    TSUCrashBreakpoint();
    abort();
  }

  if ((objc_msgSend_isEmpty(v6, v7, v8, v9) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_maxRow(v21, v10, v11, v12) + (v4 << 8);
    *a3 = 1;
  }
}

void sub_2211A5D24(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_msgSend_willModifyForUpgrade(v7, v2, v3, v4);
  objc_msgSend_enumerateRowsWithBlock_(v7, v5, &unk_2834A2A70, v6);
}

void sub_2211A5E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2211A5E70(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_lastSavedInBNC(a2, a2, a3, a4);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2211A5FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2211A6024(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2211A40A8;
  v17 = sub_2211A40B8;
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v6, @"Tile ID %lu, firstRow:%d\n", v7, a3 >> 8, a3);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211A61C4;
  v12[3] = &unk_2784607C0;
  v12[4] = &v19;
  v12[5] = &v13;
  objc_msgSend_enumerateRowsWithBlock_(v5, v8, v12, v9);
  if ((v20[3] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_msgSend_appendString_(*(*(*(a1 + 40) + 8) + 40), v10, v14[5], v11);
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
}

void sub_2211A618C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_2211A61C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v6 = objc_msgSend_validateWithResult_(v3, v4, &v10, v5);
  v9 = v10;
  if ((v6 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_msgSend_appendString_(*(*(*(a1 + 40) + 8) + 40), v7, v9, v8);
  }
}

void sub_2211A6408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 96), 8);
  _Block_object_dispose((v25 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2211A645C(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  if (objc_msgSend_isEmpty(v33, v5, v6, v7))
  {
    if (a3)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableTileStorage auditTilesForRowOverlapAndExtensionPastTableBounds:withDataStore:result:]_block_invoke", v10);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1576, 0, "Expected non-empty tile.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }
  }

  else
  {
    v20 = objc_msgSend_maxRow(v33, v8, v9, v10);
    v21 = (v20 + 1);
    v25 = (v20 + a3);
    if (objc_msgSend_intersectsIndexesInRange_(*(*(*(a1 + 40) + 8) + 40), v22, a3, v21))
    {
      objc_msgSend_appendFormat_(*(a1 + 32), v23, @"Tile with rows %d-%d overlaps with previous tiles in the table.\n", v24, a3, v25);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    objc_msgSend_addIndexesInRange_(*(*(*(a1 + 40) + 8) + 40), v23, a3, v21);
    v29 = objc_msgSend_maxColumn(v33, v26, v27, v28);
    if (v29 != 0x7FFF)
    {
      v32 = *(a1 + 68);
      if (v25 > *(a1 + 64) || v29 > v32)
      {
        objc_msgSend_appendFormat_(*(a1 + 32), v30, @"TileLastRow:%d tileMaxColumn:%d extends beyond tableModelLastRow:%d lastColumn:%d\n", v31, v25, v29, *(a1 + 64), v32);
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }
}

void sub_2211A67DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose(&a14, 8);
  sub_2210BC9F8(v21 + 48, a21);
  _Unwind_Resume(a1);
}

void *sub_2211A6800(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

uint64_t sub_2211A6848(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2211A68C4;
  v6[3] = &unk_278460880;
  v4 = *(a1 + 32);
  v7 = a3;
  v6[4] = v4;
  v6[5] = a3 >> 8;
  return objc_msgSend_enumerateRowsAndIndexesWithBlock_(a2, a2, v6, a4);
}

uint64_t sub_2211A68C4(uint64_t a1, void *a2, int a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2211A6948;
  v5[3] = &unk_278460858;
  v6 = *(a1 + 48);
  v7 = a3;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = v3;
  return objc_msgSend_enumerateStoragesInColumnRange_withBlock_(a2, a2, 0, 1000, v5);
}

void sub_2211A6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(a1 + 48);
  v6 = (*(a1 + 52) + v5) | (a3 << 32);
  v7 = v5;
  v8 = v3;
  v9 = a2;
  sub_2211A8A00((v4 + 48), &v6);
}

id sub_2211A6A08(uint64_t a1, const char *a2)
{
  v2 = a2;
  v5 = objc_msgSend__tileForID_createIfMissing_(*(a1 + 32), a2, a2 >> 8, 1);
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableTileStorage prepareToApplyConcurrentCellMap:]_block_invoke", v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 1745, 0, "invalid nil value for '%{public}s'", "tile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v18 = objc_msgSend_findOrAddRowInfoAtTileRowIndex_(v5, v3, v2, v4);
  if (!v18)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableTileStorage prepareToApplyConcurrentCellMap:]_block_invoke", v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 1748, 0, "invalid nil value for '%{public}s'", "rowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  objc_msgSend_willModify(v5, v15, v16, v17);
  v29 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v28, v5, v18);

  return v29;
}

void sub_2211A6C88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_2211A6CD0(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2211A6F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2211A6F2C(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 1);
  v96 = a2 - 1;
  v97 = a2 - 3;
  v98 = a2 - 2;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = (*(*a3 + 16))();
        if (result)
        {
          v89 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v89;
          v90 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v78 = (*(*a3 + 16))();
      result = (*(*a3 + 16))();
      if (v78)
      {
        v80 = (v10 + 8);
        v79 = *v10;
        if (result)
        {
          *v10 = *(a2 - 4);
        }

        else
        {
          *v10 = *(v10 + 16);
          *(v10 + 16) = v79;
          v80 = (v10 + 24);
          v94 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 24);
          *(v10 + 24) = v94;
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          v79 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v79;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v91 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 4);
        *(a2 - 4) = v91;
        v92 = *(v10 + 24);
        v96 = (v10 + 24);
        *(v10 + 24) = *(a2 - 1);
        *(a2 - 1) = v92;
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        v93 = *v10;
        *v10 = *(v10 + 16);
        *(v10 + 16) = v93;
        v80 = (v10 + 8);
      }

      v95 = *v80;
      *v80 = *v96;
      *v96 = v95;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      sub_2211A79A8(v10, (v10 + 16), (v10 + 32), (v10 + 48), a3);
      result = (*(*a3 + 16))();
      if (result)
      {
        v81 = *(v10 + 48);
        *(v10 + 48) = *(a2 - 4);
        *(a2 - 4) = v81;
        v82 = *(v10 + 56);
        *(v10 + 56) = *(a2 - 1);
        *(a2 - 1) = v82;
        result = (*(*a3 + 16))();
        if (result)
        {
          v83 = *(v10 + 32);
          *(v10 + 32) = *(v10 + 48);
          *(v10 + 48) = v83;
          v84 = *(v10 + 40);
          *(v10 + 40) = *(v10 + 56);
          *(v10 + 56) = v84;
          result = (*(*a3 + 16))();
          if (result)
          {
            v85 = *(v10 + 16);
            *(v10 + 16) = *(v10 + 32);
            *(v10 + 32) = v85;
            v86 = *(v10 + 24);
            *(v10 + 24) = *(v10 + 40);
            *(v10 + 40) = v86;
            result = (*(*a3 + 16))();
            if (result)
            {
              v87 = *v10;
              *v10 = *(v10 + 16);
              *(v10 + 16) = v87;
              v88 = *(v10 + 8);
              *(v10 + 8) = *(v10 + 24);
              *(v10 + 24) = v88;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_2211A7BAC(v10, a2, a3);
      }

      else
      {

        return sub_2211A7CA0(v10, a2, a3);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return sub_2211A853C(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v10 + 16 * (v13 >> 1);
    v15 = *(*a3 + 16);
    if (v13 >= 0x81)
    {
      v16 = v15();
      v17 = (*(*a3 + 16))();
      if (v16)
      {
        v19 = (v8 + 8);
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_28;
        }

        *v8 = *v14;
        *v14 = v18;
        v19 = (v14 + 8);
        v32 = *(v8 + 8);
        *(v8 + 8) = *(v14 + 8);
        *(v14 + 8) = v32;
        if ((*(*a3 + 16))())
        {
          v18 = *v14;
          *v14 = *v9;
LABEL_28:
          *v9 = v18;
          v26 = a2 - 1;
LABEL_29:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 4);
        *(a2 - 4) = v24;
        v26 = (v14 + 8);
        v25 = *(v14 + 8);
        *(v14 + 8) = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*(*a3 + 16))())
        {
          v27 = *v8;
          *v8 = *v14;
          v19 = (v8 + 8);
          *v14 = v27;
          goto LABEL_29;
        }
      }

      v34 = (v14 - 16);
      v35 = (*(*a3 + 16))();
      v36 = (*(*a3 + 16))();
      if (v35)
      {
        v37 = *(v8 + 16);
        v38 = (v8 + 24);
        if (v36)
        {
          *(v8 + 16) = *v98;
          *v98 = v37;
          goto LABEL_41;
        }

        *(v8 + 16) = *v34;
        *v34 = v37;
        v44 = *v38;
        *v38 = *(v14 - 8);
        *(v14 - 8) = v44;
        if ((*(*a3 + 16))())
        {
          v45 = *v34;
          *v34 = *v98;
          *v98 = v45;
          v38 = (v14 - 8);
LABEL_41:
          v41 = a2 - 3;
LABEL_42:
          v46 = *v38;
          *v38 = *v41;
          *v41 = v46;
        }
      }

      else if (v36)
      {
        v39 = *v34;
        *v34 = *(a2 - 8);
        *(a2 - 8) = v39;
        v41 = (v14 - 8);
        v40 = *(v14 - 8);
        *(v14 - 8) = *(a2 - 3);
        *(a2 - 3) = v40;
        if ((*(*a3 + 16))())
        {
          v42 = *(v8 + 16);
          *(v8 + 16) = *v34;
          *v34 = v42;
          v38 = (v8 + 24);
          goto LABEL_42;
        }
      }

      v47 = (v14 + 16);
      v48 = (*(*a3 + 16))();
      v49 = (*(*a3 + 16))();
      if (v48)
      {
        v50 = *(v8 + 32);
        v51 = (v8 + 40);
        if (v49)
        {
          *(v8 + 32) = *v97;
          *v97 = v50;
          goto LABEL_51;
        }

        *(v8 + 32) = *v47;
        *v47 = v50;
        v56 = *v51;
        *v51 = *(v14 + 24);
        *(v14 + 24) = v56;
        if ((*(*a3 + 16))())
        {
          v57 = *v47;
          *v47 = *v97;
          *v97 = v57;
          v51 = (v14 + 24);
LABEL_51:
          v54 = a2 - 5;
LABEL_52:
          v58 = *v51;
          *v51 = *v54;
          *v54 = v58;
        }
      }

      else if (v49)
      {
        v52 = *v47;
        *v47 = *(a2 - 12);
        *(a2 - 12) = v52;
        v54 = (v14 + 24);
        v53 = *(v14 + 24);
        *(v14 + 24) = *(a2 - 5);
        *(a2 - 5) = v53;
        if ((*(*a3 + 16))())
        {
          v55 = *(v8 + 32);
          *(v8 + 32) = *v47;
          *v47 = v55;
          v51 = (v8 + 40);
          goto LABEL_52;
        }
      }

      v59 = (*(*a3 + 16))();
      v60 = (*(*a3 + 16))();
      if (v59)
      {
        v61 = *v34;
        if (v60)
        {
          *v34 = *v47;
          *v47 = v61;
          v62 = (v14 + 24);
          v63 = *v14;
          v64 = (v14 - 8);
          goto LABEL_61;
        }

        *v34 = *v14;
        *v14 = v61;
        v69 = *(v14 - 8);
        *(v14 - 8) = *(v14 + 8);
        *(v14 + 8) = v69;
        v70 = (*(*a3 + 16))();
        v63 = *v14;
        if (v70)
        {
          v71 = *v47;
          *v14 = *v47;
          *v47 = v63;
          v62 = (v14 + 24);
          v63 = v71;
          v64 = (v14 + 8);
LABEL_61:
          v66 = v62;
LABEL_62:
          v72 = *v64;
          *v64 = *v66;
          *v66 = v72;
        }
      }

      else
      {
        v63 = *v14;
        if (v60)
        {
          *v14 = *v47;
          *v47 = v63;
          v66 = (v14 + 8);
          v65 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 24);
          *(v14 + 24) = v65;
          v67 = (*(*a3 + 16))();
          v63 = *v14;
          if (v67)
          {
            v68 = *v34;
            *v34 = v63;
            v64 = (v14 - 8);
            *v14 = v68;
            v63 = v68;
            goto LABEL_62;
          }
        }
      }

      v73 = *v8;
      *v8 = v63;
      v23 = (v8 + 8);
      *v14 = v73;
      v31 = (v14 + 8);
LABEL_64:
      v74 = *v23;
      *v23 = *v31;
      *v31 = v74;
      goto LABEL_65;
    }

    v20 = v15();
    v21 = (*(*a3 + 16))();
    if (v20)
    {
      v23 = (v14 + 8);
      v22 = *v14;
      if (v21)
      {
        *v14 = *v9;
LABEL_38:
        *v9 = v22;
        v31 = a2 - 1;
        goto LABEL_64;
      }

      *v14 = *v10;
      *v10 = v22;
      v23 = (v10 + 8);
      v43 = *(v14 + 8);
      *(v14 + 8) = *(v10 + 8);
      *(v10 + 8) = v43;
      if ((*(*a3 + 16))())
      {
        v22 = *v10;
        *v10 = *v9;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v28 = *v10;
      *v10 = *(a2 - 4);
      *(a2 - 4) = v28;
      v29 = *(v10 + 8);
      *(v10 + 8) = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*(*a3 + 16))())
      {
        v30 = *v14;
        *v14 = *v10;
        *v10 = v30;
        v23 = (v14 + 8);
        v31 = (v10 + 8);
        goto LABEL_64;
      }
    }

LABEL_65:
    if ((a5 & 1) == 0 && ((*(*a3 + 16))() & 1) == 0)
    {
      result = sub_2211A7D78(v8, a2, a3);
      v10 = result;
      goto LABEL_72;
    }

    v75 = sub_2211A7EF0(v8, a2, a3);
    if ((v76 & 1) == 0)
    {
      goto LABEL_70;
    }

    v77 = sub_2211A8060(v8, v75, a3);
    v10 = (v75 + 1);
    result = sub_2211A8060((v75 + 1), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v77)
    {
LABEL_70:
      result = sub_2211A6F2C(v8, v75, a3, -v12, a5 & 1);
      v10 = (v75 + 1);
LABEL_72:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return sub_2211A79A8(v10, (v10 + 16), (v10 + 32), a2 - 4, a3);
}

uint64_t sub_2211A79A8(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    v13 = a1 + 2;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = a3 + 2;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 2;
    v18 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v18;
    if ((*(*a5 + 16))())
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 2;
    v15 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v15;
    if ((*(*a5 + 16))())
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 2;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*(*a5 + 16))();
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v22;
    result = (*(*a5 + 16))();
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      result = (*(*a5 + 16))();
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = v26;
      }
    }
  }

  return result;
}

uint64_t sub_2211A7BAC(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      do
      {
        v8 = v5;
        result = (*(*a3 + 16))();
        if (result)
        {
          v12 = *v8;
          v9 = v7;
          while (1)
          {
            v10 = v4 + v9;
            *(v10 + 16) = *(v4 + v9);
            *(v10 + 24) = *(v4 + v9 + 8);
            if (!v9)
            {
              break;
            }

            v9 -= 16;
            result = (*(*a3 + 16))();
            if ((result & 1) == 0)
            {
              v11 = v4 + v9 + 16;
              goto LABEL_10;
            }
          }

          v11 = v4;
LABEL_10:
          *v11 = v12;
          *(v11 + 8) = *(&v12 + 1);
        }

        v5 = v8 + 1;
        v7 += 16;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_2211A7CA0(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (result + 16);
    if ((result + 16) != a2)
    {
      v6 = result - 16;
      do
      {
        v7 = v4;
        result = (*(*a3 + 16))();
        if (result)
        {
          v9 = *v7;
          v8 = v6;
          do
          {
            *(v8 + 32) = *(v8 + 16);
            *(v8 + 40) = *(v8 + 24);
            result = (*(*a3 + 16))();
            v8 -= 16;
          }

          while ((result & 1) != 0);
          *(v8 + 32) = v9;
          *(v8 + 40) = *(&v9 + 1);
        }

        v4 = v7 + 1;
        v6 += 16;
      }

      while (v7 + 1 != a2);
    }
  }

  return result;
}

int *sub_2211A7D78(int *a1, unint64_t a2, uint64_t a3)
{
  v12 = *a1;
  if ((*(*a3 + 16))())
  {
    v6 = a1;
    do
    {
      v6 += 4;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    v7 = a1 + 4;
    do
    {
      v6 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = (*(*a3 + 16))();
      v7 = v6 + 4;
    }

    while (!v8);
  }

  if (v6 < a2)
  {
    do
    {
      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  while (v6 < a2)
  {
    v9 = *v6;
    *v6 = *a2;
    *a2 = v9;
    v10 = *(v6 + 1);
    *(v6 + 1) = *(a2 + 8);
    *(a2 + 8) = v10;
    do
    {
      v6 += 4;
    }

    while (!(*(*a3 + 16))());
    do
    {
      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  if (v6 - 4 != a1)
  {
    *a1 = *(v6 - 4);
    *(a1 + 1) = *(v6 - 1);
  }

  *(v6 - 4) = v12;
  *(v6 - 1) = *(&v12 + 1);
  return v6;
}

int *sub_2211A7EF0(int *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v13 = *a1;
  do
  {
    v6 += 4;
  }

  while (((*(*a3 + 16))() & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 4)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 16;
    }

    while (!(*(*a3 + 16))());
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      v11 = *(v8 + 1);
      *(v8 + 1) = *(v9 + 8);
      *(v9 + 8) = v11;
      do
      {
        v8 += 4;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      do
      {
        v9 -= 16;
      }

      while (!(*(*a3 + 16))());
    }

    while (v8 < v9);
  }

  result = v8 - 4;
  if (v8 - 4 != a1)
  {
    *a1 = *(v8 - 4);
    *(a1 + 1) = *(v8 - 1);
  }

  *(v8 - 4) = v13;
  *(v8 - 1) = *(&v13 + 1);
  return result;
}

BOOL sub_2211A8060(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v17 = (*(*a3 + 16))();
      v18 = (*(*a3 + 16))();
      if (v17)
      {
        v20 = (a1 + 8);
        v19 = *a1;
        if (v18)
        {
          *a1 = *(a2 - 4);
        }

        else
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v19;
          v20 = (a1 + 24);
          v33 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v33;
          if (!(*(*a3 + 16))())
          {
            return 1;
          }

          v19 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v19;
        v27 = a2 - 1;
      }

      else
      {
        if (!v18)
        {
          return 1;
        }

        v25 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v25;
        v27 = (a1 + 24);
        v26 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v26;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v28 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v28;
        v20 = (a1 + 8);
      }

      v34 = *v20;
      *v20 = *v27;
      *v27 = v34;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        sub_2211A79A8(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if ((*(*a3 + 16))())
        {
          v9 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 4);
          *(a2 - 4) = v9;
          v10 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*(*a3 + 16))())
          {
            v11 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v11;
            v12 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 56) = v12;
            if ((*(*a3 + 16))())
            {
              v13 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v13;
              v14 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 40) = v14;
              if ((*(*a3 + 16))())
              {
                v15 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v15;
                v16 = *(a1 + 8);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 24) = v16;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_2211A79A8(a1, (a1 + 16), (a1 + 32), a2 - 4, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*(*a3 + 16))())
    {
      v7 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v21 = (*(*a3 + 16))();
  v22 = (*(*a3 + 16))();
  if (v21)
  {
    v24 = (a1 + 8);
    v23 = *a1;
    if (v22)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v23;
      v24 = (a1 + 24);
      v35 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v35;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_35;
      }

      v23 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v23;
    v31 = (a1 + 40);
    goto LABEL_34;
  }

  if (v22)
  {
    v29 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v29;
    v31 = (a1 + 24);
    v30 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 40) = v30;
    if ((*(*a3 + 16))())
    {
      v32 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v32;
      v24 = (a1 + 8);
LABEL_34:
      v36 = *v24;
      *v24 = *v31;
      *v31 = v36;
    }
  }

LABEL_35:
  v37 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v38 = 0;
  v39 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v44 = *v37;
      v40 = v38;
      while (1)
      {
        v41 = a1 + v40;
        *(v41 + 48) = *(a1 + v40 + 32);
        *(v41 + 56) = *(a1 + v40 + 40);
        if (v40 == -32)
        {
          break;
        }

        v40 -= 16;
        if (((*(*a3 + 16))() & 1) == 0)
        {
          v42 = a1 + v40 + 48;
          goto LABEL_43;
        }
      }

      v42 = a1;
LABEL_43:
      *v42 = v44;
      *(v42 + 8) = *(&v44 + 1);
      if (++v39 == 8)
      {
        return v37 + 1 == a2;
      }
    }

    v38 += 16;
    if (++v37 == a2)
    {
      return 1;
    }
  }
}

char *sub_2211A853C(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        sub_2211A86B4(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*(*a4 + 16))())
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 1);
          *(a1 + 1) = v14;
          sub_2211A86B4(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 16;
      do
      {
        v16 = *a1;
        v17 = *(a1 + 1);
        v18 = sub_2211A881C(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v16;
          *(v18 + 8) = v17;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 8) = *(v15 + 1);
          *v15 = v16;
          *(v15 + 1) = v17;
          sub_2211A88D8(a1, v18 + 16, a4, (v18 + 16 - a1) >> 4);
        }

        v15 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_2211A86B4(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v10 = (a4 - result) >> 3;
      v11 = v10 + 1;
      v12 = result + 16 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*(*a2 + 16))())
      {
        v12 += 16;
        v11 = v13;
      }

      result = (*(*a2 + 16))();
      if ((result & 1) == 0)
      {
        v17 = *v5;
        do
        {
          v14 = v12;
          *v5 = *v12;
          *(v5 + 1) = *(v12 + 8);
          if (v7 < v11)
          {
            break;
          }

          v15 = (2 * v11) | 1;
          v12 = v6 + 16 * v15;
          v16 = 2 * v11 + 2;
          if (v16 < a3)
          {
            if ((*(*a2 + 16))())
            {
              v12 += 16;
              v15 = v16;
            }
          }

          result = (*(*a2 + 16))();
          v5 = v14;
          v11 = v15;
        }

        while (!result);
        *v14 = v17;
        *(v14 + 8) = *(&v17 + 1);
      }
    }
  }

  return result;
}

uint64_t sub_2211A881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 16 * v6;
    v9 = v8 + 16;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 32;
      if ((*(*a2 + 16))())
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    *(a1 + 8) = *(v9 + 8);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t sub_2211A88D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = result + 16 * (v4 >> 1);
    v9 = (a2 - 16);
    result = (*(*a3 + 16))();
    if (result)
    {
      v11 = *v9;
      do
      {
        v10 = v8;
        *v9 = *v8;
        *(v9 + 1) = *(v8 + 8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + 16 * v7;
        result = (*(*a3 + 16))();
        v9 = v10;
      }

      while ((result & 1) != 0);
      *v10 = v11;
      *(v10 + 8) = *(&v11 + 1);
    }
  }

  return result;
}

void sub_2211A89A4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221087BBC(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_2211A8AA4(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v3 = v4;
        v7 = *(v4 + 8);
        if (v6 >= v7 && (v6 != v7 || *(a3 + 2) >= *(v4 + 18)))
        {
          break;
        }

        v4 = *v4;
        v8 = v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v8 = v3 + 1;
  }

  else
  {
    v8 = v3;
  }

LABEL_11:
  *a2 = v3;
  return v8;
}

uint64_t **sub_2211A8B04(uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_2211A8B5C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **sub_2211A8B5C(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    sub_2211A8BE0(result, (result + 1), a2 + 2);
  }

  return result;
}

uint64_t **sub_2211A8C7C(uint64_t ***a1, uint64_t **a2, uint64_t ***a3, uint64_t a4)
{
  if (a1 + 1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4 < *a4 || v4 == *a4 && *(a2 + 18) < *(a4 + 4))
    {
      return sub_2211A8D4C(a1, a3, a4);
    }
  }

  v6 = *a2;
  if (*a1 == a2)
  {
    v8 = a2;
  }

  else
  {
    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v9 = a2;
      do
      {
        v8 = v9[2];
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (v10);
    }

    v11 = *(v8 + 8);
    if (*a4 < v11 || *a4 == v11 && *(a4 + 4) < *(v8 + 18))
    {
      return sub_2211A8AA4(a1, a3, a4);
    }
  }

  if (v6)
  {
    *a3 = v8;
    return v8 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

void *sub_2211A8D4C(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v3 = v4;
        v7 = *(v4 + 8);
        if (v7 < v6 || v7 == v6 && *(v4 + 18) < *(a3 + 2))
        {
          break;
        }

        v4 = *v4;
        v8 = v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v8 = v3 + 1;
  }

  else
  {
    v8 = v3;
  }

LABEL_11:
  *a2 = v3;
  return v8;
}

uint64_t sub_2211A8DB0(int a1)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return 254;
  }
}

uint64_t sub_2211A8DC8(unint64_t a1, unint64_t a2)
{
  v3._lower = a1;
  v3._upper = a2;
  return TSKUIDStruct::CFUUIDBytes(&v3);
}

uint64_t sub_2211A8DF4(unint64_t a1, unint64_t a2)
{
  v3._lower = a1;
  v3._upper = a2;
  return TSKUIDStruct::CFUUIDBytes(&v3);
}

unint64_t sub_2211A8E20(unint64_t a1, unint64_t a2)
{
  v4._lower = a1;
  v4._upper = a2;
  TSKUIDStruct::CFUUIDBytes(&v4);
  return HIBYTE(v2) & 1;
}

BOOL sub_2211A8E4C(unint64_t a1, unint64_t a2)
{
  v4._lower = a1;
  v4._upper = a2;
  TSKUIDStruct::CFUUIDBytes(&v4);
  return (v2 & 0x100000000000000) == 0;
}

uint64_t sub_2211A8E7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = 2 * a2;
  if ((2 * a2) >= 0x100)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSKUIDStruct TSTUidApplyingAggregateIndex(const TSKUIDStruct &, NSUInteger)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDTypes.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 97, 0, "aggregateIndex * 2 had better fit in a UInt8");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  return MEMORY[0x2821EA4F0](a1, v5);
}

void *TSTMakeCellUID@<X0>(_OWORD *a5@<X8>)
{
  *a5 = 0u;
  a5[1] = 0u;
  return TSKMakeUIDStructCoord();
}

void *sub_2211A8F64@<X0>(int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = -2;
  }

  if (a4)
  {
    v8._lower = v6;
    v8._upper = v6;
    TSKUIDStruct::CFUUIDBytes(&v8);
  }

  *a5 = 0u;
  a5[1] = 0u;
  return TSKMakeUIDStructCoord();
}

void *sub_2211A8FE8@<X0>(_OWORD *a1@<X8>, uint64_t x0_0@<X0>, const UUID *a2@<X1>)
{
  *a1 = 0u;
  a1[1] = 0u;
  return sub_221269658(x0_0, a2);
}

uint64_t sub_2211A8FF4(uint64_t a1)
{
  v6 = *(a1 + 16);
  v1 = TSKUIDStruct::CFUUIDBytes(&v6);
  if (v1 == 254)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  if ((v2 & 0xFEFFFFFFFFFFFFFFLL) == v1)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

BOOL sub_2211A9038(uint64_t a1)
{
  if (!*a1 && !*(a1 + 8))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  TSKUIDStruct::CFUUIDBytes(&v7);
  if ((v2 & 0x100000000000000) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v3 = TSKUIDStruct::CFUUIDBytes(&v7);
  return v3 != 0xFF && (v4 & 0xFEFFFFFFFFFFFFFFLL) == v3;
}

BOOL sub_2211A90B0(uint64_t a1)
{
  if (!*a1 && !*(a1 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v1 = TSKUIDStruct::CFUUIDBytes(&v5);
  return v1 != 0xFF && (v2 & 0xFEFFFFFFFFFFFFFFLL) == v1;
}

BOOL sub_2211A910C(uint64_t a1)
{
  if (!*a1 && !*(a1 + 8))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  TSKUIDStruct::CFUUIDBytes(&v7);
  if ((v2 & 0x100000000000000) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v4 = TSKUIDStruct::CFUUIDBytes(&v7);
  return v4 != 0xFF && (v5 & 0xFEFFFFFFFFFFFFFFLL) == v4;
}

uint64_t sub_2211A9184@<X0>(unint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v2 = a1;
  result = sub_2211A9718(a2, a1);
  if (v2)
  {
    v5 = *a2;
    do
    {
      result = TSKMakeUIDStructRandom();
      *v5 = result;
      v5[1] = v6;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_2211A91D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211A91F0(uint64_t **a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v4 = a1[3];
  v5 = a1[4];
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *a1;
      v7 = a1[1];
      if (*a1 != v7)
      {
        break;
      }

LABEL_5:
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      memset(v8, 0, sizeof(v8));
      TSKMakeUIDStructCoord();
      v3[2](v3, v8, &v9);
      if (v9)
      {
        break;
      }

      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_6:
}

double sub_2211A92C8(uint64_t a1, _DWORD *a2)
{
  result = 1.31245661e-204;
  *a1 = 0x159A55E5075BCD15;
  *(a1 + 8) = 521288629;
  *(a1 + 12) = a2[1] ^ *a2 ^ a2[2] ^ a2[3];
  return result;
}

uint64_t sub_2211A92FC(_DWORD *a1)
{
  v1 = a1[3];
  v2 = ((*a1 ^ (32 * *a1)) >> 12) ^ (v1 >> 29) ^ *a1 ^ (32 * *a1) ^ v1;
  v3 = a1[1] ^ (32 * a1[1]);
  v4 = (v3 >> 12) ^ (v2 >> 29) ^ v3 ^ v2;
  v5 = a1[2] ^ (32 * a1[2]);
  v6 = (v5 >> 12) ^ (v4 >> 29) ^ v5 ^ v4;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = ((v1 ^ (32 * v1)) >> 12) ^ (v6 >> 29) ^ v1 ^ (32 * v1) ^ v6;
  return v2 | (v4 << 32);
}

uint64_t sub_2211A9368(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = strlen(a1);
  sub_2212CBD1C(&c, a1, v2);
  sub_2212CBDCC(&c, &__dst, 0x10u);
  v5 = __dst;
  return TSKUIDStruct::CFUUIDBytes(&v5);
}

unint64_t sub_2211A9410(const char *a1, const char *a2, int a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static TSKUIDStruct TSTUidGenerator::newUID(const char *, const char *, BOOL)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDTypes.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 293, 0, "Not expecting null pointers here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static TSKUIDStruct TSTUidGenerator::newUID(const char *, const char *, BOOL)", a4);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDTypes.mm", v19);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 294, 0, "Not expecting null pointers here");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
LABEL_6:
  v25 = objc_autoreleasePoolPush();
  v26 = strlen(a1);
  v27 = strlen(a2);
  v28 = v27 + v26;
  if (v27 + v26 < 0x400)
  {
    v29 = v27;
    memcpy(__dst, a1, v26);
    memcpy(&__dst[v26], a2, v29 + 1);
    sub_2212CBD1C(&v38, __dst, v28);
    sub_2212CBDCC(&v38, &v36, 0x10u);
    v37 = v36;
    v30 = TSKUIDStruct::CFUUIDBytes(&v37);
    if (a3)
    {
      v32 = v31 | 0x100000000000000;
    }

    else
    {
      v32 = v31 & 0xFEFFFFFFFFFFFFFFLL;
    }

    v36._lower = v30;
    v36._upper = v32;
  }

  else
  {
    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_22108CD88();
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v38.Nl) = v26;
    if (v26)
    {
      memcpy(&v38, a1, v26);
    }

    *(&v38.h0 + v26) = 0;
    std::string::append(&v38, a2);
    if ((v38.Nl & 0x80000000) == 0)
    {
      v33 = &v38;
    }

    else
    {
      v33 = *&v38.h0;
    }

    v36._lower = sub_2211A9368(v33);
    v36._upper = v34;
    if (SHIBYTE(v38.Nl) < 0)
    {
      operator delete(*&v38.h0);
    }
  }

  objc_autoreleasePoolPop(v25);
  return v36._lower;
}

uint64_t *sub_2211A9718(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_221086F38(a1, a2);
  }

  return a1;
}

void sub_2211A9774(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211A9790(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    return;
  }

  if (a2 >= 0x100000)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Bad header bucket index for creation: %u", "[TSTTableHeaderStorage _allocateBucketsForIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 74, a2);
    v4 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableHeaderStorage _allocateBucketsForIndex:]", v6);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 74, 1, "Bad header bucket index for creation: %u", a2);
    goto LABEL_11;
  }

  if (result[(a2 >> 16) + 2])
  {
    return;
  }

  if (!(a2 >> 16))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Can't be missing the first bucket!", "[TSTTableHeaderStorage _allocateBucketsForIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 76);
    v12 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableHeaderStorage _allocateBucketsForIndex:]", v14);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v7, v10, 76, 1, "Can't be missing the first bucket!");
LABEL_11:

    TSUCrashBreakpoint();
    abort();
  }

  sub_2211A9944(result, a2, a3, a4);
}

void sub_2211A9944(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a1[18] != 1)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Asked to create buckets when we've already done so!", "[TSTTableHeaderStorage _allocateBuckets]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 82);
      v18 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTTableHeaderStorage _allocateBuckets]", v20);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v21, v24, 82, 1, "Asked to create buckets when we've already done so!");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_willModify(a1, a2, a3, a4);
    v5 = a1 + 1;
    for (i = 0x10000; i != 0x100000; i += 0x10000)
    {
      v7 = [TSTTableHeaderStorageBucket alloc];
      v11 = objc_msgSend_owner(a1, v8, v9, v10);
      v15 = objc_msgSend_context(v11, v12, v13, v14);
      v16 = sub_2211AC86C(v7, v15, i, 0x10000);
      v17 = v5[2];
      v5[2] = v16;

      ++v5;
    }

    a1[18] = 16;
  }
}

id *sub_2211A9AE4(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2 < 0x100000)
    {
      a1 = a1[(a2 >> 16) + 2];
    }

    else
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage _bucketForIndex:]", a4);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v8);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 103, 0, "Unexpected header bucket index: %u!", a2);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
      a1 = 0;
    }
  }

  return a1;
}

void sub_2211A9F98(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1 + 32) + 144) = objc_msgSend_count(v3, v4, v5, v6);
  v9 = *(*(a1 + 32) + 144);
  if (v9 != 1 && v9 != 16)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableHeaderStorage initFromArchive:unarchiver:owner:]_block_invoke", v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 154, 0, "Bad header bucket count!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v3;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v34, 16);
  if (v22)
  {
    v23 = 0;
    v24 = *v31;
    do
    {
      v25 = 0;
      v26 = 8 * v23;
      v27 = v23 << 16;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v28 = *(*(&v30 + 1) + 8 * v25);
        sub_2216F746C(v28, v27, 0x10000);
        objc_storeStrong((*(a1 + 32) + v26 + 16), v28);
        ++v23;
        ++v25;
        v26 += 8;
        v27 += 0x10000;
      }

      while (v22 != v25);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v29, &v30, v34, 16);
    }

    while (v22);
  }
}

uint64_t *sub_2211AC240(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_2211AC334(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2211AC334(a1, *a2);
    sub_2211AC334(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_2211AC86C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a1)
  {
    if (a3 == *MEMORY[0x277D81490] && a4 == *(MEMORY[0x277D81490] + 8))
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableHeaderStorageBucket initWithContext:bounds:]", v8);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 58, 0, "Can't initialize a bucket with a bad range!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    v20 = objc_msgSend_initWithContext_(a1, v7, v9, v8);
    v21 = v20;
    if (v20)
    {
      v20[10] = a3;
      v20[11] = a4;
      v20[9] = 0;
      v22 = objc_alloc_init(MEMORY[0x277D81330]);
      v23 = v21[8];
      v21[8] = v22;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id sub_2211AC9D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4);
    v6 = *(a1 + 64);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2211ACAD0;
    v15[3] = &unk_2784608D0;
    v7 = v5;
    v16 = v7;
    objc_msgSend_foreach_(v6, v8, v15, v9);
    v10 = objc_alloc(MEMORY[0x277CCAA78]);
    v13 = objc_msgSend_initWithIndexSet_(v10, v11, v7, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

TSTTableHeaderInfo *sub_2211ACAD8(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = *(a1 + 80);
    v6 = a2 >= v4;
    v5 = a2 - v4;
    v6 = !v6 || v5 >= *(a1 + 88);
    if (v6)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Index out of range for bucket!", "[TSTTableHeaderStorageBucket _makeHeaderAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", 102);
      v10 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableHeaderStorageBucket _makeHeaderAtIndex:]", v12);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v13, v16, 102, 1, "Index out of range for bucket!");

      TSUCrashBreakpoint();
      abort();
    }

    v7 = objc_opt_new();
    objc_msgSend_setObject_forKey_(*(a1 + 64), v8, v7, v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_2211ACC1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v5 = *(a1 + 64);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2211ACCF4;
    v6[3] = &unk_2784608F8;
    v6[4] = &v7;
    objc_msgSend_foreach_(v5, a2, v6, a4);
    *(a1 + 72) = v8[3];
    _Block_object_dispose(&v7, 8);
  }
}

void sub_2211ACCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_2211ACCF4(uint64_t a1, _BOOL8 a2)
{
  result = sub_2216F7CC4(a2);
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void sub_2211ACD34(uint64_t a1, void *a2, unsigned int a3)
{
  v17 = a2;
  if (a1)
  {
    v7 = a3;
    v11 = objc_msgSend_objectForKey_(*(a1 + 64), v5, a3, v6);
    if (!v11)
    {
      if (!v17)
      {
        goto LABEL_12;
      }

      v11 = sub_2211ACAD8(a1, a3);
    }

    objc_msgSend_willModify(a1, v8, v9, v10);
    v12 = sub_2216F7CC4(v11);
    sub_2216F7E50(v11, v17);
    v13 = sub_2216F7CC4(v11);
    if (!sub_2216F7C84(v11))
    {
      objc_msgSend_removeObjectForKey_(*(a1 + 64), v14, v7, v15);
    }

    if (v13 || !v12)
    {
      if (v12 || !v13)
      {
        goto LABEL_12;
      }

      v16 = 1;
    }

    else
    {
      v16 = -1;
    }

    *(a1 + 72) += v16;
  }

LABEL_12:
}

id sub_2211ACE6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && *(a1 + 72))
  {
    v4 = objc_msgSend_objectForKey_(*(a1 + 64), a2, a2, a4);
    v5 = v4;
    if (v4)
    {
      v6 = sub_2216F7E60(v4);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_2211ACF04(uint64_t a1, void *a2, unsigned int a3)
{
  v17 = a2;
  if (a1)
  {
    v7 = a3;
    v11 = objc_msgSend_objectForKey_(*(a1 + 64), v5, a3, v6);
    if (!v11)
    {
      if (!v17)
      {
        goto LABEL_12;
      }

      v11 = sub_2211ACAD8(a1, a3);
    }

    objc_msgSend_willModify(a1, v8, v9, v10);
    v12 = sub_2216F7CC4(v11);
    sub_2216F7E6C(v11, v17);
    v13 = sub_2216F7CC4(v11);
    if (!sub_2216F7C84(v11))
    {
      objc_msgSend_removeObjectForKey_(*(a1 + 64), v14, v7, v15);
    }

    if (v13 || !v12)
    {
      if (v12 || !v13)
      {
        goto LABEL_12;
      }

      v16 = 1;
    }

    else
    {
      v16 = -1;
    }

    *(a1 + 72) += v16;
  }

LABEL_12:
}

void sub_2211AD03C(uint64_t a1, unsigned int a2, void *a3)
{
  v17 = a3;
  if (a1)
  {
    v7 = a2;
    v11 = objc_msgSend_objectForKey_(*(a1 + 64), v5, a2, v6);
    if (!v11)
    {
      if ((objc_msgSend_hasHeaderContent(v17, v8, v9, v10) & 1) == 0)
      {
        goto LABEL_12;
      }

      v11 = sub_2211ACAD8(a1, a2);
    }

    objc_msgSend_willModify(a1, v8, v9, v10);
    v12 = sub_2216F7CC4(v11);
    sub_221480590(v11, v17);
    v13 = sub_2216F7CC4(v11);
    if (!sub_2216F7C84(v11))
    {
      objc_msgSend_removeObjectForKey_(*(a1 + 64), v14, v7, v15);
    }

    if (v13 || !v12)
    {
      if (v12 || !v13)
      {
        goto LABEL_12;
      }

      v16 = 1;
    }

    else
    {
      v16 = -1;
    }

    *(a1 + 72) += v16;
  }

LABEL_12:
}

void sub_2211AD178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2211AD240;
    v8[3] = &unk_278460920;
    v8[4] = a1;
    v9 = v3;
    objc_msgSend_foreach_(v5, v6, v8, v7);
  }
}

void sub_2211AD240(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = sub_2216F7CC4(v16);
  v4 = sub_2216F7E44(v16);
  if (v4)
  {
    v8 = (*(*(a1 + 40) + 16))();
    if (v8 != v4)
    {
      objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
      sub_2216F7E50(v16, v8);
    }
  }

  v9 = sub_2216F7E60(v16);
  if (v9)
  {
    v13 = (*(*(a1 + 40) + 16))();
    if (v13 != v9)
    {
      objc_msgSend_willModify(*(a1 + 32), v10, v11, v12);
      sub_2216F7E6C(v16, v13);
    }
  }

  v14 = sub_2216F7CC4(v16);
  if (v14 || !v3)
  {
    if (v3 || !v14)
    {
      goto LABEL_14;
    }

    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  *(*(a1 + 32) + 72) += v15;
LABEL_14:
}

void sub_2211AD3C8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_2211AD548;
    v23 = sub_2211AD558;
    v24 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4);
    v5 = a1[8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2211AD560;
    v18[3] = &unk_2784608F8;
    v18[4] = &v19;
    objc_msgSend_foreach_(v5, v6, v18, v7);
    if (objc_msgSend_count(v20[5], v8, v9, v10))
    {
      objc_msgSend_willModify(a1, v11, v12, v13);
      v14 = v20[5];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2211AD5E4;
      v17[3] = &unk_27845E958;
      v17[4] = a1;
      objc_msgSend_enumerateIndexesUsingBlock_(v14, v15, v17, v16);
    }

    _Block_object_dispose(&v19, 8);
  }
}

void sub_2211AD524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211AD548(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211AD560(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  sub_2216F7EC0(v7, 0);
  if (!sub_2216F7C84(v7))
  {
    objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v5, a3, v6);
  }
}

uint64_t sub_2211AD5FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211AD6D0;
  v7[3] = &unk_2784608F8;
  v7[4] = &v8;
  objc_msgSend_foreach_(v4, a2, v7, a4);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_2211AD6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211AD6D0(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) += sub_2216F7EB4(v3);
}

id sub_2211AD740(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v4 = a3;
  v5 = a2;
  v7 = a2 - a3;
  if (a2 < a3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorageBucket shiftIndexesBackAtIndex:count:]", a4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 429, 0, "Can't shift indexes below zero!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_maxKey(*(a1 + 64), a2, a3, a4);
  v21 = v17 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v17;
  if (v7 > v21)
  {
LABEL_8:
    v22 = 0;
    goto LABEL_16;
  }

  objc_msgSend_willModify(a1, v18, v19, v20);
  v22 = objc_msgSend_array(MEMORY[0x277D81330], v23, v24, v25);
  v29 = objc_msgSend_minKey(*(a1 + 64), v26, v27, v28);
  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0;
  }

  else
  {
    v33 = v29;
  }

  if (v33 <= v5)
  {
    v33 = v5;
  }

  if (v33 <= v21)
  {
    v35 = -v4;
    do
    {
      v36 = v33;
      v38 = objc_msgSend_objectForKey_(*(a1 + 64), v30, v33, v32);
      v39 = (v35 + v36);
      v40 = *(a1 + 80);
      v42 = v39 >= v40;
      v41 = v39 - v40;
      v42 = !v42 || v41 >= *(a1 + 88);
      if (v42)
      {
        objc_msgSend_setObject_forKey_(v22, v37, v38, v36);
      }

      else
      {
        v45 = *(a1 + 64);
        if (!v38)
        {
          objc_msgSend_removeObjectForKey_(v45, v37, (v35 + v36), v39);
          goto LABEL_29;
        }

        objc_msgSend_setObject_forKey_(v45, v37, v38, v39);
      }

      objc_msgSend_removeObjectForKey_(*(a1 + 64), v43, v36, v44);
LABEL_29:

      v33 = v36 + 1;
    }

    while (v36 + 1 <= v21);
  }

  sub_2211ACC1C(a1, v30, v31, v32);
LABEL_16:

  return v22;
}

id sub_2211AD968(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || ((v4 = a3, v5 = a2, v7 = objc_msgSend_maxKey(*(a1 + 64), a2, a3, a4), v7 != 0x7FFFFFFFFFFFFFFFLL) ? (v11 = v7) : (v11 = 0), v11 < v5))
  {
    v12 = 0;
    goto LABEL_9;
  }

  objc_msgSend_willModify(a1, v8, v9, v10);
  v12 = objc_msgSend_array(MEMORY[0x277D81330], v13, v14, v15);
  if (v11 >= v5)
  {
    v20 = v11;
    v21 = v11 + v4;
    do
    {
      v23 = objc_msgSend_objectForKey_(*(a1 + 64), v16, v20, v18);
      v24 = *(a1 + 80);
      v26 = v21 >= v24;
      v25 = v21 - v24;
      v26 = !v26 || v25 >= *(a1 + 88);
      if (v26)
      {
        objc_msgSend_setObject_forKey_(v12, v22, v23, v20);
      }

      else
      {
        v29 = *(a1 + 64);
        if (!v23)
        {
          objc_msgSend_removeObjectForKey_(v29, v22, v21, v21);
          goto LABEL_22;
        }

        objc_msgSend_setObject_forKey_(v29, v22, v23, v21);
      }

      objc_msgSend_removeObjectForKey_(*(a1 + 64), v27, v20, v28);
LABEL_22:

      --v21;
    }

    while (v20-- > v5);
  }

  sub_2211ACC1C(a1, v16, v17, v18);
LABEL_9:

  return v12;
}

id sub_2211ADAF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 80);
    v6 = a2 >= v4;
    v5 = a2 - v4;
    v6 = !v6 || v5 >= *(a1 + 88);
    if (v6)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Index out of range for bucket!", "[TSTTableHeaderStorageBucket headerAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", 524);
      v8 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableHeaderStorageBucket headerAtIndex:]", v10);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v11, v14, 524, 1, "Index out of range for bucket!");

      TSUCrashBreakpoint();
      abort();
    }

    a1 = objc_msgSend_objectForKey_(*(a1 + 64), a2, a2, a4);
  }

  return a1;
}

void sub_2211ADC14(uint64_t a1, void *a2, unsigned int a3)
{
  v26 = a2;
  if (a1)
  {
    v8 = *(a1 + 80);
    v10 = a3 >= v8;
    v9 = a3 - v8;
    v10 = !v10 || v9 >= *(a1 + 88);
    if (v10)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Index out of range for bucket!", "[TSTTableHeaderStorageBucket setHeader:atIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", 529);
      v18 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTTableHeaderStorageBucket setHeader:atIndex:]", v20);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v21, v24, 529, 1, "Index out of range for bucket!");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_willModify(a1, v5, v6, v7);
    if (*(a1 + 72))
    {
      v13 = objc_msgSend_objectForKey_(*(a1 + 64), v11, a3, v12);
      v14 = sub_2216F7CC4(v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 64);
    if (v26)
    {
      objc_msgSend_setObject_forKey_(v15, v11, v26, a3);
      v16 = sub_2216F7CC4(v26);
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      objc_msgSend_removeObjectForKey_(v15, v11, a3, v12);
      v16 = 0;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    if (!v16)
    {
      v17 = -1;
LABEL_17:
      *(a1 + 72) += v17;
      goto LABEL_18;
    }

LABEL_15:
    if (v14 || !v16)
    {
      goto LABEL_18;
    }

    v17 = 1;
    goto LABEL_17;
  }

LABEL_18:
}

void sub_2211ADE0C(id *a1, void *a2)
{
  v8 = a2;
  if (a1)
  {
    if (v8 && objc_msgSend_count(v8, v3, v4, v5))
    {
      objc_msgSend_willModify(a1, v3, v4, v5);
      objc_msgSend_addObjectsFromArray_(a1[8], v6, v8, v7);
    }

    sub_2211ACC1C(a1, v3, v4, v5);
  }
}

void sub_2211AE3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211AE40C(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v12 = a2;
  if (!v12 || !sub_2216F7C84(v12))
  {
    goto LABEL_12;
  }

  v5 = a1[6];
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 32) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_10;
  }

  if (v8 == *(v5 + 36))
  {
LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
    v6 = *(v5 + 40);
    v8 = *v6;
  }

  *v6 = v8 + 1;
  v9 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderStorageBucket_Header>(*(v5 + 24));
  v10 = *(v5 + 32);
  v11 = *(v5 + 40) + 8 * v10;
  *(v5 + 32) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_10:
  sub_221480458(v12, v9, a1[4], v3);
  if (sub_2216F7CC4(v12))
  {
    ++*(*(a1[5] + 8) + 24);
  }

LABEL_12:
}

void sub_2211AF1C0(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v24 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);

  MEMORY[0x223D9F890](va);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2211B0EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211B0EE4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
}

void sub_2211B0F34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v32 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a3, v7);
  v11 = v5;
  if (objc_msgSend_hasBadRefWithUidInfo(v5, v8, v9, v10))
  {
    TSCEFormulaRewriteContext::setContainingCellCoord((*(*(a1 + 40) + 8) + 48), &v32);
    v13 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(v5, v12, *(*(a1 + 40) + 8) + 48, 0);

    v11 = v13;
    objc_msgSend_setObject_forKey_(*(*(a1 + 32) + 32), v14, v13, a3);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v19 = objc_msgSend_emptyReferenceSetWrapper(WeakRetained, v16, v17, v18);

  if (v19)
  {
    v23 = objc_msgSend_referenceSet(v19, v20, v21, v22);
    v24 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v25 = *(a1 + 32);
    *&v31.var0 = v32;
    v31.var6 = *(v25 + 8);
    objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v11, v26, v23, v24, &v31, 1, 0);
  }

  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v31, 0, 1);
  v27 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v28 = *(a1 + 32);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v30, &v31);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v27, v29, &v32, v28 + 8, v19, &v30);
}

void sub_2211B1804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2211B182C(va);

  _Unwind_Resume(a1);
}

void sub_2211B182C(uint64_t a1)
{
  *a1 = &unk_2834A3EA8;

  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v4);
}

void sub_2211B1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2211B182C(va);

  _Unwind_Resume(a1);
}

void sub_2211B1AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((v5 + 24));
  v11 = objc_msgSend_copyByForceSettingOwnerUIDs_calcEngine_(v7, v9, v6, WeakRetained);

  objc_msgSend_setFormulaObject_atIndex_(*(a1 + 32), v10, v11, a2);
}

void sub_2211B1D1C(uint64_t a1, void *a2, int a3)
{
  v17 = a2;
  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 32);
  v9 = *v7;
  if (v8 < *v7)
  {
    *(v6 + 32) = v8 + 1;
    v10 = *&v7[2 * v8 + 2];
    goto LABEL_8;
  }

  if (v9 == *(v6 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
    v7 = *(v6 + 40);
    v9 = *v7;
  }

  *v7 = v9 + 1;
  v10 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive_FormulaStorePair>(*(v6 + 24));
  v11 = *(v6 + 32);
  v12 = *(v6 + 40) + 8 * v11;
  *(v6 + 32) = v11 + 1;
  *(v12 + 8) = v10;
LABEL_8:
  v13 = *(v10 + 16);
  *(v10 + 32) = a3;
  *(v10 + 16) = v13 | 3;
  v14 = *(v10 + 24);
  if (!v14)
  {
    v15 = *(v10 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v15);
    *(v10 + 24) = v14;
  }

  if ((objc_msgSend_encodeToArchive_archiver_(v17, v5, v14, *(a1 + 32)) & 6) != 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(*(a1 + 32), v16, 0x300020000000ALL, @"TSTCategorizedTables");
  }
}

void sub_2211B28B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_22107C2C0(&a16);
  _Unwind_Resume(a1);
}

void sub_2211B3D94(void *a1)
{
  v25 = a1;
  v4 = objc_msgSend_layoutEngine(v25, v1, v2, v3);
  v8 = objc_msgSend_layoutHint(v25, v5, v6, v7);
  v9 = sub_2213A2A30(v4, v8);
  v11 = v10;

  if (WORD2(v9) == 0x7FFF)
  {
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = WORD2(v9);
  }

  if (v9 == 0x7FFFFFFF)
  {
    v16 = 0xFFFFFFFF00000000;
  }

  else
  {
    v16 = v9 << 32;
  }

  if (HIDWORD(v11))
  {
    v17 = ((v16 + v11) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  else
  {
    v17 = 0xFFFFFFFF00000000;
  }

  if (v11)
  {
    v18 = (v11 + v15 - 1);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  v19 = objc_msgSend_spaceBundle(v25, v12, v13, v14);
  v23 = objc_msgSend_space(v19, v20, v21, v22);
  objc_msgSend_setGridRange_(v23, v24, v16 | v15, v18 | v17);

  v25[700] = 1;
}

void sub_2211B4044(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTLayout;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

double sub_2211B410C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = sub_2211B4394(v3, v5, v6, v7);
  v12 = v8;
  v13 = v4;
  if (!v4)
  {
    v13 = v8;
  }

  objc_msgSend_strokeFrame(v13, v9, v10, v11);
  x = v17;
  y = v19;
  width = v21;
  height = v23;
  if (!v4)
  {
    v25 = TSTLayoutGetRepeatHeaderRowsSpace(v3, v14, v15, v16);
    v32 = TSTLayoutGetRepeatHeaderCornerSpace(v3, v26, v27, v28);
    if (v25)
    {
      objc_msgSend_strokeFrame(v25, v29, v30, v31);
      v71.origin.x = v33;
      v71.origin.y = v34;
      v71.size.width = v35;
      v71.size.height = v36;
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      v65 = CGRectUnion(v64, v71);
      x = v65.origin.x;
      y = v65.origin.y;
      width = v65.size.width;
      height = v65.size.height;
    }

    if (v32)
    {
      objc_msgSend_strokeFrame(v32, v29, v30, v31);
      v72.origin.x = v37;
      v72.origin.y = v38;
      v72.size.width = v39;
      v72.size.height = v40;
      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      v67 = CGRectUnion(v66, v72);
      x = v67.origin.x;
      y = v67.origin.y;
      width = v67.size.width;
      height = v67.size.height;
    }
  }

  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v69 = CGRectInset(v68, -1.0, -1.0);
  v41 = v69.origin.x;
  v42 = v69.origin.y;
  v43 = v69.size.width;
  v44 = v69.size.height;
  v45 = sub_2211B44A8(v3);
  v46 = v42 - v45;
  if (v45 <= 0.0)
  {
    v47 = v44;
  }

  else
  {
    v47 = v44 + v45;
  }

  if (v45 <= 0.0)
  {
    v46 = v42;
  }

  v48 = v41;
  v49 = v43;
  v70 = CGRectIntegral(*(&v46 - 1));
  v50 = v70.origin.x;
  v51 = v70.size.width;
  if (objc_msgSend_isFrozen(v13, v52, v53, v54))
  {
    v59 = sub_2211B410C(v3, v12);
    if (v59 < v50)
    {
      v60 = v58;
      IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v13, v55, v56, v57);
      v62 = v50 - v59;
      if (!IsLeftToRight)
      {
        v62 = v60 - v51;
      }

      v50 = v50 - v62;
    }
  }

  return v50;
}

id sub_2211B4394(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_space(v4, v5, v6, v7);

  return v8;
}

id TSTLayoutGetRepeatHeaderRowsSpace(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_repeatHeaderRowsSpace(v4, v5, v6, v7);

  return v8;
}

id TSTLayoutGetRepeatHeaderCornerSpace(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_repeatHeaderCornerSpace(v4, v5, v6, v7);

  return v8;
}

double sub_2211B44A8(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (!v1 || (v1[427] & 1) == 0)
  {
    v40 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
    objc_msgSend_invalidateTableNameHeight(v40, v41, v42, v43);

    v39 = 0.0;
    goto LABEL_9;
  }

  v6 = sub_2211BA638(v1, v2, v3, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *&qword_27CFB3A88;
  v17 = objc_msgSend_layoutEngine(v5, v14, v15, v16);
  v21 = objc_msgSend_styleProvidingSource(v17, v18, v19, v20);
  if (v21 && (v22 = v6 + v13, v23 = v8 + v13, v24 = v10 - (v13 + v13), v25 = v12 - (v13 + v13), v57.origin.x = v22, v57.origin.y = v23, v57.size.width = v24, v57.size.height = v25, !CGRectIsInfinite(v57)))
  {
    v58.origin.x = v22;
    v58.origin.y = v23;
    v58.size.width = v24;
    v58.size.height = v25;
    IsNull = CGRectIsNull(v58);

    if (!IsNull)
    {
      v59.origin.x = v22;
      v59.origin.y = v23;
      v59.size.width = v24;
      v59.size.height = v25;
      if (!CGRectIsInfinite(v59))
      {
        v60.origin.x = v22;
        v60.origin.y = v23;
        v60.size.width = v24;
        v60.size.height = v25;
        if (!CGRectIsNull(v60))
        {
          objc_msgSend_frameInRoot(v5, v26, v27, v28);
          if (v49 < v24)
          {
            v24 = v49;
          }

          v29 = objc_msgSend_tableNameEditingStorage(v5, v46, v47, v48);
          v53 = objc_msgSend_layoutEngine(v5, v50, v51, v52);
          objc_msgSend_tableNameHeightForStorage_withMaxWidth_(v53, v54, v29, v55, v24);
          v34 = v56;

          goto LABEL_7;
        }
      }
    }
  }

  else
  {
  }

  v29 = objc_msgSend_layoutEngine(v5, v26, v27, v28);
  objc_msgSend_tableNameHeight(v29, v30, v31, v32);
  v34 = v33;
LABEL_7:

  v38 = sub_2211B877C(v5, v35, v36, v37);
  v39 = ceil(v34 * v38) / v38;
LABEL_9:

  return v39;
}

void sub_2211B4680(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2211B4730(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_layoutHint(a1, a2, a3, a4);
  v8 = objc_msgSend_partitionPosition(v4, v5, v6, v7);

  return v8 & 1;
}

double sub_2211B5074(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2211B4394(a1, a2, a3, a4);
  objc_msgSend_strokeFrame(v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

void sub_2211B5410(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double TSTLayoutGetCanvasFrame(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (v1)
  {
    v6 = objc_msgSend_spaceBundle(v1, v2, v3, v4);
    v10 = objc_msgSend_space(v6, v7, v8, v9);
    objc_msgSend_canvasFrame(v10, v11, v12, v13);
    v15 = v14;
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "CGRect TSTLayoutGetCanvasFrame(TSTLayout *__strong)", v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1702, 0, "Passing in a nil layout to TSTLayoutGetCanvasFrame.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    v15 = *MEMORY[0x277CBF3A0];
  }

  return v15;
}

void sub_2211B65A0(void *a1)
{
  v1 = a1;
  objc_msgSend_frameInRoot(v1, v2, v3, v4);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, v5, v6);
  v10 = objc_msgSend_spaceBundle(v1, v7, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2211B8600;
  v13[3] = &unk_278460A78;
  v14 = v15;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v10, v11, v13, v12);
}

void sub_2211B6680(void *a1, double a2, double a3, double a4, double a5)
{
  v31 = a1;
  v12 = objc_msgSend_spaceBundle(v31, v9, v10, v11);
  v16 = objc_msgSend_space(v12, v13, v14, v15);
  objc_msgSend_layoutRectForCanvasRect_(v16, v17, v18, v19, a2, a3, a4, a5);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  objc_msgSend_setNeedsDisplayInRect_(v31, v28, v29, v30, v21, v23, v25, v27);
}

void sub_2211B6830(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1;
  v9 = HIDWORD(a2);
  v10 = a2 & 0xFFFF00000000;
  if (a2 != 0x7FFFFFFF && v10 == 0x7FFF00000000)
  {
    LOWORD(v9) = 0;
  }

  v12 = HIDWORD(a4);
  v13 = a4 & 0xFFFF00000000;
  if (a4 != 0x7FFFFFFF && v13 == 0x7FFF00000000)
  {
    LOWORD(v12) = 0;
  }

  if (v9 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v9;
  }

  v44 = v6;
  objc_msgSend_invalidateLayoutSpaceCoordinatesAfterColumn_(v6, v7, v15, v8);
  if (v10 != 0x7FFF00000000 && a2 == 0x7FFFFFFF)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  if (v13 != 0x7FFF00000000 && a4 == 0x7FFFFFFF)
  {
    v21 = 0;
  }

  else
  {
    v21 = a4;
  }

  if (v19 >= v21)
  {
    objc_msgSend_invalidateLayoutSpaceCoordinatesAfterRow_(v44, v16, v21, v17);
  }

  else
  {
    objc_msgSend_invalidateLayoutSpaceCoordinatesAfterRow_(v44, v16, v19, v17);
  }

  objc_msgSend_invalidateLayoutSpaceTableOffsets(v44, v22, v23, v24);
  sub_2211B6988(v44, a4);
  v28 = objc_msgSend_layoutEngine(v44, v25, v26, v27);
  v32 = objc_msgSend_cellIDToWPColumnCache(v28, v29, v30, v31);
  objc_msgSend_removeAllObjects(v32, v33, v34, v35);

  v39 = objc_msgSend_containedTextEditingLayout(v44, v36, v37, v38);
  v43 = v39;
  if (v39)
  {
    objc_msgSend_invalidateSize(v39, v40, v41, v42);
  }
}

void sub_2211B6988(void *a1, uint64_t a2)
{
  v11 = a1;
  objc_msgSend_invalidateLayoutSpaceCoordinatesAfterRow_(v11, v3, a2, v4);
  objc_msgSend_invalidateChildren(v11, v5, v6, v7);
  objc_msgSend_invalidate(v11, v8, v9, v10);
}

void sub_2211B69F8(void *a1, uint64_t a2)
{
  v16 = a1;
  objc_msgSend_invalidateLayoutSpaceCoordinatesAfterColumn_(v16, v3, a2, v4);
  objc_msgSend_invalidateLayoutSpaceCoordinatesAfterRow_(v16, v5, 0, v6);
  objc_msgSend_invalidateLayoutSpaceTableOffsets(v16, v7, v8, v9);
  objc_msgSend_invalidateChildren(v16, v10, v11, v12);
  objc_msgSend_invalidate(v16, v13, v14, v15);
}

uint64_t sub_2211B6DA4(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  v9 = objc_msgSend_layoutHint(v1, v6, v7, v8);
  v10 = sub_2213A2A30(v5, v9);

  return v10;
}

void sub_2211B6E1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

unint64_t sub_2211B6E48(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  if (!objc_msgSend_numberOfHeaderColumns(v5, v6, v7, v8))
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_layoutHint(v1, v9, v10, v11);
  if ((objc_msgSend_cacheHintID(v12, v13, v14, v15) & 0xFFFF00000000) == 0)
  {

LABEL_6:
    v30 = objc_msgSend_layoutHint(v1, v24, v25, v26);
    v31 = sub_2213A2A30(v5, v30);
    v29 = v31;
    v27 = HIWORD(v31);

    if (!v29)
    {
      v35 = objc_msgSend_spaceBundle(v1, v32, v33, v34);
      v39 = objc_msgSend_space(v35, v36, v37, v38);
      v43 = objc_msgSend_headerRowsRepeat(v39, v40, v41, v42);

      if (v43)
      {
        v29 = objc_msgSend_numberOfHeaderRows(v5, v44, v45, v46);
        v28 = 0;
        goto LABEL_11;
      }

      v29 = 0;
    }

    v28 = 0;
    goto LABEL_11;
  }

  v19 = objc_msgSend_tableInfo(v1, v16, v17, v18);
  v23 = objc_msgSend_repeatingHeaderColumnsEnabled(v19, v20, v21, v22);

  if (v23)
  {
    goto LABEL_6;
  }

LABEL_4:
  v27 = 0;
  v28 = 0x7FFF00000000;
  v29 = 0x7FFFFFFF;
LABEL_11:

  return v28 | (v27 << 48) | v29;
}

unint64_t sub_2211B7004(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  if (!objc_msgSend_numberOfHeaderRows(v5, v6, v7, v8))
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_layoutHint(v1, v9, v10, v11);
  if (objc_msgSend_cacheHintID(v12, v13, v14, v15))
  {
    v19 = objc_msgSend_tableInfo(v1, v16, v17, v18);
    v23 = objc_msgSend_repeatingHeaderRowsEnabled(v19, v20, v21, v22);

    if (!v23)
    {
LABEL_4:
      v27 = 0;
      LOWORD(v28) = 0x7FFF;
      v29 = 0x7FFFFFFFLL;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v30 = objc_msgSend_layoutHint(v1, v24, v25, v26);
  v31 = sub_2213A2A30(v5, v30);
  v32 = WORD2(v31);
  v28 = HIDWORD(v31);
  v27 = HIWORD(v31);

  if (v32 || (objc_msgSend_spaceBundle(v1, v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend_space(v36, v37, v38, v39), v40 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend_headerColumnsRepeat(v40, v41, v42, v43), v40, v36, !v44))
  {
    v29 = 0;
  }

  else
  {
    v29 = 0;
    LOWORD(v28) = objc_msgSend_numberOfHeaderColumns(v5, v45, v46, v47) + v28;
  }

LABEL_10:

  return (v28 << 32) | (v27 << 48) | v29;
}

uint64_t sub_2211B71BC(void *a1)
{
  v1 = a1;
  v2 = sub_2211B7004(v1);
  v4 = v3;
  v5 = sub_2211B6E48(v1);
  v7 = 0x7FFF7FFFFFFFLL;
  if (v2 != 0x7FFFFFFF && (v2 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v4) && v4 && v5 != 0x7FFFFFFF && (v5 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v6) && v6)
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2211B729C(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = sub_2211B6DA4(v5);
  v8 = sub_221119E0C(a2, a3, v6, v7);
  v12 = v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v9) == 0 || v9 == 0;
  if (v12 && ((v13 = sub_2211B6E48(v5), v15 = sub_221119E0C(a2, a3, v13, v14), v15 == 0x7FFFFFFF) || (v15 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v16) || !v16) && ((v17 = sub_2211B7004(v5), v19 = sub_221119E0C(a2, a3, v17, v18), v19 == 0x7FFFFFFF) || (v19 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v20) || !v20))
  {
    v22 = sub_2211B71BC(v5);
    v24 = sub_221119E0C(a2, a3, v22, v23);
    if (HIDWORD(v25))
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    if ((v24 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    if (v24 == 0x7FFFFFFF)
    {
      v21 = 0;
    }

    else
    {
      v21 = v28;
    }
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

uint64_t sub_2211B7514(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  v9 = objc_msgSend_layoutHint(v1, v6, v7, v8);
  v10 = sub_2213A2A30(v5, v9) >> 32;

  v14 = objc_msgSend_numberOfHeaderColumns(v5, v11, v12, v13);
  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  return v15;
}

uint64_t sub_2211B75C0(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  v9 = objc_msgSend_layoutHint(v1, v6, v7, v8);
  LODWORD(v10) = sub_2213A2A30(v5, v9);

  v14 = objc_msgSend_numberOfHeaderRows(v5, v11, v12, v13);
  if (v14 <= v10)
  {
    v10 = v10;
  }

  else
  {
    v10 = v14;
  }

  return v10;
}

uint64_t sub_2211B7664(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  v9 = objc_msgSend_layoutEngine(v1, v6, v7, v8);
  v13 = objc_msgSend_layoutHint(v1, v10, v11, v12);
  v14 = sub_2213A2A30(v9, v13);
  v16 = v15;

  v20 = objc_msgSend_entireFooterRowsCellRange(v5, v17, v18, v19);
  v21 = v14 + HIDWORD(v16) - 1;
  if (HIDWORD(v16))
  {
    v22 = v14 == 0x7FFFFFFF;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v21 = 0x7FFFFFFF;
  }

  if ((v20 & 0xFFFF00000000) != 0x7FFF00000000 && v20 == 0x7FFFFFFF)
  {
    v24 = 0;
  }

  else
  {
    v24 = v20;
  }

  if (v21 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  return v25;
}

unint64_t sub_2211B7764(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  v13 = objc_msgSend_layoutHint(v1, v6, v7, v8);
  v9 = sub_2213A2A30(v5, v13);

  LODWORD(v13) = objc_msgSend_numberOfHeaderColumns(v5, v10, v11, v12);
  v17 = objc_msgSend_numberOfHeaderRows(v5, v14, v15, v16);
  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  if (WORD2(v9) >= v13)
  {
    v13 = HIDWORD(v9);
  }

  return v9 & 0xFFFF000000000000 | (v13 << 32) | v18;
}

unint64_t TSTLayoutGetPartitionBodyCellRange(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  v9 = objc_msgSend_layoutHint(v1, v6, v7, v8);
  v10 = sub_2213A2A30(v5, v9);

  v14 = objc_msgSend_numberOfHeaderColumns(v5, v11, v12, v13);
  v18 = objc_msgSend_numberOfHeaderRows(v5, v15, v16, v17);
  if (v18 > v10)
  {
    v22 = v18;
  }

  else
  {
    v22 = v10;
  }

  objc_msgSend_numberOfFooterRows(v5, v19, v20, v21);
  objc_msgSend_numberOfRows(v5, v23, v24, v25);
  if (WORD2(v10) >= v14)
  {
    v26 = HIDWORD(v10);
  }

  else
  {
    LOWORD(v26) = v14;
  }

  return v10 & 0xFFFF000000000000 | (v26 << 32) | v22;
}

uint64_t sub_2211B79C0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_layoutHint(a1, a2, a3, a4);
  v8 = objc_msgSend_partitionPosition(v4, v5, v6, v7);

  return (v8 >> 1) & 1;
}

uint64_t sub_2211B7A08(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_layoutHint(a1, a2, a3, a4);
  v8 = objc_msgSend_partitionPosition(v4, v5, v6, v7);

  return (v8 >> 2) & 1;
}

BOOL sub_2211B7A50(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_layoutHint(a1, a2, a3, a4);
  v8 = objc_msgSend_partitionPosition(v4, v5, v6, v7);

  return (~v8 & 0xF) != 0;
}

id sub_2211B7AA0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_frozenHeaderColumnsSpace(v4, v5, v6, v7);

  return v8;
}

id sub_2211B7AFC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_frozenHeaderRowsSpace(v4, v5, v6, v7);

  return v8;
}

id sub_2211B7B58(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_frozenHeaderCornerSpace(v4, v5, v6, v7);

  return v8;
}

id TSTLayoutGetRepeatHeaderColumnsSpace(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_repeatHeaderColumnsSpace(v4, v5, v6, v7);

  return v8;
}

double sub_2211B7C10(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_msgSend_lockForRead(v4, v5, v6, v7);
  objc_msgSend_alignedStrokeFrame(v4, v8, v9, v10);
  v188 = v11;
  objc_msgSend_canvasRectForLayoutRect_(v4, v12, v13, v14);
  v186 = v15;
  v187 = v16;
  v184 = v17;
  v185 = v18;
  v19 = sub_2211B817C(v3);
  v182 = v20;
  v183 = v19;
  v21 = MEMORY[0x277CBF348];
  v23 = *MEMORY[0x277CBF348];
  v22 = *(MEMORY[0x277CBF348] + 8);
  v181 = sub_2211B44A8(v3);
  v24 = sub_2211B82D0(v3);
  v25 = sub_2211B848C(v3);
  v29 = objc_msgSend_spaceBundle(v3, v26, v27, v28);
  v33 = objc_msgSend_frozenHeaderColumnsSpace(v29, v30, v31, v32);
  v37 = v33;
  if (((v33 != 0) & v24) == 1)
  {
    v38 = objc_msgSend_spaceBundle(v3, v34, v35, v36);
    v42 = objc_msgSend_space(v38, v39, v40, v41);
    v46 = v42;
    if (v42 == v4)
    {
    }

    else
    {
      v47 = objc_msgSend_spaceBundle(v3, v43, v44, v45);
      v51 = objc_msgSend_frozenHeaderRowsSpace(v47, v48, v49, v50);

      if (v51 != v4)
      {
        goto LABEL_10;
      }
    }

    v55 = v3[45];
    v56 = objc_msgSend_spaceBundle(v3, v52, v53, v54, *(v3 + 48), *(v3 + 47), *(v3 + 46));
    v60 = objc_msgSend_frozenHeaderColumnsSpace(v56, v57, v58, v59);
    objc_msgSend_alignedFrame(v60, v61, v62, v63);
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v75 = objc_msgSend_spaceBundle(v3, v72, v73, v74);
    v79 = objc_msgSend_frozenHeaderColumnsSpace(v75, v76, v77, v78);
    objc_msgSend_alignedStrokeFrame(v79, v80, v81, v82);
    v84 = v83;

    v88 = objc_msgSend_spaceBundle(v3, v85, v86, v87);
    v92 = objc_msgSend_frozenHeaderColumnsSpace(v88, v89, v90, v91);
    objc_msgSend_canvasRectForLayoutRect_(v92, v93, v94, v95, v84, v67, v69 + v65 - v84, v71);
    v97 = v96;

    if (objc_msgSend_layoutDirectionIsLeftToRight(v3, v98, v99, v100))
    {
      v189.origin.x = v186;
      v189.origin.y = v187;
      v189.size.width = v184;
      v189.size.height = v185;
      v23 = v183 + v55 + v97 - CGRectGetMinX(v189);
    }

    else
    {
      v190.origin.x = v186;
      v190.origin.y = v187;
      v190.size.width = v184;
      v190.size.height = v185;
      MaxX = CGRectGetMaxX(v190);
      v191.origin.x = v55;
      v191.size.width = v179;
      v191.origin.y = v180;
      v191.size.height = rect;
      v23 = MaxX - (CGRectGetMaxX(v191) - v183 - v97);
    }
  }

  else
  {
  }

LABEL_10:
  v102 = objc_msgSend_spaceBundle(v3, v52, v53, v54);
  v106 = objc_msgSend_frozenHeaderRowsSpace(v102, v103, v104, v105);
  v110 = v106;
  if (v106 != 0 && v25)
  {
    v111 = objc_msgSend_spaceBundle(v3, v107, v108, v109);
    v115 = objc_msgSend_space(v111, v112, v113, v114);
    v119 = v115;
    if (v115 == v4)
    {

LABEL_16:
      v128 = v3[46];
      v129 = objc_msgSend_spaceBundle(v3, v125, v126, v127);
      v133 = objc_msgSend_frozenHeaderRowsSpace(v129, v130, v131, v132);
      objc_msgSend_alignedFrame(v133, v134, v135, v136);
      v138 = v137;
      v140 = v139;
      v142 = v141;
      v144 = v143;

      v148 = objc_msgSend_spaceBundle(v3, v145, v146, v147);
      v152 = objc_msgSend_frozenHeaderRowsSpace(v148, v149, v150, v151);
      objc_msgSend_alignedStrokeFrame(v152, v153, v154, v155);
      v157 = v156;

      v161 = objc_msgSend_spaceBundle(v3, v158, v159, v160);
      v165 = objc_msgSend_frozenHeaderRowsSpace(v161, v162, v163, v164);
      objc_msgSend_canvasRectForLayoutRect_(v165, v166, v167, v168, v138, v157, v142, v144 + v140 - v157);
      v170 = v169;

      v192.origin.x = v186;
      v192.origin.y = v187;
      v192.size.width = v184;
      v192.size.height = v185;
      v22 = v182 + v181 + v128 + v170 - CGRectGetMinY(v192);
      goto LABEL_17;
    }

    v120 = objc_msgSend_spaceBundle(v3, v116, v117, v118);
    v124 = objc_msgSend_frozenHeaderColumnsSpace(v120, v121, v122, v123);

    if (v124 == v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_17:
  if (v23 != *v21 || v22 != v21[1])
  {
    IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v3, v125, v126, v127);
    v175 = v186 + v23;
    if (!IsLeftToRight)
    {
      v175 = v186;
    }

    objc_msgSend_layoutRectForCanvasRect_(v4, v172, v173, v174, v175, v187 + v22, v184 - v23, v185 - v22);
    v188 = v176;
  }

  objc_msgSend_unlock(v4, v125, v126, v127);

  return v188;
}

double sub_2211B817C(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CBF348];
  v30 = sub_2211B877C(v1, v3, v4, v5);
  if (v1[425] == 1)
  {
    v6 = sub_2211B8A78(v1, 0);
    v13 = sub_2211B87F0(v1, v6, v10, v11, v12, v7, v8, v9);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = sub_2211B93F8(v1, 0);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    Width = CGRectGetWidth(v31);
    v32.origin.x = v20;
    v32.origin.y = v22;
    v32.size.width = v24;
    v32.size.height = v26;
    v27 = CGRectGetWidth(v32);
    v33.origin.x = v13;
    v33.origin.y = v15;
    v33.size.width = v17;
    v33.size.height = v19;
    CGRectGetHeight(v33);
    if (6.0 / v30 + Width >= 10.0 / v30 + v27)
    {
      v2 = 6.0 / v30 + Width;
    }

    else
    {
      v2 = 10.0 / v30 + v27;
    }
  }

  return v2;
}

uint64_t sub_2211B82D0(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v2, v3, v4);
  v9 = objc_msgSend_supportsFrozenHeaders(v5, v6, v7, v8);

  if (v9)
  {
    ReplaceMode = objc_msgSend_inFindReplaceMode(v1, v10, v11, v12);
    v17 = objc_msgSend_suppressFrozenHeadersForEditing(v1, v14, v15, v16);
    isStrokeEditing = objc_msgSend_isStrokeEditing(v1, v18, v19, v20);
    v25 = objc_msgSend_spaceBundle(v1, v22, v23, v24);
    v29 = objc_msgSend_space(v25, v26, v27, v28);

    v30 = sub_2211B817C(v1);
    objc_msgSend_canvasStrokeFrame(v29, v31, v32, v33);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    if (objc_msgSend_layoutDirectionIsLeftToRight(v1, v42, v43, v44))
    {
      v45 = v35 < v30 + *(v1 + 45);
    }

    else
    {
      v49.origin.x = v35;
      v49.origin.y = v37;
      v49.size.width = v39;
      v49.size.height = v41;
      MaxX = CGRectGetMaxX(v49);
      v45 = MaxX > CGRectGetMaxX(*(v1 + 360)) - v30;
    }

    if ((ReplaceMode | v17 | isStrokeEditing))
    {
      v46 = 0;
    }

    else
    {
      v46 = sub_2211BA064(v1) & v45;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

BOOL sub_2211B848C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v2, v3, v4);
  v9 = objc_msgSend_supportsFrozenHeaders(v5, v6, v7, v8);

  if (v9)
  {
    ReplaceMode = objc_msgSend_inFindReplaceMode(v1, v10, v11, v12);
    v17 = objc_msgSend_suppressFrozenHeadersForEditing(v1, v14, v15, v16);
    isStrokeEditing = objc_msgSend_isStrokeEditing(v1, v18, v19, v20);
    v25 = objc_msgSend_spaceBundle(v1, v22, v23, v24);
    v29 = objc_msgSend_space(v25, v26, v27, v28);

    v33 = sub_2211B817C(v1);
    v35 = v34;
    if (v1 && *(v1 + 427) == 1)
    {
      sub_2211BA2B8(v1);
    }

    else
    {
      objc_msgSend_canvasStrokeFrame(v29, v30, v31, v32, v33);
    }

    v38 = v36;
    v37 = ((ReplaceMode | v17 | isStrokeEditing) & 1) == 0 && sub_2211BA064(v1) && v38 < v35 + *(v1 + 46);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

uint64_t sub_2211B8600(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v6[0] = a1[2];
  v6[1] = v4;
  v6[2] = a1[4];
  return objc_msgSend_setTransformToCanvas_(a2, a2, v6, a4);
}

void sub_2211B8638(void *a1@<X0>, _OWORD *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v14 = objc_msgSend_spaceBundle(a1, a3, a4, a5);
  v9 = objc_msgSend_space(v14, v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_transformToDevice(v9, v10, v11, v12);
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

void sub_2211B86D0(void *a1, double a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_spaceBundle(a1, a3, a4, a5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211B8770;
  v9[3] = &unk_278460A98;
  *&v9[4] = a2;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v6, v7, v9, v8);
}

double sub_2211B877C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_space(v4, v5, v6, v7);
  objc_msgSend_viewScale(v8, v9, v10, v11);
  v13 = v12;

  return v13;
}

double sub_2211B87F0(void *a1, double a2, double a3, double a4, double a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v12 = objc_msgSend_spaceBundle(a1, a6, a7, a8);
  v16 = objc_msgSend_space(v12, v13, v14, v15);
  objc_msgSend_layoutRectForCanvasRect_(v16, v17, v18, v19, a2, a3, a4, a5);
  v21 = v20;

  return v21;
}

double sub_2211B88A4(void *a1, double a2, double a3, double a4, double a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v12 = objc_msgSend_spaceBundle(a1, a6, a7, a8);
  v16 = objc_msgSend_space(v12, v13, v14, v15);
  objc_msgSend_canvasRectForLayoutRect_(v16, v17, v18, v19, a2, a3, a4, a5);
  v21 = v20;

  return v21;
}

double sub_2211B8958(void *a1, double a2, double a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_msgSend_spaceBundle(a1, a4, a5, a6);
  v12 = objc_msgSend_space(v8, v9, v10, v11);
  objc_msgSend_canvasPointForLayoutPoint_(v12, v13, v14, v15, a2, a3);
  v17 = v16;

  return v17;
}

double sub_2211B89E4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v8 = objc_msgSend_space(v4, v5, v6, v7);
  objc_msgSend_canvasStrokeFrame(v8, v9, v10, v11);
  v13 = v12;

  return v13;
}

double sub_2211B8A78(void *a1, int a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_spaceBundle(v3, v4, v5, v6);
    v12 = objc_msgSend_space(v8, v9, v10, v11);

    v16 = [TSTLayout alignedStrokeFrame]_0(v7, v13, v14, v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v26 = sub_2211B877C(v7, v23, v24, v25);
    v27 = sub_2211B44A8(v7);
    IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v7, v28, v29, v30);
    v35 = v18 - v27;
    if (IsLeftToRight)
    {
      objc_msgSend_canvasRectForLayoutRect_(v12, v31, v32, v33, v16 - 31.0 / v26, v35 - 31.0 / v26, 25.0 / v26, 25.0 / v26);
    }

    else
    {
      v87.origin.x = v16;
      v87.origin.y = v18 - v27;
      v87.size.width = v20;
      v87.size.height = v22;
      v44 = 6.0 / v26 + CGRectGetMaxX(v87);
      objc_msgSend_canvasRectForLayoutRect_(v12, v45, v46, v47, v44, v35 - 31.0 / v26, 25.0 / v26, 25.0 / v26);
    }

    rect = v42;
    v43 = v39;
    v48 = v40;
    v49 = v41;
    objc_msgSend_canvasRectForLayoutRect_(v12, v36, v37, v38, v16, v35, v20, v22);
    v83 = v51;
    v84 = v50;
    v81 = v53;
    v82 = v52;
    v80.origin.x = sub_2211B93F8(v7, 0);
    v80.origin.y = v54;
    v80.size.width = v55;
    v80.size.height = v56;
    v57 = v7[45];
    v85 = v7[46];
    v59 = v7[47];
    v58 = v7[48];
    v63 = objc_msgSend_layoutEngine(v7, v60, v61, v62);
    v67 = objc_msgSend_styleProvidingSource(v63, v64, v65, v66);

    if (IsLeftToRight)
    {
      if (v43 < v57 || v67 != 0)
      {
        v88.origin.y = v83;
        v88.origin.x = v84;
        v88.size.height = v81;
        v88.size.width = v82;
        MaxX = CGRectGetMaxX(v88);
        if (v57 >= MaxX)
        {
          v43 = MaxX;
        }

        else
        {
          v43 = v57;
        }
      }

      v89.origin.x = v43;
      v89.origin.y = v48;
      v89.size.width = v49;
      v89.size.height = rect;
      CGRectGetMaxX(v89);
      CGRectGetMaxX(v80);
    }

    else
    {
      v90.origin.x = v43;
      v90.origin.y = v48;
      v90.size.width = v49;
      v90.size.height = rect;
      v73 = CGRectGetMaxX(v90);
      v91.origin.x = v57;
      v91.origin.y = v85;
      v91.size.width = v59;
      v91.size.height = v58;
      if (v73 > CGRectGetMaxX(v91) || v67 != 0)
      {
        v92.origin.x = v57;
        v92.origin.y = v85;
        v92.size.width = v59;
        v92.size.height = v58;
        v75 = CGRectGetMaxX(v92);
        v93.origin.y = v83;
        v93.origin.x = v84;
        v93.size.height = v81;
        v93.size.width = v82;
        MinX = CGRectGetMinX(v93);
        if (v75 - v49 >= MinX)
        {
          v43 = v75 - v49;
        }

        else
        {
          v43 = MinX;
        }
      }

      v94.origin.x = v43;
      v94.origin.y = v48;
      v94.size.width = v49;
      v94.size.height = rect;
      v77 = CGRectGetMinX(v94);
      v78 = 10.0 / v26 - (CGRectGetMinX(v80) - (v77 + -6.0 / v26));
      if (v78 > 0.0)
      {
        v43 = v43 - v78;
      }
    }

    if (v48 < v85)
    {
      v95.origin.y = v83;
      v95.origin.x = v84;
      v95.size.height = v81;
      v95.size.width = v82;
      CGRectGetMaxY(v95);
    }

    if (a2)
    {
      if (objc_msgSend_layoutDirectionIsLeftToRight(v7, v70, v71, v72))
      {
        v43 = v43 - 10.0 / v26;
      }

      else
      {
        v43 = v43 - 16.0 / v26;
      }
    }
  }

  else
  {
    v43 = *MEMORY[0x277CBF3A0];
  }

  return v43;
}

void sub_2211B8F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_2211B8FA4(double *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[45];
  v5 = a1[46];
  v6 = a1[47];
  v7 = a1[48];
  v8 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v12 = objc_msgSend_space(v8, v9, v10, v11);
  objc_msgSend_layoutRectForCanvasRect_(v12, v13, v14, v15, v4, v5, v6, v7);
  v17 = v16;

  return v17;
}

double sub_2211B9064(void *a1, double *a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    v8 = [TSTLayout alignedStrokeFrame]_0(v3, v4, v5, v6);
    rect = v9;
    v10 = v8;
    v12 = v11;
    v14 = v13;
    v97 = sub_2211B877C(v7, v15, v16, v17);
    v21 = objc_msgSend_spaceBundle(v7, v18, v19, v20);
    v25 = objc_msgSend_space(v21, v22, v23, v24);

    v26 = sub_2211B44A8(v7);
    v30 = objc_msgSend_layoutEngine(v7, v27, v28, v29);
    isDynamicallyColumnTabResizing = objc_msgSend_isDynamicallyColumnTabResizing(v30, v31, v32, v33);

    if (isDynamicallyColumnTabResizing)
    {
      if ((objc_msgSend_layoutDirectionIsLeftToRight(v7, v35, v36, v37) & 1) == 0)
      {
        v41 = objc_msgSend_layoutEngine(v7, v38, v39, v40);
        objc_msgSend_dynamicColumnTabSize(v41, v42, v43, v44);
        v10 = v10 + v14 - v45;
      }

      v46 = objc_msgSend_layoutEngine(v7, v38, v39, v40);
      objc_msgSend_dynamicColumnTabSize(v46, v47, v48, v49);
      v14 = v50;
    }

    v95 = v10;
    v96 = v14;
    v94 = v12;
    v51 = sub_2211B8FA4(v7, v35, v36, v37);
    v91 = v53;
    v92 = v52;
    v54 = v51;
    v56 = v55;
    objc_msgSend_tabsRowWidthAndOptionalLeftGap_(v7, v57, 0, v58);
    v60 = v59;
    v64 = objc_msgSend_layoutEngine(v7, v61, v62, v63);
    v68 = objc_msgSend_styleProvidingSource(v64, v65, v66, v67);

    if (v68)
    {
      v72 = 6.0;
    }

    else
    {
      v72 = 11.0;
    }

    v76 = v60 + v72;
    if (objc_msgSend_layoutDirectionIsLeftToRight(v7, v69, v70, v71))
    {
      v77 = v95;
      v78 = v94 - v26 + -29.0 / v97;
      v79 = v95 - v76 / v97;
      v80 = 0.0;
      v81 = 22.0 / v97;
      if (v79 < v54)
      {
        v80 = v54 - v79;
        v77 = v95 + v54 - v79;
        v14 = v14 - (v54 - v79);
      }
    }

    else
    {
      v98.origin.x = v95;
      v98.origin.y = v94;
      v98.size.width = v14;
      v98.size.height = rect;
      v77 = CGRectGetMaxX(v98) - v14;
      v78 = v94 - v26 + -29.0 / v97;
      v81 = 22.0 / v97;
      v99.origin.x = v77;
      v99.origin.y = v78;
      v99.size.width = v14;
      v99.size.height = 22.0 / v97;
      MaxX = CGRectGetMaxX(v99);
      v100.origin.x = v54;
      v100.origin.y = v56;
      v100.size.height = v91;
      v100.size.width = v92;
      v84 = CGRectGetMaxX(v100);
      v85 = v76 / v97;
      v86 = v76 / v97 + MaxX;
      v80 = 0.0;
      if (v86 <= v84)
      {
        v14 = v96;
      }

      else
      {
        v101.origin.x = v77;
        v101.origin.y = v78;
        v101.size.width = v96;
        v101.size.height = 22.0 / v97;
        v87 = CGRectGetMaxX(v101);
        v102.origin.x = v54;
        v102.origin.y = v56;
        v102.size.height = v91;
        v102.size.width = v92;
        v80 = v85 + v87 - CGRectGetMaxX(v102);
        v14 = v96 - v80;
      }
    }

    if (v78 < 2.0 / v97 + v56)
    {
      v103.origin.y = v94;
      v103.origin.x = v95;
      v103.size.width = v96;
      v103.size.height = rect;
      MaxY = CGRectGetMaxY(v103);
      if (v56 < MaxY)
      {
        MaxY = v56;
      }

      v78 = 2.0 / v97 + MaxY;
    }

    if (v14 <= 0.0)
    {
      v82 = *MEMORY[0x277CBF3A0];
      if (!a2)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      objc_msgSend_canvasRectForLayoutRect_(v25, v73, v74, v75, v77, v78, v14, v81);
      v82 = v89;
      if (!a2)
      {
        goto LABEL_25;
      }
    }

    *a2 = v80;
    goto LABEL_25;
  }

  v82 = *MEMORY[0x277CBF3A0];
LABEL_26:

  return v82;
}