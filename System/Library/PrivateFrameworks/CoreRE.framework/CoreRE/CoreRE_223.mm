void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#1},void ()(re::RenderGraphContext &)>::cloneInto(void *a1, void *a2)
{
  a2[2] = 0;
  v2 = a1[1];
  v3 = a1[2];
  *a2 = &unk_1F5D10498;
  a2[1] = v2;
  a2[3] = -1;
  a2[2] = v3;
  a2[3] = a1[3];
  a2[4] = a1[4];
  return a2;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#1},void ()(re::RenderGraphContext &)>::moveInto(void *a1, void *a2)
{
  a2[2] = 0;
  v2 = a1[1];
  v3 = a1[2];
  *a2 = &unk_1F5D10498;
  a2[1] = v2;
  a2[3] = -1;
  a2[2] = v3;
  a2[3] = a1[3];
  a2[4] = a1[4];
  return a2;
}

uint64_t re::RenderGraphDataStore::get<re::RenderGraphSelectionParams>(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BEA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEA18))
  {
    qword_1EE1BEA10 = re::internal::getOrCreateInfo("RenderGraphSelectionParams", re::allocInfo_RenderGraphSelectionParams, re::initInfo_RenderGraphSelectionParams, &unk_1EE1BE9E8, 0);
    __cxa_guard_release(&qword_1EE1BEA18);
  }

  v4 = strlen(*(qword_1EE1BEA10 + 48));
  if (v4)
  {
    MurmurHash3_x64_128(*(qword_1EE1BEA10 + 48), v4, 0, v11);
    v5 = (v11[1] - 0x61C8864680B583E9 + (v11[0] << 6) + (v11[0] >> 2)) ^ v11[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re22MeshLodSelectInputDataE";
  if (("N2re22MeshLodSelectInputDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re22MeshLodSelectInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#2},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D10500;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  result = a2[7];
  a1[8] = result;
  return result;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#2},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0x100000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, v5);
  v5[0] = 0x100000001;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 24, v5);
  v5[0] = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  return re::RenderGraphBuilder::write(a2, a1 + 40, v5);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#2},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10500;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#3},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D10558;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  result = a2[7];
  a1[8] = result;
  return result;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#3},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0x100000002;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, v5);
  v5[0] = 0x100000003;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 24, v5);
  v5[0] = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  return re::RenderGraphBuilder::write(a2, a1 + 40, v5);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#3},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10558;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#4},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D105B0;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  result = a2[7];
  a1[8] = result;
  return result;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#4},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0x100000004;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, v5);
  v5[0] = 0x100000005;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 24, v5);
  v5[0] = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  return re::RenderGraphBuilder::write(a2, a1 + 40, v5);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#4},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D105B0;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#5},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D10608;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  result = a2[7];
  a1[8] = result;
  return result;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#5},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0x100000006;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, v5);
  v5[0] = 0x100000007;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 24, v5);
  v5[0] = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  return re::RenderGraphBuilder::write(a2, a1 + 40, v5);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#5},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10608;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#6},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D10660;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  a1[8] = a2[7];
  a1[9] = 0.0;
  a1[10] = NAN;
  a1[9] = a2[8];
  a1[10] = a2[9];
  a1[11] = 0.0;
  a1[12] = NAN;
  a1[11] = a2[10];
  a1[12] = a2[11];
  a1[13] = 0.0;
  a1[14] = NAN;
  a1[13] = a2[12];
  a1[14] = a2[13];
  a1[15] = 0.0;
  a1[16] = NAN;
  a1[15] = a2[14];
  a1[16] = a2[15];
  a1[17] = 0.0;
  a1[18] = NAN;
  a1[17] = a2[16];
  a1[18] = a2[17];
  a1[19] = 0.0;
  a1[20] = NAN;
  a1[19] = a2[18];
  a1[20] = a2[19];
  a1[21] = 0.0;
  a1[22] = NAN;
  a1[21] = a2[20];
  a1[22] = a2[21];
  a1[23] = 0.0;
  a1[24] = NAN;
  a1[23] = a2[22];
  a1[24] = a2[23];
  a1[25] = 0.0;
  a1[26] = NAN;
  a1[25] = a2[24];
  a1[26] = a2[25];
  a1[27] = 0.0;
  a1[28] = NAN;
  a1[27] = a2[26];
  a1[28] = a2[27];
  a1[29] = 0.0;
  a1[30] = NAN;
  a1[29] = a2[28];
  a1[30] = a2[29];
  a1[31] = 0.0;
  a1[32] = NAN;
  a1[31] = a2[30];
  a1[32] = a2[31];
  a1[33] = 0.0;
  a1[34] = NAN;
  a1[33] = a2[32];
  result = a2[33];
  a1[34] = result;
  return result;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#6},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 136, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 8, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 24, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 40, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 56, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 72, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 88, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 104, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 120, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 152, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 168, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 184, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 200, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 216, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 232, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 248, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 264, &v4);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#6},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10660;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = 0;
  a2[10] = -1;
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = 0;
  a2[12] = -1;
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = 0;
  a2[14] = -1;
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = 0;
  a2[16] = -1;
  a2[15] = a1[15];
  a2[16] = a1[16];
  a2[17] = 0;
  a2[18] = -1;
  a2[17] = a1[17];
  a2[18] = a1[18];
  a2[19] = 0;
  a2[20] = -1;
  a2[19] = a1[19];
  a2[20] = a1[20];
  a2[21] = 0;
  a2[22] = -1;
  a2[21] = a1[21];
  a2[22] = a1[22];
  a2[23] = 0;
  a2[24] = -1;
  a2[23] = a1[23];
  a2[24] = a1[24];
  a2[25] = 0;
  a2[26] = -1;
  a2[25] = a1[25];
  a2[26] = a1[26];
  a2[27] = 0;
  a2[28] = -1;
  a2[27] = a1[27];
  a2[28] = a1[28];
  a2[29] = 0;
  a2[30] = -1;
  a2[29] = a1[29];
  a2[30] = a1[30];
  a2[31] = 0;
  a2[32] = -1;
  a2[31] = a1[31];
  a2[32] = a1[32];
  a2[33] = 0;
  a2[34] = -1;
  a2[33] = a1[33];
  a2[34] = a1[34];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#2},void ()(re::RenderGraphContext &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D106B8;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  a1[8] = a2[7];
  a1[9] = 0.0;
  a1[10] = NAN;
  a1[9] = a2[8];
  a1[10] = a2[9];
  a1[11] = 0.0;
  a1[12] = NAN;
  a1[11] = a2[10];
  a1[12] = a2[11];
  a1[13] = 0.0;
  a1[14] = NAN;
  a1[13] = a2[12];
  a1[14] = a2[13];
  a1[15] = 0.0;
  a1[16] = NAN;
  a1[15] = a2[14];
  a1[16] = a2[15];
  a1[17] = 0.0;
  a1[18] = NAN;
  a1[17] = a2[16];
  a1[18] = a2[17];
  a1[19] = 0.0;
  a1[20] = NAN;
  a1[19] = a2[18];
  a1[20] = a2[19];
  a1[21] = 0.0;
  a1[22] = NAN;
  a1[21] = a2[20];
  a1[22] = a2[21];
  a1[23] = 0.0;
  a1[24] = NAN;
  a1[23] = a2[22];
  a1[24] = a2[23];
  a1[25] = 0.0;
  a1[26] = NAN;
  a1[25] = a2[24];
  a1[26] = a2[25];
  a1[27] = 0.0;
  a1[28] = NAN;
  a1[27] = a2[26];
  a1[28] = a2[27];
  a1[29] = 0.0;
  a1[30] = NAN;
  a1[29] = a2[28];
  a1[30] = a2[29];
  a1[31] = 0.0;
  a1[32] = NAN;
  a1[31] = a2[30];
  a1[32] = a2[31];
  a1[33] = 0.0;
  a1[34] = NAN;
  a1[33] = a2[32];
  result = a2[33];
  a1[34] = result;
  a1[35] = a2[34];
  return result;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#2},void ()(re::RenderGraphContext &)>::operator()(uint64_t a1, re::RenderGraphContext *a2)
{
  v4 = *(re::RenderGraphDataStore::get<re::RenderGraphSelectionParams>(*(a2 + 146), *(*(a2 + 5) + 48)) + 8);
  v5.i64[0] = -1;
  v5.i64[1] = -1;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v4, v5)))))
  {
    v6 = v4.i32[0];
    v7 = v4.u32[1];
    v8 = v4.u32[2];
    v9 = v4.u32[3];
  }

  else
  {
    v6 = *(a1 + 280) >> 1;
    v7 = *(a1 + 284) >> 1;
    v8 = 1;
    v9 = 1;
  }

  v68 = 0;
  v69 = 16 * v8;
  v70 = 0;
  v10 = v8;
  v67[0] = 0;
  v67[1] = v69;
  v67[2] = 0;
  v66[0] = 0;
  v66[1] = v69;
  v66[2] = 0;
  v65[0] = 0;
  v65[1] = v69;
  v65[2] = 0;
  v64[0] = 0;
  v64[1] = v69;
  v64[2] = 0;
  v63[0] = 0;
  v63[1] = v69;
  v63[2] = 0;
  v62[0] = 0;
  v62[1] = v69;
  v62[2] = 0;
  v61[0] = 0;
  v61[1] = v69;
  v61[2] = 0;
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(&v60, a2, 0);
  re::RenderGraphContext::metalTexture(a2, a1 + 8, 0, 0, &v59);
  v11 = v59;
  v12 = v6;
  v56 = v6;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v13 = re::RenderGraphContext::metalBuffer(a2, a1 + 152);
  re::BufferSlice::buffer(v13, v14);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v11, 0, 0, &v56, &v54, v13, &v68);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 24, 0, 0, &v59);
  v15 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v16 = re::RenderGraphContext::metalBuffer(a2, a1 + 168);
  re::BufferSlice::buffer(v16, v17);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v15, 0, 0, &v56, &v54, v16, v67);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 40, 0, 0, &v59);
  v18 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v19 = re::RenderGraphContext::metalBuffer(a2, a1 + 184);
  re::BufferSlice::buffer(v19, v20);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v18, 0, 0, &v56, &v54, v19, v66);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 56, 0, 0, &v59);
  v21 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v22 = re::RenderGraphContext::metalBuffer(a2, a1 + 200);
  re::BufferSlice::buffer(v22, v23);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v21, 0, 0, &v56, &v54, v22, v65);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 72, 0, 0, &v59);
  v24 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v25 = re::RenderGraphContext::metalBuffer(a2, a1 + 216);
  re::BufferSlice::buffer(v25, v26);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v24, 0, 0, &v56, &v54, v25, v64);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 88, 0, 0, &v59);
  v27 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v28 = re::RenderGraphContext::metalBuffer(a2, a1 + 232);
  re::BufferSlice::buffer(v28, v29);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v27, 0, 0, &v56, &v54, v28, v63);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 104, 0, 0, &v59);
  v30 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v31 = re::RenderGraphContext::metalBuffer(a2, a1 + 248);
  re::BufferSlice::buffer(v31, v32);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v30, 0, 0, &v56, &v54, v31, v62);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 120, 0, 0, &v59);
  v33 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v34 = re::RenderGraphContext::metalBuffer(a2, a1 + 264);
  re::BufferSlice::buffer(v34, v35);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v33, 0, 0, &v56, &v54, v34, v61);
  if (v59)
  {
  }

  v36 = re::RenderGraphContext::metalBuffer(a2, a1 + 136);
  re::BufferSlice::buffer(v36, v37);
  v38 = re::RenderGraphContext::metalBuffer(a2, a1 + 152);
  re::BufferSlice::buffer(v38, v39);
  v40 = re::RenderGraphContext::metalBuffer(a2, a1 + 168);
  re::BufferSlice::buffer(v40, v41);
  v42 = re::RenderGraphContext::metalBuffer(a2, a1 + 184);
  re::BufferSlice::buffer(v42, v43);
  v44 = re::RenderGraphContext::metalBuffer(a2, a1 + 200);
  re::BufferSlice::buffer(v44, v45);
  v46 = re::RenderGraphContext::metalBuffer(a2, a1 + 216);
  re::BufferSlice::buffer(v46, v47);
  v48 = re::RenderGraphContext::metalBuffer(a2, a1 + 232);
  re::BufferSlice::buffer(v48, v49);
  v50 = re::RenderGraphContext::metalBuffer(a2, a1 + 248);
  re::BufferSlice::buffer(v50, v51);
  v52 = re::RenderGraphContext::metalBuffer(a2, a1 + 264);
  re::BufferSlice::buffer(v52, v53);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#2},void ()(re::RenderGraphContext &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D106B8;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = 0;
  a2[10] = -1;
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = 0;
  a2[12] = -1;
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = 0;
  a2[14] = -1;
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = 0;
  a2[16] = -1;
  a2[15] = a1[15];
  a2[16] = a1[16];
  a2[17] = 0;
  a2[18] = -1;
  a2[17] = a1[17];
  a2[18] = a1[18];
  a2[19] = 0;
  a2[20] = -1;
  a2[19] = a1[19];
  a2[20] = a1[20];
  a2[21] = 0;
  a2[22] = -1;
  a2[21] = a1[21];
  a2[22] = a1[22];
  a2[23] = 0;
  a2[24] = -1;
  a2[23] = a1[23];
  a2[24] = a1[24];
  a2[25] = 0;
  a2[26] = -1;
  a2[25] = a1[25];
  a2[26] = a1[26];
  a2[27] = 0;
  a2[28] = -1;
  a2[27] = a1[27];
  a2[28] = a1[28];
  a2[29] = 0;
  a2[30] = -1;
  a2[29] = a1[29];
  a2[30] = a1[30];
  a2[31] = 0;
  a2[32] = -1;
  a2[31] = a1[31];
  a2[32] = a1[32];
  a2[33] = 0;
  a2[34] = -1;
  a2[33] = a1[33];
  a2[34] = a1[34];
  a2[35] = a1[35];
  return a2;
}

uint64_t std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::ecs2::SkyboxMeshID &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D10710;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::ecs2::SkyboxMeshID &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = *a4;
  v5 = "N2re16SkyboxMeshIDDataE";
  if (("N2re16SkyboxMeshIDDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re16SkyboxMeshIDDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (qword_1EE1BE9F0 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a3 + 8) + 32))(*(a3 + 8), 16, 8);
  *v9 = &unk_1F5D10790;
  v9[1] = v11;
  v12 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a3 + 64, &v13, &v12);
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::ecs2::SkyboxMeshID &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraView> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D107C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraView> &)>::operator()(uint64_t a1, re::RenderFrame *a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a4 + 16))
  {
    v5 = a3;
    v4 = a1;
    v6 = *(a4 + 32);
    if (atomic_load_explicit(&qword_1EE1BEA28, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = 0;
    memset(v29, 0, sizeof(v29));
    a2 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = 0;
    v27 = 2048;
    v28 = 0;
    _os_log_send_and_compose_impl(v16, &v20, v29, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v17 = __cxa_guard_acquire(&qword_1EE1BEA28);
  if (v17)
  {
    qword_1EE1BEA20 = re::hashString(v17, v18);
    __cxa_guard_release(&qword_1EE1BEA28);
  }

LABEL_3:
  if (*(v6 + 8))
  {
    v8 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 9);
  }

  v9 = qword_1EE1BEA20;
  v10 = 0x9E3779B97F4A7C17;
  v11 = strlen(v8);
  if (v11)
  {
    MurmurHash3_x64_128(v8, v11, 0, v29);
    v10 = ((*(&v29[0] + 1) - 0x61C8864680B583E9 + (*&v29[0] << 6) + (*&v29[0] >> 2)) ^ *&v29[0]) - 0x61C8864680B583E9;
  }

  v12 = (v9 >> 2) + (v9 << 6) + v10;
  v13 = re::RenderGraphDataStore::tryGet<re::CameraData>(v5, v12 ^ v9);
  if (v13)
  {
    if (*(v13 + 840))
    {
      *&v29[0] = &unk_1F5D10848;
      *(&v29[0] + 1) = v13;
      re::RenderGraphDataStore::add<re::CurrentSelectionData,re::CurrentSelectionData&>(v5, qword_1EE1BE9F0, v29);
      v14 = qword_1EE1BE9F0;
      v15 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(v5, v12 ^ v9);
      re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData&>(v5, v14, v15);
      re::RenderFrame::emitGraph(a2, (v4 + 8), (v4 + 18));
    }
  }
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraView> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphDataStore::add<re::CurrentSelectionData,re::CurrentSelectionData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re20CurrentSelectionDataE";
  if (("N2re20CurrentSelectionDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re20CurrentSelectionDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  v10 = *(a3 + 8);
  *v9 = &unk_1F5D10848;
  v9[1] = v10;
  v12 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v13, &v12);
}

uint64_t re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re22MeshLodSelectInputDataE";
  if (("N2re22MeshLodSelectInputDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re22MeshLodSelectInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v26 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 320, 16);
  *v9 = &unk_1F5D069E0;
  v10 = *(a3 + 32);
  v12 = *(a3 + 48);
  v11 = *(a3 + 64);
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = v10;
  *(v9 + 48) = v12;
  *(v9 + 64) = v11;
  *(v9 + 80) = *(a3 + 80);
  v14 = *(a3 + 112);
  v13 = *(a3 + 128);
  v15 = *(a3 + 96);
  *(v9 + 144) = *(a3 + 144);
  *(v9 + 112) = v14;
  *(v9 + 128) = v13;
  *(v9 + 96) = v15;
  v16 = *(a3 + 160);
  *(v9 + 160) = v16;
  if (v16 == 1)
  {
    v17 = *(a3 + 176);
    v18 = *(a3 + 192);
    v19 = *(a3 + 224);
    *(v9 + 208) = *(a3 + 208);
    *(v9 + 224) = v19;
    *(v9 + 176) = v17;
    *(v9 + 192) = v18;
  }

  v20 = *(a3 + 240);
  *(v9 + 240) = v20;
  if (v20 == 1)
  {
    v21 = *(a3 + 256);
    v22 = *(a3 + 272);
    v23 = *(a3 + 304);
    *(v9 + 288) = *(a3 + 288);
    *(v9 + 304) = v23;
    *(v9 + 256) = v21;
    *(v9 + 272) = v22;
  }

  v25 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v26, &v25);
}

__n128 std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraMultiView> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D10880;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraMultiView> &)>::operator()(uint64_t a1, re::RenderFrame *a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a4 + 16))
  {
    v5 = a3;
    v4 = a1;
    v6 = *(a4 + 32);
    if (atomic_load_explicit(&qword_1EE1BEA38, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = 0;
    memset(v29, 0, sizeof(v29));
    a2 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = 0;
    v27 = 2048;
    v28 = 0;
    _os_log_send_and_compose_impl(v16, &v20, v29, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v17 = __cxa_guard_acquire(&qword_1EE1BEA38);
  if (v17)
  {
    qword_1EE1BEA30 = re::hashString(v17, v18);
    __cxa_guard_release(&qword_1EE1BEA38);
  }

LABEL_3:
  if (*(v6 + 8))
  {
    v8 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 9);
  }

  v9 = qword_1EE1BEA30;
  v10 = 0x9E3779B97F4A7C17;
  v11 = strlen(v8);
  if (v11)
  {
    MurmurHash3_x64_128(v8, v11, 0, v29);
    v10 = ((*(&v29[0] + 1) - 0x61C8864680B583E9 + (*&v29[0] << 6) + (*&v29[0] >> 2)) ^ *&v29[0]) - 0x61C8864680B583E9;
  }

  v12 = (v9 >> 2) + (v9 << 6) + v10;
  v13 = re::RenderGraphDataStore::tryGet<re::CameraData>(v5, v12 ^ v9);
  if (v13)
  {
    if (*(v13 + 840))
    {
      *&v29[0] = &unk_1F5D10848;
      *(&v29[0] + 1) = v13;
      re::RenderGraphDataStore::add<re::CurrentSelectionData,re::CurrentSelectionData&>(v5, qword_1EE1BE9F0, v29);
      v14 = qword_1EE1BE9F0;
      v15 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(v5, v12 ^ v9);
      re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData&>(v5, v14, v15);
      re::RenderFrame::emitGraph(a2, (v4 + 8), (v4 + 18));
    }
  }
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraMultiView> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<re::SceneName,4ul>::operator[](uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v6, v7);
    __break(1u);
LABEL_8:
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v4 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v14 = 866;
    v15 = 2048;
    v16 = 0;
    v17 = 2048;
    v18 = 0;
    _os_log_send_and_compose_impl(v5, &v10, v19, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v8, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (!*(a1 + 8))
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v2 = a1 + 24;
  }

  else
  {
    v2 = *(a1 + 32);
  }

  return *v2;
}

_anonymous_namespace_ *re::DynamicArray<re::SelectionCompleteHandler>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::SelectionConcludeHandler>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void *std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t re::isBoundingBoxInsideVCAPlanes(uint64_t a1, float32x4_t *a2, uint64_t a3, int a4, _BYTE *a5, float32x4_t *a6, float32x4_t *a7, uint64_t a8, float32x4_t *a9, uint64_t a10, uint64_t a11, int a12)
{
  v17 = re::transformedAABBVertices(a1, a2, v38);
  if (a3 == a11 && a3 != 0 && a11 != 0)
  {
    if (a12 <= a4)
    {
      return 0;
    }

    goto LABEL_37;
  }

  v20 = *a5;
  if (v20 > 2)
  {
    if (v20 == 5)
    {
      v25 = *a6;
      v25.i32[3] = 1.0;
      v26 = vmulq_f32(*a7, v25);
      v27 = vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)));
      goto LABEL_36;
    }

    if (v20 == 4)
    {
      goto LABEL_23;
    }

    if (v20 != 3)
    {
LABEL_28:
      if ((atomic_exchange(re::isBoundingBoxInsideVCAPlanes(re::AABB const&,re::Matrix4x4<float> const&,unsigned long long,int,re::MeshSortingConfiguration const&,re::Vector3<float> const&,re::PlaneF const&,re::Slice<re::PlaneF>,unsigned long long,int)::__FILE____LINE___logged, 1u) & 1) == 0)
      {
        v28 = *re::graphicsLogObjects(v17);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "An unknown mesh sort point heuristic has been encountered. All unknown heuristics will default to kCentroid.", v37, 2u);
        }
      }

      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (*a5)
  {
    if (v20 != 1)
    {
      if (v20 != 2)
      {
        goto LABEL_28;
      }

LABEL_23:
      v23 = 0;
      while (1)
      {
        v24 = vmulq_f32(*a7, v38[v23]);
        if (vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL))) > 0.0)
        {
          return 0;
        }

        if (++v23 == 8)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_19:
    v21 = 0;
    while (1)
    {
      v22 = vmulq_f32(*a7, v38[v21]);
      if (vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL))) <= 0.0)
      {
        break;
      }

      if (++v21 == 8)
      {
        return 0;
      }
    }

    goto LABEL_37;
  }

LABEL_31:
  v29 = 0;
  v27 = 0.0;
  do
  {
    v30 = vmulq_f32(*a7, v38[v29]);
    v31 = vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)));
    if (v31 >= 0.0)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 2.0;
    }

    v27 = v27 + (v31 * v32);
    ++v29;
  }

  while (v29 != 8);
LABEL_36:
  if (v27 > 0.0)
  {
    return 0;
  }

LABEL_37:
  if (!a10)
  {
    return 1;
  }

  v33 = a9;
  result = 1;
  do
  {
    v35 = 0;
    while (1)
    {
      v36 = vmulq_f32(*v33, v38[v35]);
      if (vaddv_f32(vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL))) <= 0.0)
      {
        break;
      }

      if (++v35 == 8)
      {
        return 0;
      }
    }

    ++v33;
  }

  while (v33 != &a9[a10]);
  return result;
}

void re::SFBSystemShellStencilBlurMeshNode::execute(re::SFBSystemShellStencilBlurMeshNode *this, float32x4_t *a2)
{
  v7 = a2;
  *&v362 = this;
  v548 = *MEMORY[0x1E69E9840];
  v8 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(a2[73].i64[0], *(a2[2].i64[1] + 48));
  {
    return;
  }

  v7[70].i8[0] = 1;
  v7[97].i8[1] = 5;
  *&v487.var0 = 0x2476C06B76;
  v487.var1 = "VCABlur";
  v9 = &v487;
  *&v488.var0 = 5231452;
  v488.var1 = "True";
  *&v485.var0 = 0x4CB6D3AA6EABE92CLL;
  v485.var1 = "Transparent_BackCompat";
  *&v486.var0 = 5231452;
  v486.var1 = "True";
  re::StringID::StringID(v481, &v487);
  re::StringID::StringID(&v482, &v488);
  re::StringID::StringID(&v483, &v485);
  re::StringID::StringID(&v484, &v486);
  if ((atomic_load_explicit(&qword_1EE1BEB80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEB80))
  {
    qword_1EE1BEB78 = re::hashString("PlattersOnly", v242);
    __cxa_guard_release(&qword_1EE1BEB80);
  }

  if ((atomic_load_explicit(&qword_1EE1BEB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEB90))
  {
    qword_1EE1BEB88 = re::hashString("PlatterContentsOnly", v243);
    __cxa_guard_release(&qword_1EE1BEB90);
  }

  v10 = re::RenderGraphDataStore::tryGet<re::VCARenderData>(v7[73].i64[0], *(v7[2].i64[1] + 48));
  if (v10)
  {
    *(&v368 + 1) = v10;
    v11 = re::RenderGraphDataStore::get<re::CameraData>(v7[73].i64[0], *(v7[2].i64[1] + 48));
    if (*(v11 + 48))
    {
      v4 = v11;
      *v373 = v11 + 64;
      re::RenderCamera::computeLocalTransform(v508, (v11 + 64));
      v13 = vmulq_f32(v509, v509);
      *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
      *v13.f32 = vrsqrte_f32(v14);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
      v480 = vmulq_n_f32(vnegq_f32(v509), vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
      v479 = v4[4];
      v15 = *(v7->i64[0] + 32);
      v477 = &unk_1F5D10F80;
      v478 = 0;
      v16 = (*(*v15 + 32))(v15, 48, 8);
      *v16 = 0u;
      *(v16 + 16) = 0u;
      *(v16 + 32) = 0;
      _D9 = 0x7FFFFFFFLL;
      *(v16 + 36) = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v16, v15, 3);
      v478 = v16;
      if ((atomic_load_explicit(&qword_1EE1BEBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBA0))
      {
        qword_1EE1BEB98 = re::getCombinedScopeHash("RenderGraphGlobals", v244, v245);
        __cxa_guard_release(&qword_1EE1BEBA0);
      }

      v17 = re::RenderGraphDataStore::get<re::RendererGlobals>(v7[73].i64[0], qword_1EE1BEB98);
      v3 = re::RenderGraphDataStore::get<re::SceneScope>(v7[73].i64[0], *(v7[2].i64[1] + 48));
      if ((atomic_load_explicit(&qword_1EE1BEBB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBB0))
      {
        qword_1EE1BEBA8 = re::hashString("DynamicFunctionConstants", v246);
        __cxa_guard_release(&qword_1EE1BEBB0);
      }

      v18 = qword_1EE1BEBA8;
      v19 = strlen(*(v362 + 32));
      if (v19)
      {
        MurmurHash3_x64_128(*(v362 + 32), v19, 0, v508);
        v20 = ((v508[0].i64[1] - 0x61C8864680B583E9 + (v508[0].i64[0] << 6) + (v508[0].i64[0] >> 2)) ^ v508[0].i64[0]) - 0x61C8864680B583E9;
      }

      else
      {
        v20 = 0x9E3779B97F4A7C17;
      }

      v21 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(v7[73].i64[0], ((v18 >> 2) + (v18 << 6) + v20) ^ v18);
      if (v21)
      {
        v9 = (v21 + 8);
      }

      else
      {
        v9 = 0;
      }

      v22 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(v7[73].i64[0], *(v7[2].i64[1] + 48));
      v457 = &unk_1F5D069E0;
      v462 = *(v22 + 80);
      v23 = *(v22 + 96);
      v24 = *(v22 + 112);
      v25 = *(v22 + 128);
      v466 = *(v22 + 144);
      v465 = v25;
      v464 = v24;
      v463 = v23;
      v467 = *(v22 + 160);
      if (v467 == 1)
      {
        v26 = *(v22 + 176);
        v27 = *(v22 + 192);
        v28 = *(v22 + 208);
        v471 = *(v22 + 224);
        v470 = v28;
        v469 = v27;
        v468 = v26;
      }

      v472 = *(v22 + 240);
      if (v472 == 1)
      {
        v29 = *(v22 + 256);
        v30 = *(v22 + 272);
        v31 = *(v22 + 288);
        v476 = *(v22 + 304);
        v475 = v31;
        v474 = v30;
        v473 = v29;
      }

      v32 = vaddq_f32(v479, vmulq_f32(v480, vdupq_n_s32(0xC2C80000)));
      v33 = vsubq_f32(v32, vaddq_f32(v480, v479));
      v34 = vmulq_f32(v33, v33);
      v35 = vaddv_f32(*v34.f32);
      *v34.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35));
      *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35), vmul_f32(*v34.f32, *v34.f32)));
      v36 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35), vmul_f32(*v34.f32, *v34.f32))).f32[0]);
      v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      v38 = vmlaq_f32(vmulq_f32(v37, xmmword_1E30661D0), xmmword_1E30476A0, v36);
      v39 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
      v40 = vmulq_f32(v38, v38);
      *&v41 = v40.f32[1] + (v40.f32[2] + v40.f32[0]);
      *v40.f32 = vrsqrte_f32(v41);
      *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
      v42 = vmulq_n_f32(v39, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
      v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v36)), v42, v37);
      v44 = vmulq_f32(v32, v42);
      v45 = vmulq_f32(v32, vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL));
      v46 = vadd_f32(vzip1_s32(*v44.i8, *v45.i8), vzip2_s32(*v44.i8, *v45.i8));
      v47 = vextq_s8(v45, v45, 8uLL);
      *v47.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *v47.f32), v46);
      v48 = vmulq_f32(v32, v36);
      v44.i64[0] = __PAIR64__(v43.u32[0], v42.u32[1]);
      *&v49 = __PAIR64__(v43.u32[1], v42.u32[2]);
      v42.i32[1] = v43.i32[2];
      v42.i64[1] = v36.u32[0];
      v44.i64[1] = v36.u32[1];
      *(&v49 + 1) = v36.u32[2];
      v36.i64[0] = vnegq_f32(v47).u64[0];
      v36.i64[1] = __PAIR64__(1.0, -(v48.f32[2] + vaddv_f32(*v48.f32)));
      v458 = v42;
      v459 = v44;
      v460 = v49;
      v461 = v36;
      *&v359 = v15;
      re::CameraMatrices::CameraMatrices(v537, v15, v4[55].u8[10]);
      if (!v4[55].i8[10])
      {
LABEL_28:
        v452[0] = v7;
        v452[1] = v4;
        v452[2] = v537;
        v452[3] = v3;
        v452[4] = v17;
        v452[5] = &v477;
        v452[6] = &v457;
        v452[7] = 0;
        v453 = 1;
        v454 = 1;
        v455 = 0;
        v456 = v9;
        re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(v452, v51, v52, v53, v54, v55);
        v65.i64[0] = 0x7F0000007FLL;
        v65.i64[1] = 0x7F0000007FLL;
        v7[4] = vnegq_f32(v65);
        v7[5] = v65;
        *(&v359 + 1) = v7;
        *&v368 = re::MeshPassInfoData::getMeshPartBucket(&v477, qword_1EE1BEB78);
        MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(&v477, qword_1EE1BEB88);
        v449 = 0;
        v450 = 0;
        re::rendergraph_helper::getOcclusionMeshPasses(v508);
        re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v477, &v449, v508);
        v446 = 0;
        v447 = 0;
        re::rendergraph_helper::getOpaqueMeshPasses(v508);
        re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v477, &v446, v508);
        v443 = 0;
        v444 = 0;
        re::rendergraph_helper::getTransparentMeshPasses(v508);
        for (i = 0; i != 14; i += 2)
        {
          v68 = v508[i].u64[1];
          v69 = v508[i + 1].i8[0];
          v70 = v508[i + 1].i8[1];
          v71 = v508[i + 1].i8[2];
          v402.i32[0] = *(v508[i + 1].i32 + 3);
          v402.i8[4] = v508[i + 1].i8[7];
          v72 = v508[i + 1].i8[8];
          v73 = re::MeshPassInfoData::getMeshPartBucket(&v477, v68);
          if (v73)
          {
            v528 = v73;
            LOBYTE(v529) = 1;
            *(&v529 + 1) = v402.i32[0];
            BYTE5(v529) = v402.i8[4];
            BYTE6(v529) = v69;
            HIBYTE(v529) = v70;
            LOBYTE(v530) = v71;
            BYTE1(v530) = v72;
            BYTE2(v530) = 1;
            re::DynamicInlineArray<re::FilteredMeshPass,10ul>::add(&v443, &v528);
          }
        }

        LODWORD(v2) = v443;
        if (MeshPartBucket)
        {
          v508[0].i64[0] = MeshPartBucket;
          v508[0].i8[8] = 1;
          v508[0].i8[13] = 3;
          *(&v508[0].i32[2] + 1) = 50529027;
          *(&v508[0].i32[3] + 2) = 65280;
          v508[1].i8[2] = 1;
          re::DynamicInlineArray<re::FilteredMeshPass,10ul>::add(&v443, v508);
        }

        v442 = 0;
        v440 = 0;
        v439[0] = 0;
        v439[1] = 0;
        v441 = 0;
        v436 = 0;
        v437 = 0;
        v7 = *(&v359 + 1);
        RenderGraphDataPipe = re::RenderGraphDataStore::tryGet<re::SceneScope>(*(*(&v359 + 1) + 1168), *(*(*(&v359 + 1) + 40) + 48));
        if (RenderGraphDataPipe)
        {
          v5 = v359;
          if (*(RenderGraphDataPipe + 16))
          {
            v75 = *(RenderGraphDataPipe + 3);
          }

          else
          {
            v75 = RenderGraphDataPipe + 17;
          }

          v76 = strlen(v75);
          if (v76)
          {
            MurmurHash3_x64_128(v75, v76, 0, v508);
            v76 = ((v508[0].i64[1] - 0x61C8864680B583E9 + (v508[0].i64[0] << 6) + (v508[0].i64[0] >> 2)) ^ v508[0].i64[0]);
          }

          v9 = v368;
          RenderGraphDataPipe = re::RenderGraphContext::tryGetRenderGraphDataPipe(*(&v359 + 1), v76);
          if (RenderGraphDataPipe)
          {
            RenderGraphDataPipe = (*(*RenderGraphDataPipe + 832))(RenderGraphDataPipe);
            *(&v362 + 1) = RenderGraphDataPipe;
          }

          else
          {
            *(&v362 + 1) = 0;
          }
        }

        else
        {
          *(&v362 + 1) = 0;
          v5 = v359;
          v9 = v368;
        }

        v3 = (*(&v359 + 1) + 1352);
        if (!*(*(&v359 + 1) + 1352))
        {
          v77 = 0;
          if (!v9)
          {
            goto LABEL_52;
          }

          goto LABEL_46;
        }

LABEL_51:
        RenderGraphDataPipe = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v3, *(v362 + 16), "BlurPlatterMeshDraw");
        v77 = RenderGraphDataPipe;
        if (!v9)
        {
LABEL_52:
          if (!*(*(&v362 + 1) + 40))
          {
LABEL_61:
            if (v440)
            {
              memset(v435, 0, sizeof(v435));
              re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v7, v435);
              v81 = *(v7->i64[1] + 72);
              if (v81)
              {
                re::VFXManager::beginFrame(v81, *(v7->i64[0] + 40) & 0xFFFFFFFFFFFFFFFLL);
              }

              v528 = v5;
              LODWORD(v529) = 0;
              v530 = 0;
              v531 = 0;
              v535 = 0;
              memset(v534, 0, sizeof(v534));
              v536 = 0x7FFFFFFFLL;
              v82 = (*(*v5 + 32))(v5, 328, 8);
              v83 = re::DrawTable::DrawTable(v82, v5, (v440 + 127) >> 7);
              v489.i32[0] = 0;
              v489.i64[1] = v83;
              v490 = *(&v368 + 1);
              v491 = &v528;
              v84 = (v83 + 280);
              if (*(v82 + 320) != 1)
              {
                (**v84)(v84);
              }

              *(v82 + 280) = &unk_1F5D110F8;
              *(v82 + 288) = &v489;
              *(v82 + 320) = 0;
              v395 = v438;
              v396 = v436;
              v429[0] = 0;
              v429[20] = 0;
              v433 = 0;
              v434 = 0;
              v431 = 0;
              v430 = 0;
              v432 = 0;
              DrawCallsFromMeshParts = re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v395, v442, v440, v7, v82, v541, v537, 0, v77, v429);
              if (*(v82 + 40))
              {
                re::DrawTableSlice::DrawTableSlice(v508, v82);
                v91 = 0;
                v402.i64[0] = "StencilBlurSetStencil";
                v402.i64[1] = v508;
                v403 = v539;
                v404 = v543;
                v405 = 0;
                v406[0] = v547;
                *&v406[1] = 2;
                *&v406[4] = 256;
                *&v406[6] = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kWriteStInfo;
                v407 = 0;
                v408 = 0;
                if (*v3)
                {
                  v91 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v3, *(v362 + 16), "StencilBlurSetStencil");
                }

                v409 = v91;
                v410 = 0;
                DrawCallsFromMeshParts = re::RenderGraphContext::encodeDrawCalls(v7, v435, &v402, v86, v87, v88, v89, v90, v253, v268, v280, v284, v288, v292, v296, v299, v303, v306, v310, v313, v316, v319, v323, v326, v329, *(&v329 + 1), v334, *(&v334 + 1), v339, *(&v339 + 1), v344, v347, v350, v354, v357, v359, *(&v359 + 1), v362, v365, v368, v373[0], SBYTE1(v373[0]), SBYTE2(v373[0]), SHIBYTE(v373[0]), v373[1], *&v373[2], v388, v389, *(&v389 + 1), v390, *(&v390 + 1), v391, *(&v391 + 1), v392, v393, v394, v395, v396, v397, v398, v399, v400, v401);
              }

              v526 = re::globalAllocators(DrawCallsFromMeshParts)[2];
              v525[0] = &unk_1F5D11028;
              v525[1] = *(&v368 + 1);
              v525[2] = &v528;
              v527 = v525;
              v320 = v3;
              HIDWORD(v310) = v2;
              *&v368 = v438;
              if (*v3)
              {
                goto LABEL_309;
              }

              v92 = 0;
              v93 = 0;
              v94 = 0;
              while (2)
              {
                v95 = v449;
                memset(v508, 0, 24);
                v96 = &v487;
                v508[1].i64[1] = &v487;
                v97 = v508;
                v509.i64[0] = 1;
                v511 = v526;
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(&v509.i64[1], v525);
                LOWORD(v512) = 0;
                BYTE4(v512) = 0;
                LOWORD(v513) = 0;
                v98 = v95;
                v99 = *(&v359 + 1);
                v7 = v359;
                re::RenderGraphMeshNodeBase::sortMeshParts(1, v451, v98, *(&v359 + 1), v94, v508, v359, &v426, v253, v268, SHIDWORD(v268), v280, v284, v288, v292, v296, v299, v303, v306, v310, v313, v316, v320, v323, v326, v329, SDWORD2(v329), v334, *(&v334 + 1), v339, *(&v339 + 1), v344, v347, v451, v354, v357, v359, v362, v365, v368, *(&v368 + 1), v373[0], v373[1], SBYTE1(v373[1]), SBYTE2(v373[1]), SHIBYTE(v373[1]), v373[2], v373[3], v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, SWORD4(v394), v395, v396, v397, v398, v399);
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v509.i64[1]);
                v100 = v448;
                v101 = v446;
                memset(v508, 0, 24);
                v508[1].i64[1] = &v487;
                v509.i64[0] = 1;
                v511 = v526;
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(&v509.i64[1], v525);
                LOWORD(v512) = 0;
                BYTE4(v512) = 0;
                LOWORD(v513) = 0;
                re::RenderGraphMeshNodeBase::sortMeshParts(1, v448, v101, v99, v93, v508, v7, &v423, v254, v269, v278, v281, v285, v289, v293, v297, v300, v304, v307, v311, v314, v317, v321, v324, v327, v330, v332, v335, v337, v340, v342, v345, v348, v351, v355, v448, v360, v363, v366, v369, v371, v374, v376, v378, v380, v382, v384, v386, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, SWORD4(v394), v395, v396, v397, v398, v399);
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v509.i64[1]);
                v102 = v445;
                v103 = v443;
                memset(v508, 0, 24);
                v508[1].i64[1] = v481;
                v509.i64[0] = 2;
                v511 = v526;
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(&v509.i64[1], v525);
                LOWORD(v512) = 768;
                BYTE4(v512) = 0;
                LOWORD(v513) = 0;
                re::RenderGraphMeshNodeBase::sortMeshParts(2, v445, v103, v99, v92, v508, v7, &v420, v255, v270, v279, v282, v286, v290, v294, v298, v301, v305, v308, v312, v315, v318, v322, v325, v328, v331, v333, v336, v338, v341, v343, v346, v349, v352, v356, v358, v361, v364, v367, v370, v372, v375, v377, v379, v381, v383, v385, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, SWORD4(v394), v395, v396, v397, v398, v399);
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v509.i64[1]);
                v303 = v445;
                if (v440)
                {
                  v105 = v442 + 12 * v440;
                  if (v436 <= *(v105 - 8))
                  {
                    v291 = *(v105 - 8);
                    v295 = v436;
                    v283 = "operator[]";
                    v287 = 381;
                    re::internal::assertLog(6, v104, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size");
                    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v262, v277);
                    __break(1u);
LABEL_312:
                    v152 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v97, *(v362 + 16), "Occlusion");
                    goto LABEL_145;
                  }

                  v354 = *re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(v368 + 24 * *(v105 - 8)), *(v105 - 12));
                }

                else
                {
                  v354 = 0;
                }

                v419 = 0;
                v417 = 0;
                v418 = 0;
                v416 = 0;
                v415 = v7;
                re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v415, 0);
                ++v418;
                LOWORD(v388) = 0;
                re::buildCullingFrustum(*v373, v4[9].i32, v4[55].u8[10], &v388, v508, v107, v108);
                v402.i64[0] = 0;
                v402.i32[2] = 0;
                re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::copy(&v402, v508);
                if (!*(&v362 + 1))
                {
                  goto LABEL_125;
                }

                *&v365 = *(*(&v362 + 1) + 40);
                if (!v365)
                {
                  goto LABEL_125;
                }

                v110 = 0;
                *&v368 = *(&v368 + 1) + 32;
                do
                {
                  *(&v365 + 1) = v110;
                  v111 = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](*(&v362 + 1), v110);
                  v113 = *(v111 + 6972);
                  if (!v113)
                  {
                    v114 = (v111 + 32);
                    *v373 = v111 + 32 + 864 * *(v111 + 16);
                    goto LABEL_89;
                  }

                  v114 = (v111 + 6944);
                  v100 = *(v111 + 6976);
                  if (v100)
                  {
                    v93 = 0;
                    v115 = *(v111 + 6960);
                    while ((*v115 & 0x80000000) == 0)
                    {
                      v115 += 216;
                      if (v100 == ++v93)
                      {
                        LODWORD(v93) = *(v111 + 6976);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v93) = 0;
                  }

                  *v373 = v111 + 6944;
                  while (1)
                  {
LABEL_89:
                    if (v113)
                    {
                      if (v100 == v93)
                      {
                        break;
                      }

                      v116 = (v114[1].i64[0] + 864 * v93 + 16);
                      goto LABEL_94;
                    }

                    if (v114 == *v373)
                    {
                      break;
                    }

                    v116 = v114 + 1;
                    if (v116[45].i8[0] != 1)
                    {
                      goto LABEL_102;
                    }

                    re::MeshScene::meshSceneBoundingBox(&v116[2], v112, &v489);
                    if (!re::isBoundingBoxInsidePlanesArray(&v489, &v402, v116 + 10))
                    {
                      goto LABEL_102;
                    }

LABEL_94:
                    v118 = *(&v368 + 1) + 32;
                    if ((*(*(&v368 + 1) + 24) & 1) == 0)
                    {
                      v118 = *(*(&v368 + 1) + 40);
                    }

                    v119 = v118 + 40 * *(*(&v368 + 1) + 16);
                    v120 = *(v119 - 24);
                    if (v120)
                    {
                      v121 = *(v119 - 8);
                      v122 = 112 * v120;
                      v123 = v121 + 6;
                      v124 = v121 + 2;
                      while (!re::isBoundingBoxInsideVCAPlanes(&v489, v116 + 10, 0, 0, &v116[29].i8[8], v116 + 30, v123, v117, v124, 4, v123[-6].i64[1], v123[-5].i32[0]))
                      {
                        v123 += 7;
                        v124 += 7;
                        v122 -= 112;
                        if (!v122)
                        {
                          goto LABEL_102;
                        }
                      }

                      LOBYTE(v395) = 0;
                      v109.n128_f32[0] = re::RenderGraphMeshNodeBase::computeSortDistance(&v489, v116 + 10, &v116[29].i8[8], v116 + 30, &v479, &v480, 0, &v395, v109.n128_f64[0], v125, v126, v127, v128, v129);
                      v134 = v109.n128_u32[0];
                      v135 = v417 + 1;
                      if (v417 >= v416 && v416 < v135)
                      {
                        if (v415)
                        {
                          v139 = 8;
                          if (v416)
                          {
                            v139 = 2 * v416;
                          }

                          if (v139 <= v135)
                          {
                            v140 = v417 + 1;
                          }

                          else
                          {
                            v140 = v139;
                          }

                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v415, v140);
                        }

                        else
                        {
                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v415, v135);
                          ++v418;
                        }
                      }

                      v137 = v417;
                      v138 = v419 + 16 * v417;
                      *v138 = v134;
                      *(v138 + 8) = v116;
                      v417 = v137 + 1;
                      ++v418;
                      if (v113)
                      {
                        goto LABEL_103;
                      }

LABEL_115:
                      v114 += 54;
                    }

                    else
                    {
LABEL_102:
                      if (!v113)
                      {
                        goto LABEL_115;
                      }

LABEL_103:
                      v130 = v93 + 1;
                      if (v114[2].i32[0] <= (v93 + 1))
                      {
                        LODWORD(v93) = v93 + 1;
                      }

                      else
                      {
                        LODWORD(v93) = v114[2].i32[0];
                      }

                      while (v93 != v130)
                      {
                        v131 = v130;
                        v132 = *(v114[1].i64[0] + 864 * v130++);
                        if (v132 < 0)
                        {
                          LODWORD(v93) = v131;
                          goto LABEL_89;
                        }
                      }
                    }
                  }

                  v110 = *(&v365 + 1) + 1;
                }

                while (*(&v365 + 1) + 1 != v365);
LABEL_125:
                v141 = 126 - 2 * __clz(v417);
                if (v417)
                {
                  v142 = v141;
                }

                else
                {
                  v142 = 0;
                }

                std::__introsort<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,false>(v419, (v419 + 16 * v417), v142, 1, v109);
                if (v402.i64[0])
                {
                  v143 = &v402 + 7 * v402.i64[0] + 1;
                  v144 = &v403;
                  do
                  {
                    *v144 = 0;
                    ++*(v144 + 2);
                    v144 += 14;
                  }

                  while (v144 != v143);
                }

                v7 = *(&v359 + 1);
                v97 = v320;
                v102 = &v402;
                if (*(&v518 + 1))
                {
                  v145 = &v521 + 18 * *(&v518 + 1);
                  v146 = &v521;
                  do
                  {
                    *v146 = 0;
                    ++*(v146 + 2);
                    v146 += 18;
                  }

                  while (v146 != v145);
                }

                v96 = v359;
                if (v508[0].i64[0])
                {
                  v147 = &v508[7 * v508[0].i64[0] + 1];
                  v148 = &v508[1];
                  do
                  {
                    v148->i64[0] = 0;
                    ++v148->i32[2];
                    v148 += 7;
                  }

                  while (v148 != v147);
                }

                v149 = v421;
                if (v421 <= v427)
                {
                  v149 = v427;
                }

                if (v424 <= v149)
                {
                  v150 = v149;
                }

                else
                {
                  v150 = v424;
                }

                v99 = (*(*v359 + 32))(v359, 328, 8);
                v151 = re::DrawTable::DrawTable(v99, v359, (v150 + 127) >> 7);
                v506[0] = &unk_1F5D11160;
                v506[1] = *(&v368 + 1);
                v506[2] = v151;
                v506[3] = &v528;
                v507 = 0;
                if (!v427)
                {
                  goto LABEL_147;
                }

                re::DrawTable::clearAll(v99);
                re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=((v99 + 280), v506);
                if (*v320)
                {
                  goto LABEL_312;
                }

                v152 = 0;
LABEL_145:
                v508[0].i64[0] = v353;
                v508[0].i64[1] = v449;
                LOBYTE(v395) = 0;
                BYTE4(v397) = 0;
                HIDWORD(v400) = 0;
                BYTE8(v401) = 0;
                v399 = 0uLL;
                LOBYTE(v400) = 0;
                re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v508, v428, v427, v7, v99, v541, v537, 0, v152, &v395);
                if (*(v99 + 40))
                {
                  re::DrawTableSlice::DrawTableSlice(v508, v99);
                  v402.i64[0] = "Occlusion";
                  v402.i64[1] = v508;
                  v403 = v539;
                  v404 = v543;
                  v405 = 0;
                  v406[0] = v547;
                  *(&v102[2].i16[4] + 1) = 2;
                  *&v406[4] = 256;
                  *(&v102[2] + 14) = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kReadStInfo;
                  v407 = 0;
                  v408 = 0;
                  v409 = v152;
                  v410 = 0;
                  re::RenderGraphContext::encodeDrawCalls(v7, v435, &v402, v153, v154, v155, v156, v157, v256, v271, v283, v287, v291, v295, v296, v302, v445, v309, v310, v313, v316, v320, v323, v326, v329, *(&v329 + 1), v334, *(&v334 + 1), v339, *(&v339 + 1), v344, v347, v353, v354, v357, v359, *(&v359 + 1), v362, v365, v368, v373[0], SBYTE1(v373[0]), SBYTE2(v373[0]), SHIBYTE(v373[0]), v373[1], *&v373[2], v388, v389, *(&v389 + 1), v390, *(&v390 + 1), v391, *(&v391 + 1), v392, v393, v394, v395, v396, v397, v398, v399, v400, v401);
                }

LABEL_147:
                if (v424)
                {
                  re::DrawTable::clearAll(v99);
                  re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=((v99 + 280), v506);
                  v158 = *v97 ? re::DrawCallRecorder::allocateDrawCallRecorderGroup(v97, *(v362 + 16), "Opaque") : 0;
                  v508[0].i64[0] = v357;
                  v508[0].i64[1] = v446;
                  LOBYTE(v388) = 0;
                  BYTE4(v389) = 0;
                  DWORD1(v391) = 0;
                  LOBYTE(v392) = 0;
                  v390 = 0uLL;
                  LOBYTE(v391) = 0;
                  re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v508, v425, v424, v7, v99, v541, v537, 0, v158, &v388);
                  if (*(v99 + 40))
                  {
                    re::DrawTableSlice::DrawTableSlice(v508, v99);
                    v402.i64[0] = "Opaque";
                    v402.i64[1] = v508;
                    v403 = v539;
                    v404 = v543;
                    v405 = 0;
                    v406[0] = v547;
                    *(&v102[2].i16[4] + 1) = 2;
                    *&v406[4] = 256;
                    *(&v102[2] + 14) = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kReadStInfo;
                    v407 = 0;
                    v408 = 0;
                    v409 = v158;
                    v410 = 0;
                    re::RenderGraphContext::encodeDrawCalls(v7, v435, &v402, v159, v160, v161, v162, v163, v257, v272, v283, v287, v291, v295, v296, v302, v303, v309, v310, v313, v316, v320, v323, v326, v329, *(&v329 + 1), v334, *(&v334 + 1), v339, *(&v339 + 1), v344, v347, v353, v354, v357, v359, *(&v359 + 1), v362, v365, v368, v373[0], SBYTE1(v373[0]), SBYTE2(v373[0]), SHIBYTE(v373[0]), v373[1], *&v373[2], v388, v389, *(&v389 + 1), v390, *(&v390 + 1), v391, *(&v391 + 1), v392, v393, v394, v395, v396, v397, v398, v399, v400, v401);
                  }
                }

                v306 = v99;
                v402.i64[0] = v96;
                v402.i32[2] = 0;
                v403 = 0;
                LODWORD(v404) = 0;
                v411 = 0u;
                v412 = 0u;
                v413 = 0;
                *(v102[12].i64 + 4) = _D9;
                if ((atomic_load_explicit(&qword_1EE1BEBE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBE0))
                {
                  qword_1EE1BEBD8 = re::hashString("PlattersOnly", v247);
                  __cxa_guard_release(&qword_1EE1BEBE0);
                }

                v299 = *(*(&v362 + 1) + 40);
                if (v299)
                {
                  v164 = 0;
                  v313 = &v492;
                  v4 = &v405;
                  v344 = xmmword_1E3047670;
                  v339 = xmmword_1E3047680;
                  v334 = xmmword_1E30476A0;
                  v329 = xmmword_1E30474D0;
                  *v373 = xmmword_1E304F3C0;
                  __asm { FMOV            V9.2S, #1.0 }

                  v353 = 10854;
                  *&v365 = &v405;
LABEL_155:
                  v168 = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](*(&v362 + 1), v164);
                  v170 = *(v168 + 6972);
                  if (v170)
                  {
                    v171 = (v168 + 6944);
                    v172 = *(v168 + 6976);
                    if (v172)
                    {
                      v173 = 0;
                      v174 = *(v168 + 6960);
                      while ((*v174 & 0x80000000) == 0)
                      {
                        v174 += 216;
                        if (v172 == ++v173)
                        {
                          v173 = *(v168 + 6976);
                          break;
                        }
                      }
                    }

                    else
                    {
                      v173 = 0;
                    }

                    v316 = v168 + 6944;
                  }

                  else
                  {
                    v171 = (v168 + 32);
                    v316 = v168 + 32 + 864 * *(v168 + 16);
                    v172 = v353;
                    v173 = v102;
                  }

                  v323 = v164;
                  v353 = v172;
                  HIDWORD(v326) = *(v168 + 6972);
                  while (1)
                  {
                    *&v359 = v171;
                    if (v170)
                    {
                      if (v172 == v173)
                      {
                        goto LABEL_224;
                      }

                      v175 = v171[2] + 864 * v173;
                      v171 = (v175 + 8);
                      v176 = (v175 + 16);
                    }

                    else
                    {
                      if (v171 == v316)
                      {
LABEL_224:
                        v102 = v173;
                        if (++v164 == v299)
                        {
                          goto LABEL_225;
                        }

                        goto LABEL_155;
                      }

                      v176 = v171 + 2;
                    }

                    v357 = v173;
                    v177 = v176[28];
                    v178 = v176[29];
                    v489.i64[0] = (v176 + 4);
                    v179 = v176[18];
                    v489.i64[1] = *v179;
                    v180 = v176[5];
                    v490 = v179[1];
                    v492 = 0;
                    *v493 = v180;
                    *&v493[8] = xmmword_1E3047670;
                    v494 = xmmword_1E3047680;
                    v495 = xmmword_1E30476A0;
                    v496 = xmmword_1E30474D0;
                    v497 = 0;
                    v498 = 0;
                    if (!v176[11])
                    {
                      break;
                    }

                    v499 = *(v176 + 5);
                    *(&v365 + 1) = *(&v499 + 1);
                    if (*(&v499 + 1))
                    {
                      goto LABEL_174;
                    }

LABEL_214:
                    v170 = HIDWORD(v326);
                    if (HIDWORD(v326))
                    {
                      v171 = v359;
                      v205 = *(v359 + 32);
                      v206 = v357 + 1;
                      if (v205 <= v357 + 1)
                      {
                        v173 = (v357 + 1);
                      }

                      else
                      {
                        v173 = v205;
                      }

                      v7 = *(&v359 + 1);
                      v164 = v323;
                      while (v173 != v206)
                      {
                        v207 = v206;
                        v208 = *(*(v359 + 16) + 864 * v206++);
                        if (v208 < 0)
                        {
                          v173 = v207;
                          break;
                        }
                      }

                      LODWORD(v172) = v353;
                    }

                    else
                    {
                      v7 = *(&v359 + 1);
                      v171 = (v359 + 864);
                      v164 = v323;
                      LODWORD(v172) = v353;
                      v173 = v357;
                    }
                  }

                  *&v499 = &v492;
                  *(&v499 + 1) = 1;
                  *(&v365 + 1) = 1;
LABEL_174:
                  v181 = 0;
                  while (1)
                  {
                    v500 = &v489;
                    *&v368 = v181;
                    v501 = v181;
                    v182 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(&v500, v169);
                    v184 = v182[1];
                    v185 = v184 >= *v182;
                    v186 = v184 - *v182;
                    v3 = v185 ? v186 : 0;
                    if (v186 != 0 && v185)
                    {
                      break;
                    }

LABEL_213:
                    re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(&v500, v183);
                    v181 = v368 + 1;
                    if (v368 + 1 == *(&v365 + 1))
                    {
                      goto LABEL_214;
                    }
                  }

                  v187 = 0;
LABEL_181:
                  v188 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(&v500, v187);
                  v515 = 0;
                  v516 = 0;
                  v517 = 0;
                  memset(v508, 0, sizeof(v508));
                  v509 = 0u;
                  v510[0] = 0;
                  *&v510[8] = 0u;
                  v511 = 0u;
                  v512 = 0u;
                  v513 = 0u;
                  memset(v514, 0, 74);
                  v518 = xmmword_1E304F3C0;
                  v519 = 0;
                  v520 = 10854;
                  v521 = _D9;
                  v522 = 0;
                  v523 = 0;
                  v524 = 0;
                  if (v178 <= v188)
                  {
                    re::internal::assertLog(6, v189, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v188, v178);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v259, v274);
                    __break(1u);
LABEL_307:
                    re::internal::assertLog(6, v192, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v260, v275);
                    __break(1u);
LABEL_308:
                    v288 = -1;
                    v292 = 0;
                    v280 = "operator[]";
                    v284 = 381;
                    re::internal::assertLog(6, v196, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size");
                    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v261, v276);
                    __break(1u);
LABEL_309:
                    v94 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v3, *(v362 + 16), "Occlusion");
                    if (*v3)
                    {
                      v93 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v320, *(v362 + 16), "Opaque");
                      if (*v320)
                      {
                        v92 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v320, *(v362 + 16), "Transparent");
                      }

                      else
                      {
                        v92 = 0;
                      }
                    }

                    else
                    {
                      v92 = 0;
                      v93 = 0;
                    }

                    continue;
                  }

                  v190 = v176[47];
                  *&v510[8] = *(v177 + 8 * v188);
                  *&v512 = v190;
                  v191 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v508, qword_1EE1BEBD8);
                  if (!v192)
                  {
                    goto LABEL_307;
                  }

                  if (*v191 != -1)
                  {
                    if (HIDWORD(v412))
                    {
                      goto LABEL_185;
                    }

                    if (v403)
                    {
                      v193 = 8 * v403;
                      v194 = &v405;
                      while (*v194 != *v171)
                      {
                        ++v194;
                        v193 -= 8;
                        if (!v193)
                        {
                          v194 = &v406[8 * v403 - 8];
                          break;
                        }
                      }

                      if (v194 == &v406[8 * v403 - 8])
                      {
                        if (v403 <= 0xF)
                        {
                          goto LABEL_193;
                        }

                        v198 = v402.i64[0];
                        if (!v402.i64[0])
                        {
                        }

                        if (!v411)
                        {
                          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v411, v198, 32);
                        }

                        if (v403)
                        {
                          v199 = &v405;
                          v200 = &v406[8 * v403 - 8];
                          do
                          {
                            v201 = 0xBF58476D1CE4E5B9 * (*v199 ^ (*v199 >> 30));
                            v202 = (0x94D049BB133111EBLL * (v201 ^ (v201 >> 27))) ^ ((0x94D049BB133111EBLL * (v201 ^ (v201 >> 27))) >> 31);
                            if (DWORD2(v412))
                            {
                              v203 = v202 % DWORD2(v412);
                              v204 = *(*(&v411 + 1) + 4 * v203);
                              if (v204 != 0x7FFFFFFF)
                              {
                                while (*(v412 + 16 * v204 + 8) != *v199)
                                {
                                  v204 = *(v412 + 16 * v204) & 0x7FFFFFFF;
                                  if (v204 == 0x7FFFFFFF)
                                  {
                                    goto LABEL_210;
                                  }
                                }

                                goto LABEL_211;
                              }
                            }

                            else
                            {
                              LODWORD(v203) = 0;
                            }

LABEL_210:
                            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(&v411, v203, v202, v199, v199);
                            ++v414;
LABEL_211:
                            ++v199;
                          }

                          while (v199 != v200);
                        }

                        v403 = 0;
                        LODWORD(v404) = v404 + 1;
                        v4 = &v405;
LABEL_185:
                        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(&v411, v171);
                      }
                    }

                    else
                    {
LABEL_193:
                      v195 = re::DynamicInlineArray<unsigned long long,16ul>::ensureCapacity(&v403, v192);
                      v197 = v403;
                      if (v195)
                      {
                        *&v406[8 * v403 - 8] = *v171;
                        v403 = ++v197;
                        LODWORD(v404) = v404 + 1;
                      }

                      if (!v197)
                      {
                        goto LABEL_308;
                      }
                    }
                  }

                  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v514[8]);
                  if (++v187 >= v3)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_181;
                }

                break;
              }

LABEL_225:
              v209 = v417;
              v210 = v354;
              if (v417)
              {
                v211 = 0;
                *&v368 = &v405;
                v212 = v419;
                *v373 = *(&v368 + 1) + 32;
                do
                {
                  v213 = *(v212 + 16 * v211 + 8);
                  v215 = &v213[1];
                  v214 = v213[1].u64[0];
                  if (v214 != v210)
                  {
                    if (!v216 || (v218 = *v216 + 1, *v216 == 0xFE))
                    {
                      re::MeshScene::meshSceneBoundingBox(&v213[2], v217, v508);
                      v220 = *(&v368 + 1) + 32;
                      if ((*(*(&v368 + 1) + 24) & 1) == 0)
                      {
                        v220 = *(*(&v368 + 1) + 40);
                      }

                      v221 = v220 + 40 * *(*(&v368 + 1) + 16);
                      v222 = *(v221 - 24);
                      if (v222)
                      {
                        v223 = *(v221 - 8);
                        v224 = v223 + 6;
                        v225 = 112 * v222;
                        v226 = v223 + 2;
                        v218 = -1;
                        do
                        {
                          if (re::isBoundingBoxInsideVCAPlanes(v508, v213 + 10, 0, 0, &v213[29].i8[8], v213 + 30, v224, v219, v226, 4, v224[-6].i64[1], v224[-5].i32[0]))
                          {
                            if (v227)
                            {
                              if (v218 >= *v227)
                              {
                                v218 = *v227;
                              }
                            }
                          }

                          v224 += 7;
                          v226 += 7;
                          v225 -= 112;
                        }

                        while (v225);
                      }

                      else
                      {
                        v218 = -1;
                      }

                      v210 = v354;
                    }

                    if (HIDWORD(v412))
                    {
                      v228 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(&v411, v215);
                    }

                    else
                    {
                      if (v403)
                      {
                        v229 = 8 * v403;
                        v230 = &v405;
                        while (*v230 != *v215)
                        {
                          ++v230;
                          v229 -= 8;
                          if (!v229)
                          {
                            goto LABEL_248;
                          }
                        }
                      }

                      else
                      {
LABEL_248:
                        v230 = &v406[8 * v403 - 8];
                      }

                      v228 = v230 != &v406[8 * v403 - 8];
                    }

                    v508[0].i16[0] = 1;
                    v508[0].i8[2] = 0;
                    v508[0].i8[3] = v228;
                    v508[0].i32[1] = 65537;
                    v231 = *(v362 + 24);
                    v508[0].i64[1] = *(v362 + 16);
                    v508[1].i64[0] = 0;
                    v508[1].i8[8] = 0;
                    v508[1].i8[10] = 127;
                    v508[1].i8[11] = v218;
                    v7 = *(&v359 + 1);
                    re::StencilPtInjectionNode::executeForPortal(v213, *(&v359 + 1), v508[0].i64[1], v231, *(v362 + 32), v508);
                  }

                  ++v211;
                }

                while (v211 != v209);
              }

              if (v411)
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&v411);
              }

              LODWORD(v404) = v404 + 1;
              v403 = 0;
              v402.i64[0] = 0;
              v232.n128_f64[0] = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&v411);
              if (v421)
              {
                re::DrawTable::clearAll(v306);
                v500 = &unk_1F5D111B8;
                v501 = *(&v368 + 1);
                v502 = &v528;
                v503 = v306;
                v504 = BYTE4(v310);
                v505 = 0;
                re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=(v306 + 280, &v500);
                if (*v320)
                {
                  v233 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v320, *(v362 + 16), "Transparent");
                }

                else
                {
                  v233 = 0;
                }

                v508[0].i64[0] = v303;
                v508[0].i64[1] = v443;
                v402.i8[0] = 0;
                BYTE4(v403) = 0;
                *&v406[12] = 0;
                LOBYTE(v409) = 0;
                *v406 = 0;
                v405 = 0;
                v406[8] = 0;
                re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v508, v422, v421, v7, v306, v541, v537, 0, v233, &v402);
                if (*(v306 + 5))
                {
                  re::DrawTableSlice::DrawTableSlice(v508, v306);
                  v489.i64[0] = "Transparent";
                  v489.i64[1] = v508;
                  v490 = v539;
                  v491 = v543;
                  v492 = 0;
                  v493[0] = v547;
                  *&v493[1] = 2;
                  *&v493[4] = 256;
                  *&v493[6] = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kReadStInfo;
                  *&v493[22] = 0;
                  *&v494 = v233;
                  BYTE8(v494) = 0;
                  re::RenderGraphContext::encodeDrawCalls(v7, v435, &v489, v234, v235, v236, v237, v238, v258, v273, v283, v287, v291, v295, v296, v299, v303, v306, v310, v313, v316, v320, v323, v326, v329, *(&v329 + 1), v334, *(&v334 + 1), v339, *(&v339 + 1), v344, v347, v353, v354, v357, v359, *(&v359 + 1), v362, v365, v368, v373[0], SBYTE1(v373[0]), SBYTE2(v373[0]), SHIBYTE(v373[0]), v373[1], *&v373[2], v388, v389, *(&v389 + 1), v390, *(&v390 + 1), v391, *(&v391 + 1), v392, v393, v394, v395, v396, v397, v398, v399, v400, v401);
                }

                if ((v505 & 1) == 0)
                {
                  (v500->i64[0])(&v500);
                }
              }

              v239 = *(v7->i64[1] + 72);
              if (v239)
              {
                re::VFXManager::endFrame(v239, *(v7->i64[0] + 40) & 0xFFFFFFFFFFFFFFFLL);
              }

              if ((v507 & 1) == 0)
              {
                (*v506[0])(v506, v232);
              }

              if (v415 && v419)
              {
                (*(*v415 + 40))(v232);
              }

              if (v420 && v422)
              {
                (*(*v420 + 40))(v232);
              }

              if (v423 && v425)
              {
                (*(*v423 + 40))(v232);
              }

              if (v426 && v428)
              {
                (*(*v426 + 40))(v232);
              }

              re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(v525);
              v530 = 0;
              ++v531;
              re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v534);
              v528 = 0;
              LODWORD(v529) = 0;
              v106.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v534);
            }

            else
            {
              re::RenderGraphContext::acquireManagedRenderCommandEncoder(v7, 0, v508);
              re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v508);
            }

            if (v439[0] && v442)
            {
              (*(*v439[0] + 40))(v106);
            }

            if (v544[0])
            {
              if (v546)
              {
                (*(*v544[0] + 40))(v106);
              }

              v546 = 0;
              memset(v544, 0, sizeof(v544));
              ++v545;
            }

            if (v540[0])
            {
              if (v543)
              {
                (*(*v540[0] + 40))(v106);
              }

              v543 = 0;
              v540[1] = 0;
              v541 = 0;
              v540[0] = 0;
              ++v542;
            }

            if (v538[0] && v539)
            {
              (*(*v538[0] + 40))(v106);
            }

            goto LABEL_292;
          }

LABEL_53:
          v78 = v436;
          if (*(*(&v368 + 1) + 24))
          {
            v79 = *(&v368 + 1) + 32;
          }

          else
          {
            v79 = *(*(&v368 + 1) + 40);
          }

          v80 = v79 + 40 * *(*(&v368 + 1) + 16) - 40;
          v532 = re::globalAllocators(RenderGraphDataPipe)[2];
          v528 = &unk_1F5D10FC0;
          v529 = v80;
          v533 = &v528;
          v508[0].i64[0] = 0;
          v508[0].i64[1] = &v487;
          v508[1] = 1uLL;
          v509.i64[0] = 0;
          v511 = v532;
          re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(&v509.i64[1], &v528);
          LOWORD(v512) = 1;
          BYTE4(v512) = 0;
          LOWORD(v513) = 0;
          re::RenderGraphMeshNodeBase::sortMeshParts(2, v438, v78, v7, v77, v508, v5, &v402, v248, v263, SHIDWORD(v263), v280, v284, v288, v292, v296, v299, v303, v306, v310, v313, v316, v319, v323, v326, v329, SDWORD2(v329), v334, *(&v334 + 1), v339, *(&v339 + 1), v344, v347, v350, v354, v357, v359, v362, v365, v368, *(&v368 + 1), v373[0], v373[1], SBYTE1(v373[1]), SBYTE2(v373[1]), SHIBYTE(v373[1]), v373[2], v373[3], v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, SWORD4(v394), v395, v396, v397, v398, v399);
          re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v439, &v402);
          if (v402.i64[0])
          {
            if (v405)
            {
              (*(*v402.i64[0] + 40))();
            }

            v405 = 0;
            v403 = 0;
            v402 = 0uLL;
            LODWORD(v404) = v404 + 1;
          }

          re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v509.i64[1]);
          re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v528);
          goto LABEL_61;
        }

LABEL_46:
        v508[0].i64[0] = v9;
        v508[0].i8[8] = 0;
        *(&v508[0].i32[3] + 2) = 65280;
        v508[1].i8[2] = 0;
        RenderGraphDataPipe = re::DynamicInlineArray<re::FilteredMeshPass,2ul>::add(&v436, v508);
        goto LABEL_53;
      }

      v2 = 0;
      v56 = v4 + 9;
      v5 = *v373;
      while (1)
      {
        v57 = v4[8].u64[0];
        if (v57 <= v2)
        {
          break;
        }

        if (v56[5].i8[0] == 1)
        {
          v58 = v56[6];
          v59 = v56[7];
          v60 = v56[8];
          *v510 = v56[9];
          v509 = v60;
          v508[1] = v59;
          v508[0] = v58;
        }

        else
        {
          re::Projection::cullingProjectionMatrix(v508, v56);
        }

        re::DynamicArray<re::Matrix4x4<float>>::add(v540, v508);
        v62 = v4[8].u64[0];
        if (v62 <= v2)
        {
          goto LABEL_48;
        }

        re::Projection::cullingProjectionMatrix(v508, v56);
        re::DynamicArray<re::Matrix4x4<float>>::add(v544, v508);
        v64 = v4[3].u64[0];
        if (v64 <= v2)
        {
          goto LABEL_49;
        }

        re::RenderCamera::computeInverseTransform(v508, v5);
        *&v51 = re::DynamicArray<re::Matrix4x4<float>>::add(v538, v508).n128_u64[0];
        ++v2;
        v5 = (v5 + 32);
        v56 += 15;
        if (v2 >= v4[55].u8[10])
        {
          goto LABEL_28;
        }
      }

      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v57);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v249, v264);
      __break(1u);
LABEL_48:
      re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v62);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v250, v265);
      __break(1u);
LABEL_49:
      re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v64);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v251, v266);
      __break(1u);
    }

    v288 = 0;
    v292 = 0;
    v280 = "operator[]";
    v284 = 389;
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size");
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v252, v267);
    __break(1u);
    goto LABEL_51;
  }

  re::RenderGraphContext::acquireManagedRenderCommandEncoder(v7, 0, v508);
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v508);
LABEL_292:
  v240 = 64;
  do
  {
    re::StringID::destroyString((&v480 + v240));
    re::StringID::destroyString((&v479 + v240));
    v240 -= 32;
  }

  while (v240);
  if (*&v486.var0)
  {
  }

  if (*&v485.var0)
  {
  }

  if (*&v488.var0)
  {
    if (*&v488.var0)
    {
    }
  }

  v488.var1 = &str_67;
  *&v488.var0 = 0;
  if (*&v487.var0)
  {
    if (*&v487.var0)
    {
    }
  }

  v7[70].i8[0] = 0;
  v7[97].i8[1] = 0;
}

uint64_t anonymous namespace::shouldSkipBlurMaterial(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 8);
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v4 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "BlurReprojectionState was not set.", v6, 2u);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t re::MeshPassInfoData::getMeshPartBucket(re::MeshPassInfoData *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!*v2)
  {
    return 0;
  }

  v3 = *(*(v2 + 8) + 4 * (a2 % *(v2 + 24)));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  while (*(v4 + 80 * v3 + 8) != a2)
  {
    v3 = *(v4 + 80 * v3) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return v4 + 80 * v3 + 16;
}

uint64_t re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(re::MeshPassInfoData *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 17);
  v7 = *(a3 + 18);
  v19 = *(a3 + 19);
  v20 = *(a3 + 23);
  v8 = *(a3 + 24);
  result = re::MeshPassInfoData::getMeshPartBucket(a1, v4);
  if (result)
  {
    v10 = result;
    v11 = 1;
    v12 = v19;
    v13 = v20;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    v17 = v8;
    v18 = 1;
    return re::DynamicInlineArray<re::FilteredMeshPass,1ul>::add(a2, &v10);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,10ul>::add(uint64_t result, uint64_t a2)
{
  if (*result >= 0xAuLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  else
  {
    v4 = result + 24 * *result;
    *(v4 + 16) = *a2;
    v5 = v4 + 16;
    v6 = *(a2 + 8);
    *(v5 + 8) = v6;
    if (v6 == 1)
    {
      v7 = *(a2 + 9);
      *(v5 + 13) = *(a2 + 13);
      *(v5 + 9) = v7;
    }

    v8 = *(a2 + 14);
    *(v5 + 18) = *(a2 + 18);
    *(v5 + 14) = v8;
    ++*result;
    ++*(result + 8);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,2ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 24 * *a1;
    *(v5 + 16) = *a2;
    v6 = v5 + 16;
    v7 = *(a2 + 8);
    *(v6 + 8) = v7;
    if (v7 == 1)
    {
      v8 = *(a2 + 9);
      *(v6 + 13) = *(a2 + 13);
      *(v6 + 9) = v8;
    }

    v9 = *(a2 + 14);
    *(v6 + 18) = *(a2 + 18);
    *(v6 + 14) = v9;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

_BYTE *re::DrawTable::clearAll(re::DrawTable *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::DrawCall,128ul>::operator[](this, i);
    }
  }

  *(this + 5) = 0;
  ++*(this + 12);
  v4 = *(this + 12);
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](this + 56, j);
    }
  }

  *(this + 12) = 0;
  ++*(this + 26);
  v6 = *(this + 19);
  if (v6)
  {
    for (k = 0; k != v6; ++k)
    {
      re::BucketArray<re::ConstantTable const*,128ul>::operator[](this + 112, k);
    }
  }

  *(this + 19) = 0;
  ++*(this + 40);
  v8 = *(this + 26);
  if (v8)
  {
    for (m = 0; m != v8; ++m)
    {
      re::BucketArray<unsigned int,128ul>::operator[](this + 168, m);
    }
  }

  *(this + 26) = 0;
  ++*(this + 54);
  v10 = *(this + 33);
  if (v10)
  {
    for (n = 0; n != v10; ++n)
    {
      re::BucketArray<unsigned int,128ul>::operator[](this + 224, n);
    }
  }

  *(this + 33) = 0;
  ++*(this + 68);
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  BYTE8(v14) = 1;
  result = re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=(this + 280, v13);
  if ((BYTE8(v14) & 1) == 0)
  {
    return (**&v13[0])(v13);
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,re::anonymous namespace::SPlatterDrawInfo,16ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 444))
  {
    if (v7 != 0x7FFFFFFF)
    {
      return *(a1 + 432) + 32 * v7 + 16;
    }

    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 24 * v4;
  for (result = a1 + 40; *(result - 8) != a2; result += 24)
  {
    v5 -= 24;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

void re::allocViewportPercentsBuffer(re *this, re::PerFrameAllocatorGPU **a2, const re::ViewportPercentData *a3)
{
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v24, a2 + 2, 0x20uLL, 0x10uLL);
  v6 = v24;
  v8 = v25;
  v7 = v26;
  v9 = v27;
  *this = v24;
  *(this + 2) = v8;
  *(this + 3) = v7;
  *(this + 2) = v9;
  v10 = v7 >> 4;
  if (v7 <= 0xF)
  {
LABEL_15:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v22);
    __break(1u);
    goto LABEL_16;
  }

  v11 = (v6 + v8);
  *v11 = xmmword_1E3063230;
  if (v7 <= 0x1F)
  {
LABEL_16:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v23);
    __break(1u);
    return;
  }

  v11[1] = xmmword_1E3063230;
  if (a3 && *(a3 + 64))
  {
    for (i = 0; ; i = 1)
    {
      v13 = *(a3 + 2);
      if (v13 <= i)
      {
        break;
      }

      if (i == v10)
      {
        goto LABEL_14;
      }

      v11[i] = *(a3 + i + 2);
      v14 = i + 1;
      if (*(a3 + 64) >= 2u)
      {
        v15 = 2;
      }

      else
      {
        v15 = *(a3 + 64);
      }

      if (v14 >= v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, i, v13);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v16, v20);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v21);
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t re::setViewportPercentsBuffer(re *this, id *a2, const re::mtl::ComputeCommandEncoder *a3)
{
  v3 = a3;
  v6 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(this + 146), *(*(this + 5) + 48));
  if (!v6)
  {
    v7 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "ViewportPercentsData is missing in blur pipeline. Using default values.", v9, 2u);
    }
  }

  re::allocViewportPercentsBuffer(v9, *this, v6);
  return [*a2 setBuffer:v11 offset:v10 atIndex:v3];
}

void re::SFBSystemShellDownsampleRawNodeCompute::setupEncoder(uint64_t a1, re *a2, id *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = re::RenderGraphDataStore::tryGet<re::CameraStreamContext>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v6)
  {
    v9 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Missing camera stream context.", buf, 2u);
    }

    return;
  }

  v7 = v6;
  if (*(a1 + 496) != 1)
  {
    v6 = re::CameraStreamContext::leftMCAM(v6);
    if (*(v6 + 25))
    {
      v6 = re::CameraStreamContext::rightMCAM(v7);
      if (*(v6 + 25))
      {
        [*a3 setTexture:*(re::CameraStreamContext::leftMCAM(v7) + 25) atIndex:0];
        v8 = *(re::CameraStreamContext::rightMCAM(v7) + 25);
        goto LABEL_11;
      }
    }

LABEL_12:
    if (++_MergedGlobals_509 % 45 == 1)
    {
      v10 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = _MergedGlobals_509;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "No passthrough textures sent to blur CameraStreamManager for %i frame(s).", buf, 8u);
      }
    }

    v11 = *(*(*(a2 + 1) + 56) + 240);
    v62 = 93818879;
    v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v11 + 1, &v62);
    (*(*v11 + 24))(buf, v11, *(v11[2] + 16 * v12 + 9));
    [*a3 setTexture:*buf atIndex:0];
    [*a3 setTexture:*buf atIndex:1];
    if (*buf)
    {
    }

    goto LABEL_17;
  }

  if (!*(v6 + 229) || !*(v6 + 230))
  {
    goto LABEL_12;
  }

  [*a3 setTexture:? atIndex:?];
  v8 = *(v7 + 230);
LABEL_11:
  [*a3 setTexture:v8 atIndex:1];
LABEL_17:
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a2 + 16), 0x410uLL, 4uLL);
  v56 = *buf;
  v13 = v64;
  v61 = v65;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a2 + 16), 0x84uLL, 4uLL);
  v58 = *buf;
  v14 = v64;
  v60 = v65;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a2 + 16), 0x30uLL, 0x10uLL);
  v57 = *buf;
  v15 = v64;
  v59 = v65;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a2 + 16), 0x50uLL, 0x10uLL);
  v16 = *buf;
  v17 = v64;
  v18 = v65;
  re::setViewportPercentsBuffer(a2, a3, 0);
  if (*(a1 + 496) == 1)
  {
    v19 = &v16[v17];
    v20 = *(v7 + 110);
    v21 = *(v7 + 111);
    v22 = *(v7 + 113);
    *(v19 + 2) = *(v7 + 112);
    *(v19 + 3) = v22;
    *v19 = v20;
    *(v19 + 1) = v21;
    *(v19 + 16) = *(v7 + 456);
  }

  else
  {
    if ((atomic_load_explicit(&qword_1EE1BEBC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBC0))
    {
      qword_1EE1BEBB8 = re::getCombinedScopeHash("CameraTMData", v52, v53);
      __cxa_guard_release(&qword_1EE1BEBC0);
    }

    v23 = *(a2 + 146);
    v24 = "N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE";
    if (("N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE" & 0x8000000000000000) != 0)
    {
      v25 = ("N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v24 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    if (*(v23 + 16))
    {
      v28 = (qword_1EE1BEBB8 + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583E9) ^ v24;
      v29 = *(*(v23 + 24) + 4 * (v28 % *(v23 + 40)));
      if (v29 != 0x7FFFFFFF)
      {
        v30 = *(v23 + 32);
        while (*(v30 + 24 * v29 + 8) != v28)
        {
          v29 = *(v30 + 24 * v29) & 0x7FFFFFFF;
          if (v29 == 0x7FFFFFFF)
          {
            goto LABEL_31;
          }
        }

        v31 = *(v30 + 24 * v29 + 16);
        if (v31)
        {
          memcpy(&v56[v13], (v31 + 8), 0x410uLL);
        }
      }
    }

LABEL_31:
    if ((atomic_load_explicit(&qword_1EE1BEBD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBD0))
    {
      qword_1EE1BEBC8 = re::getCombinedScopeHash("ToneMapping", v54, v55);
      __cxa_guard_release(&qword_1EE1BEBD0);
    }

    v32 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(*(a2 + 146), qword_1EE1BEBC8);
    if (v32)
    {
      v33 = &v58[v14];
      *v33 = *(v32 + 8);
      v34 = *(v32 + 24);
      v35 = *(v32 + 40);
      v36 = *(v32 + 72);
      *(v33 + 3) = *(v32 + 56);
      *(v33 + 4) = v36;
      *(v33 + 1) = v34;
      *(v33 + 2) = v35;
      v37 = *(v32 + 88);
      v38 = *(v32 + 104);
      v39 = *(v32 + 120);
      *(v33 + 32) = *(v32 + 136);
      *(v33 + 6) = v38;
      *(v33 + 7) = v39;
      *(v33 + 5) = v37;
    }

    v40 = *(a2 + 146);
    v41 = "N2re17TintConstantsDataE";
    if (("N2re17TintConstantsDataE" & 0x8000000000000000) != 0)
    {
      v42 = ("N2re17TintConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v43 = 5381;
      do
      {
        v41 = v43;
        v44 = *v42++;
        v43 = (33 * v43) ^ v44;
      }

      while (v44);
    }

    if (*(v40 + 64))
    {
      v45 = (*(*(a2 + 5) + 48) - 0x61C8864680B583E9 + (v41 << 6) + (v41 >> 2)) ^ v41;
      v46 = *(*(v40 + 72) + 4 * (v45 % *(v40 + 88)));
      if (v46 != 0x7FFFFFFF)
      {
        v47 = *(v40 + 80);
        while (*(v47 + 24 * v46 + 8) != v45)
        {
          v46 = *(v47 + 24 * v46) & 0x7FFFFFFF;
          if (v46 == 0x7FFFFFFF)
          {
            goto LABEL_45;
          }
        }

        v48 = *(v47 + 24 * v46 + 16);
        if (v48)
        {
          v49 = &v57[v15];
          v50 = v48[1];
          v51 = v48[3];
          *(v49 + 1) = v48[2];
          *(v49 + 2) = v51;
          *v49 = v50;
        }
      }
    }
  }

LABEL_45:
  [*a3 setBuffer:v61 offset:v13 atIndex:1];
  [*a3 setBuffer:v60 offset:v14 atIndex:2];
  [*a3 setBuffer:v59 offset:v15 atIndex:3];
  [*a3 setBuffer:v18 offset:v17 atIndex:4];
}

char *re::CameraStreamContext::leftMCAM(re::CameraStreamContext *this)
{
  v5 = 0x11844F475DLL;
  if (*(this + 435))
  {
    return re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator[](this + 1712, &v5);
  }

  v2 = this + 48;
  if (*(this + 6) != 0x11844F475DLL)
  {
    v3 = (this + 464);
    do
    {
      v4 = *v3;
      v3 += 52;
    }

    while (v4 != 0x11844F475DLL);
    v2 = (v3 - 52);
  }

  return v2 + 16;
}

char *re::CameraStreamContext::rightMCAM(re::CameraStreamContext *this)
{
  v5 = 0x21F05F00586;
  if (*(this + 435))
  {
    return re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator[](this + 1712, &v5);
  }

  v2 = this + 48;
  if (*(this + 6) != 0x21F05F00586)
  {
    v3 = (this + 464);
    do
    {
      v4 = *v3;
      v3 += 52;
    }

    while (v4 != 0x21F05F00586);
    v2 = (v3 - 52);
  }

  return v2 + 16;
}

void re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(uint64_t a1, re *a2, id *a3)
{
  v150 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 146);
  v7 = *(*(a2 + 5) + 48);
  v8 = re::RenderGraphDataStore::tryGet<re::CameraStreamContext>(v6, v7);
  v9 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(v6, v7);
  v10 = v9;
  v11 = *(a2 + 146);
  v12 = "N2re18CameraProjFrustumsE";
  if (("N2re18CameraProjFrustumsE" & 0x8000000000000000) != 0)
  {
    v13 = ("N2re18CameraProjFrustumsE" & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  if (!*(v11 + 64))
  {
    goto LABEL_46;
  }

  v16 = (*(*(a2 + 5) + 48) + (v12 << 6) + (v12 >> 2) - 0x61C8864680B583E9) ^ v12;
  v17 = *(*(v11 + 72) + 4 * (v16 % *(v11 + 88)));
  if (v17 == 0x7FFFFFFF)
  {
    goto LABEL_46;
  }

  v18 = *(v11 + 80);
  while (*(v18 + 24 * v17 + 8) != v16)
  {
    v17 = *(v18 + 24 * v17) & 0x7FFFFFFF;
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

  v19 = *(v18 + 24 * v17 + 16);
  if (v19 && (*(v19 + 16) ? (v20 = v8 == 0) : (v20 = 1), !v20 ? (v21 = v9 == 0) : (v21 = 1), !v21 && v9[8]))
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a2 + 16), 0x180uLL, 0x10uLL);
    v22 = *buf;
    v23 = *&buf[8];
    v24 = *&buf[12];
    v129 = *&v142[0];
    v130 = *&buf[12] / 0xC0uLL;
    v25 = re::CameraStreamContext::leftMCAM(v8);
    if (v24 <= 0xBF)
    {
LABEL_70:
      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v130);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v118, v122);
      __break(1u);
LABEL_71:
      re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v130);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v119, v123);
      __break(1u);
    }

    v124 = v22;
    v27 = (v22 + v23);
    v28 = *(v25 + 13);
    v29 = *(v25 + 14);
    v30 = *(v25 + 16);
    v27[2] = *(v25 + 15);
    v27[3] = v30;
    *v27 = v28;
    v27[1] = v29;
    v31 = *(v25 + 17);
    v32 = *(v25 + 18);
    v33 = *(v25 + 20);
    v27[6] = *(v25 + 19);
    v27[7] = v33;
    v27[4] = v31;
    v27[5] = v32;
    v34 = *(v25 + 21);
    v35 = *(v25 + 22);
    v36 = *(v25 + 24);
    v27[10] = *(v25 + 23);
    v27[11] = v36;
    v27[8] = v34;
    v27[9] = v35;
    v37 = re::CameraStreamContext::rightMCAM(v8);
    if (v24 <= 0x17F)
    {
      goto LABEL_71;
    }

    v39 = *(v37 + 13);
    v40 = *(v37 + 14);
    v41 = *(v37 + 16);
    v27[14] = *(v37 + 15);
    v27[15] = v41;
    v27[12] = v39;
    v27[13] = v40;
    v42 = *(v37 + 17);
    v43 = *(v37 + 18);
    v44 = *(v37 + 20);
    v27[18] = *(v37 + 19);
    v27[19] = v44;
    v27[16] = v42;
    v27[17] = v43;
    v45 = *(v37 + 21);
    v46 = *(v37 + 22);
    v47 = *(v37 + 24);
    v27[22] = *(v37 + 23);
    v27[23] = v47;
    v27[20] = v45;
    v27[21] = v46;
    if (*(v19 + 16))
    {
      v48 = 0;
      v49 = 1;
      while (v48 != v130)
      {
        v50 = *(v19 + 32 + 16 * v48);
        v51 = vextq_s8(v50, v50, 8uLL).u64[0];
        v52 = vabs_f32(vext_s8(*v50.i8, v51, 4uLL));
        v50.i32[1] = v51.i32[1];
        *v50.i8 = vabs_f32(*v50.i8);
        *&v53 = vadd_f32(v52, *v50.i8);
        *(&v53 + 1) = __PAIR64__(v52.u32[1], v50.u32[0]);
        v27[12 * v48 + 1] = v53;
        v54 = v49 & (*(v19 + 16) > (v48 + 1));
        v48 = 1;
        v49 = 0;
        if ((v54 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v130, v130);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v116, v120);
      __break(1u);
      goto LABEL_69;
    }

LABEL_25:
    v126 = v24;
    v127 = v23;
    v125 = a1;
    v128 = a3;
    v55 = 0;
    v56 = __src;
    v57 = &__src[16];
    v58 = 1;
    do
    {
      v59 = v58;
      v133 = *(re::CameraStreamContext::camForEyeIndex(v8, v55) + 1);
      v60 = re::CameraStreamContext::camForEyeIndex(v8, v55);
      v134 = *v60;
      v135 = *(v60 + 1);
      v131 = *(v60 + 3);
      v132 = *(v60 + 2);
      v151 = __invert_f4(v133);
      v69 = 0;
      v146 = v151.columns[0];
      v147 = v151.columns[1];
      v148 = v151.columns[2];
      v149[0] = v151.columns[3];
      do
      {
        *&buf[v69] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(*(&v146 + v69))), v135, *&v146.f32[v69 / 4], 1), v132, *(&v146 + v69), 2), v131, *(&v146 + v69), 3);
        v69 += 16;
      }

      while (v69 != 64);
      v70 = v142[0];
      v71 = v142[1];
      v72 = v143;
      *v56 = *buf;
      v56[1] = v70;
      v56[2] = v71;
      v56[3] = v72;
      v73 = MEMORY[0x1E69E9B18];
      if (v10[8] > v55)
      {
        v73 = (v10[10] + (v55 << 6));
      }

      v58 = 0;
      v75 = v73[2];
      v74 = v73[3];
      v77 = *v73;
      v76 = v73[1];
      v78 = &__src[8 * v55 + 16];
      *v78 = v77;
      v78[1] = v76;
      v78[2] = v75;
      v78[3] = v74;
      v56 = &__src[8];
      v55 = 1;
    }

    while ((v59 & 1) != 0);
    __src[32] = *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL;
    if (v10[3])
    {
      v79 = 0;
      v80 = v127 + v124 + 64;
      v81 = 128;
      while (1)
      {
        v82 = v10[5] + v81;
        WarpMatrixForSourceProjection = re::createWarpMatrixForSourceProjection(*v57, v57[1], v57[2], v57[3], *(v82 - 128), *(v82 - 112), *(v82 - 96), *(v82 - 80), v61, v62, v63, v64, v65, v66, v67, v68, *v57, v57[1], v57[2], v57[3], v57[-8], v57[-7], v57[-6], v57[-5]);
        if (v130 == v79)
        {
          break;
        }

        *(v80 - 24) = v84;
        *(v80 - 8) = v86;
        *(v80 - 32) = WarpMatrixForSourceProjection;
        *(v80 - 16) = v85;
        *(v80 + 8) = v88;
        *v80 = v87;
        v80 += 192;
        ++v79;
        v81 += 64;
        v57 += 4;
        if (v10[3] <= v79)
        {
          goto LABEL_35;
        }
      }

LABEL_69:
      re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v130, v130);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v117, v121);
      __break(1u);
      goto LABEL_70;
    }

LABEL_35:
    v137[0] = v129;
    v138 = 0;
    v139 = __PAIR64__(v126, v127);
    re::BufferSlice::buffer(v137, v89);
    [*v128 setBuffer:v137[0] offset:v139 atIndex:0];
    v90 = *(*(a2 + 1) + 128);
    v146.i8[0] = 0;
    v147.i32[2] = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v146, v137);
    v148.i64[0] = v139;
    memcpy(v149, __src, 0x110uLL);
    *&v149[17] = v90;
    *buf = *(v125 + 48);
    v145 = 1;
    *&buf[8] = &unk_1F5D11210;
    BYTE8(v142[0]) = 0;
    LODWORD(v143) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v142 + 8, &v146);
    *(&v143 + 1) = v148.i64[0];
    memcpy(v144, v149, sizeof(v144));
    v145 = 0;
    re::DynamicOverflowArray<re::PatchTransform,5ul>::add(a2 + 1704, buf);
    if ((v145 & 1) == 0)
    {
      (**&buf[8])(&buf[8]);
    }

    re::setViewportPercentsBuffer(a2, v128, 1);
    v91 = *(a2 + 146);
    v92 = "N2re25BlurBackgroundOpacityDataE";
    if (("N2re25BlurBackgroundOpacityDataE" & 0x8000000000000000) != 0)
    {
      v93 = ("N2re25BlurBackgroundOpacityDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v94 = 5381;
      do
      {
        v92 = v94;
        v95 = *v93++;
        v94 = (33 * v94) ^ v95;
      }

      while (v95);
    }

    v96 = 0uLL;
    v97 = 0;
    if (*(v91 + 64))
    {
      v98 = (*(*(a2 + 5) + 48) - 0x61C8864680B583E9 + (v92 << 6) + (v92 >> 2)) ^ v92;
      v99 = *(*(v91 + 72) + 4 * (v98 % *(v91 + 88)));
      if (v99 != 0x7FFFFFFF)
      {
        v100 = *(v91 + 80);
        while (*(v100 + 24 * v99 + 8) != v98)
        {
          v99 = *(v100 + 24 * v99) & 0x7FFFFFFF;
          if (v99 == 0x7FFFFFFF)
          {
            goto LABEL_51;
          }
        }

        v102 = *(v100 + 24 * v99 + 16);
        if (v102)
        {
          v97 = *(v102 + 8);
          v96 = *(v102 + 16);
        }
      }
    }

LABEL_51:
    v136 = v96;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a2 + 16), 0x20uLL, 0x10uLL);
    v103 = *&v142[0];
    v104 = *buf + *&buf[8];
    *v104 = v97;
    *(v104 + 16) = v136;
    [*v128 setBuffer:v103 offset:? atIndex:?];
    v105 = *(a2 + 146);
    v106 = "N2re23ImmersiveEnvDimmingDataE";
    if (("N2re23ImmersiveEnvDimmingDataE" & 0x8000000000000000) != 0)
    {
      v107 = ("N2re23ImmersiveEnvDimmingDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v108 = 5381;
      do
      {
        v106 = v108;
        v109 = *v107++;
        v108 = (33 * v108) ^ v109;
      }

      while (v109);
    }

    if (!*(v105 + 64) || (v110 = (*(*(a2 + 5) + 48) - 0x61C8864680B583E9 + (v106 << 6) + (v106 >> 2)) ^ v106, v111 = *(*(v105 + 72) + 4 * (v110 % *(v105 + 88))), v111 == 0x7FFFFFFF))
    {
LABEL_59:
      v113 = 0;
    }

    else
    {
      v112 = *(v105 + 80);
      while (*(v112 + 24 * v111 + 8) != v110)
      {
        v111 = *(v112 + 24 * v111) & 0x7FFFFFFF;
        if (v111 == 0x7FFFFFFF)
        {
          goto LABEL_59;
        }
      }

      v113 = *(v112 + 24 * v111 + 16);
    }

    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a2 + 16), 4uLL, 4uLL);
    v114 = *&v142[0];
    if (v113)
    {
      v115 = *(v113 + 8);
    }

    else
    {
      v115 = 1.0;
    }

    *(*buf + *&buf[8]) = v115;
    [*v128 setBuffer:v114 offset:? atIndex:?];
    if (v147.i32[2] != -1)
    {
      (off_1F5D11070[v147.u32[2]])(buf, &v146);
    }

    if (v138 != -1)
    {
      (off_1F5D11070[v138])(buf, v137);
    }
  }

  else
  {
LABEL_46:
    v101 = *re::graphicsLogObjects(v9);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v101, OS_LOG_TYPE_ERROR, "Camera projection frustums were not properly set. Unable to initialize encoder in SFBSystemShellReprojectAndFilterNode.", buf, 2u);
    }
  }
}

char *re::CameraStreamContext::camForEyeIndex(re::CameraStreamContext *this, int a2)
{
  v2 = 0x21F05F00586;
  if (!a2)
  {
    v2 = 0x11844F475DLL;
  }

  v7 = v2;
  if (*(this + 435))
  {
    return re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator[](this + 1712, &v7);
  }

  v4 = this + 48;
  if (*(this + 6) != v2)
  {
    v5 = (this + 464);
    do
    {
      v6 = *v5;
      v5 += 52;
    }

    while (v6 != v2);
    v4 = (v5 - 52);
  }

  return v4 + 16;
}

uint64_t anonymous namespace::setColorConstants(void *a1, void **a2, unsigned int a3)
{
  *&v6 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v28, (*a1 + 16), 0xB0uLL, 0x10uLL);
  v7 = v29;
  v8 = v30;
  v9 = "N2re24ColorFilterConstantsDataE";
  v10 = a1[146];
  if (("N2re24ColorFilterConstantsDataE" & 0x8000000000000000) != 0)
  {
    v11 = ("N2re24ColorFilterConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v9 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  if (*(v10 + 64))
  {
    v14 = (*(a1[5] + 48) + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583E9) ^ v9;
    v15 = *(*(v10 + 72) + 4 * (v14 % *(v10 + 88)));
    if (v15 != 0x7FFFFFFF)
    {
      v16 = *(v10 + 80);
      while (*(v16 + 24 * v15 + 8) != v14)
      {
        v15 = *(v16 + 24 * v15) & 0x7FFFFFFF;
        if (v15 == 0x7FFFFFFF)
        {
          goto LABEL_12;
        }
      }

      v17 = *(v16 + 24 * v15 + 16);
      if (v17)
      {
        v18 = (v28 + v29);
        v19 = v17[1];
        v20 = v17[3];
        v18[1] = v17[2];
        v18[2] = v20;
        *v18 = v19;
        v21 = v17[4];
        v22 = v17[5];
        v23 = v17[7];
        v18[5] = v17[6];
        v18[6] = v23;
        v18[3] = v21;
        v18[4] = v22;
        v6 = v17[8];
        v24 = v17[9];
        v25 = v17[11];
        v18[9] = v17[10];
        v18[10] = v25;
        v18[7] = v6;
        v18[8] = v24;
      }
    }
  }

LABEL_12:
  v26 = *a2;

  return [v26 setBuffer:v8 offset:v7 atIndex:{a3, *&v6}];
}

uint64_t anonymous namespace::setGammaLUTs(void *a1, id *a2, unsigned int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  *&v22[0] = 0x526A495CDE0FLL;
  v6 = *(a1[1] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, v22) + 8);
  v7 = a1[10];
  if (v7 <= v6)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = a1[12] + 24 * v6;
  return [*a2 setBuffer:*v8 offset:*(v8 + 16) atIndex:a3];
}

void re::SFBSystemShellCreateTextureAliasNode::execute(re::SFBSystemShellCreateTextureAliasNode *this, re::RenderGraphContext *a2)
{
  {
    if (*(this + 25))
    {
      re::RenderGraphContext::metalTexture(a2, *(this + 27), 0, 0, &v5);
      if (v5)
      {
        re::DynamicTextureTableAdd((*a2 + 368), this + 34, &v5);
        if (v5)
        {
        }
      }
    }
  }
}

void re::SFBSystemShellReprojectNode::setupEncoder(uint64_t a1, re *a2, id *a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 500);
  v7 = *(a1 + 496);
  v8 = *a3;
  v13 = v8;

  re::setViewportPercentsBuffer(a2, a3, 1);
  v9 = *a3;
  v12 = v9;

  v10 = *a3;
  v11 = v10;
}

void anonymous namespace::setReprojectionConstants(void *a1, uint64_t a2, id *a3, float a4, float a5)
{
  __src[55] = *MEMORY[0x1E69E9840];
  v10 = a1[146];
  v11 = *(a1[5] + 48);
  v12 = re::RenderGraphDataStore::tryGet<re::CameraStreamContext>(v10, v11);
  v13 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(v10, v11);
  v14 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(a1[146], *(a1[5] + 48));
  if (v13)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && v14 != 0)
  {
    v18 = v14;
    v19 = a1[146];
    v20 = "N2re20WorldToViewCacheDataE";
    if (("N2re20WorldToViewCacheDataE" & 0x8000000000000000) != 0)
    {
      v21 = ("N2re20WorldToViewCacheDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    v102 = a2;
    if (!*(v19 + 64) || (v24 = (*(a1[5] + 48) + (v20 << 6) + (v20 >> 2) - 0x61C8864680B583E9) ^ v20, v25 = *(*(v19 + 72) + 4 * (v24 % *(v19 + 88))), v25 == 0x7FFFFFFF))
    {
LABEL_19:
      v27 = 0;
    }

    else
    {
      v26 = *(v19 + 80);
      while (*(v26 + 24 * v25 + 8) != v24)
      {
        v25 = *(v26 + 24 * v25) & 0x7FFFFFFF;
        if (v25 == 0x7FFFFFFF)
        {
          goto LABEL_19;
        }
      }

      v27 = *(v26 + 24 * v25 + 16);
    }

    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, (*a1 + 16), 0x180uLL, 0x10uLL);
    v28 = *buf;
    v30 = *&buf[8];
    v29 = *&buf[12];
    v101 = *v107;
    v31 = *&buf[12] / 0xC0uLL;
    v32 = re::CameraStreamContext::leftMCAM(v12);
    if (v29 <= 0xBF)
    {
      goto LABEL_51;
    }

    v100 = a3;
    v34 = (v28 + v30);
    v35 = *(v32 + 13);
    v36 = *(v32 + 14);
    v37 = *(v32 + 16);
    *(v34 + 2) = *(v32 + 15);
    *(v34 + 3) = v37;
    *v34 = v35;
    *(v34 + 1) = v36;
    v38 = *(v32 + 17);
    v39 = *(v32 + 18);
    v40 = *(v32 + 20);
    *(v34 + 6) = *(v32 + 19);
    *(v34 + 7) = v40;
    *(v34 + 4) = v38;
    *(v34 + 5) = v39;
    v41 = *(v32 + 21);
    v42 = *(v32 + 22);
    v43 = *(v32 + 24);
    *(v34 + 10) = *(v32 + 23);
    *(v34 + 11) = v43;
    *(v34 + 8) = v41;
    *(v34 + 9) = v42;
    v44 = re::CameraStreamContext::rightMCAM(v12);
    if (v29 > 0x17F)
    {
      v46 = v30;
      v47 = *(v44 + 13);
      v48 = *(v44 + 14);
      v49 = *(v44 + 16);
      *(v34 + 14) = *(v44 + 15);
      *(v34 + 15) = v49;
      *(v34 + 12) = v47;
      *(v34 + 13) = v48;
      v50 = *(v44 + 17);
      v51 = *(v44 + 18);
      v52 = *(v44 + 20);
      *(v34 + 18) = *(v44 + 19);
      *(v34 + 19) = v52;
      *(v34 + 16) = v50;
      *(v34 + 17) = v51;
      v53 = *(v44 + 21);
      v54 = *(v44 + 22);
      v55 = *(v44 + 24);
      *(v34 + 22) = *(v44 + 23);
      *(v34 + 23) = v55;
      *(v34 + 20) = v53;
      *(v34 + 21) = v54;
      v56 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(a1[146], *(a1[5] + 48));
      if (v56)
      {
        v60 = *(v56 + 20);
      }

      else
      {
        v60 = 1.0;
      }

      v61 = 0;
      v34[44] = v60;
      v34[92] = v60;
      v62 = __src;
      memset(&__src[48], 0, 32);
      v63 = *(v18 + 3);
      v64 = 1;
      v65 = MEMORY[0x1E69E9B18];
      while (1)
      {
        v66 = v64;
        v67 = (v27 + 16 + (v61 << 6));
        if (!v27)
        {
          v67 = v65;
        }

        v68 = v67[1];
        *v62 = *v67;
        v62[1] = v68;
        v69 = v67[3];
        v62[2] = v67[2];
        v62[3] = v69;
        v70 = (v27 + 144 + (v61 << 6));
        if (!v27)
        {
          v70 = v65;
        }

        v71 = &__src[8 * v61 + 16];
        v72 = v70[1];
        *v71 = *v70;
        v71[1] = v72;
        v73 = v70[3];
        v71[2] = v70[2];
        v71[3] = v73;
        v74 = v65;
        if (v63 > v61)
        {
          v75 = v46;
          v76 = *(v18 + 8);
          if (v76 <= v61)
          {
            v103[0] = 0;
            memset(v107, 0, 64);
            *buf = 0u;
            v91 = MEMORY[0x1E69E9C10];
            v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            __dst[0] = 136315906;
            *&__dst[1] = "operator[]";
            LOWORD(__dst[3]) = 1024;
            if (v92)
            {
              v93 = 3;
            }

            else
            {
              v93 = 2;
            }

            *(&__dst[3] + 2) = 797;
            HIWORD(__dst[4]) = 2048;
            *&__dst[5] = v61;
            LOWORD(__dst[7]) = 2048;
            *(&__dst[7] + 2) = v76;
            _os_log_send_and_compose_impl(v93, v103, buf, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __dst, 38, v98, v99);
            _os_crash_msg();
            __break(1u);
LABEL_51:
            re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v31);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v94, v96);
            __break(1u);
            break;
          }

          v74 = (*(v18 + 10) + (v61 << 6));
          v46 = v75;
        }

        v78 = v74[2];
        v77 = v74[3];
        v79 = *v74;
        v80 = v74[1];
        v81 = &__src[8 * v61 + 32];
        *v81 = v79;
        v81[1] = v80;
        v81[2] = v78;
        v81[3] = v77;
        v82 = xmmword_1E3063230;
        if (*(v13 + 16) > v61)
        {
          v82 = *(v13 + 32 + 16 * v61);
        }

        v64 = 0;
        *&__src[2 * v61 + 48] = v82;
        v62 = &__src[8];
        v61 = 1;
        if ((v66 & 1) == 0)
        {
          __src[52] = __PAIR64__(LODWORD(a4), LODWORD(a5));
          if (v63)
          {
            v83 = 0;
            v84 = 0;
            do
            {
              v85 = (*(v18 + 5) + v83);
              v86 = v85[1];
              v87 = v85[2];
              v88 = v85[3];
              *buf = *v85;
              *v107 = v86;
              *&v107[16] = v87;
              *&v107[32] = v88;
              v83 += 64;
            }

            while (*(v18 + 3) > v84);
          }

          v89 = v101;
          v103[0] = v89;
          v104 = 0;
          v105 = __PAIR64__(v29, v46);
          re::BufferSlice::buffer(v103, v90);
          [*v100 setBuffer:v89 offset:v46 atIndex:0];
          memcpy(__dst, __src, 0x1A8uLL);
          v113[0] = 0;
          v114 = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v113, v103);
          v115 = v105;
          v111 = 1;
          *buf = v102;
          *&buf[8] = &unk_1F5D11090;
          memcpy(&v107[8], __dst, 0x1B0uLL);
          v108[0] = 0;
          v109 = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v108, v113);
          v110 = v115;
          v111 = 0;
          re::DynamicOverflowArray<re::PatchTransform,5ul>::add((a1 + 213), buf);
          if ((v111 & 1) == 0)
          {
            (**&buf[8])(&buf[8]);
          }

          if (v114 != -1)
          {
            (off_1F5D11070[v114])(buf, v113);
          }

          if (v104 != -1)
          {
            (off_1F5D11070[v104])(buf, v103);
          }

          return;
        }
      }
    }

    re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v31);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v95, v97);
    __break(1u);
  }

  v17 = *re::graphicsLogObjects(v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Missing data for Reprojection Constants in blur pipeline. Unable to setup encoder.", buf, 2u);
  }
}

void re::SFBSystemShellBlurTAANode::setupEncoder(uint64_t a1, re *a2, id *a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 504);
  v8 = *(a1 + 500);
  v9 = *a3;
  v21 = v9;

  re::setViewportPercentsBuffer(a2, a3, 1);
  v10 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  *&v12 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v22, (*a2 + 16), 4uLL, 4uLL);
  if (v24 <= 3)
  {
    re::internal::assertLog(6, *&v11, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v17);
    __break(1u);
  }

  else
  {
    v13 = v25;
    v14 = 12;
    if (*(a1 + 496))
    {
      v14 = 16;
    }

    *(v22 + v23) = *(v10 + v14);
    [*a3 setBuffer:v13 offset:? atIndex:?];
    v15 = *a3;
    v20 = v15;

    v18 = *a3;
    v19 = v18;
  }
}

void re::SFBSystemShellReprojectNode::execute(re::SFBSystemShellReprojectNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  {

    re::RenderGraphComputeNodeBase::execute(this, a2);
  }
}

BOOL re::SFBSystemShellComputeNode::skipNode(re::SFBSystemShellComputeNode *this, re::RenderGraphContext *a2)
{
  v3 = this;
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 25);
  v5 = 0;
  if (v4)
  {
    v6 = *(this + 27);
    v7 = 32 * v4;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v6, 0, 0, v17);
      v8 = [*v17 protectionOptions];
      this = *v17;
      if (*v17)
      {
      }

      v5 |= v8;
      v6 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  v9 = *(v3 + 30);
  if (v9)
  {
    v10 = 0;
    v11 = *(v3 + 32);
    v12 = v9 << 6;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v11, 0, 0, v17);
      v13 = [*v17 protectionOptions];
      this = *v17;
      if (*v17)
      {
      }

      v10 |= v13;
      v11 += 64;
      v12 -= 64;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  if ((v5 & ~v10) != 0)
  {
    v14 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(v3 + 2);
      *v17 = 136315650;
      *&v17[4] = v16;
      v18 = 2048;
      v19 = v5;
      v20 = 2048;
      v21 = v10;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[SFBSystemShellComputeNode] (%s) Mismatching protection options for input texture %llu and output texture %llu. Skipping compute for this frame.", v17, 0x20u);
    }
  }

  return (v5 & ~v10) != 0;
}

void re::SFBSystemShellTileDownsampleNode::execute(re::SFBSystemShellTileDownsampleNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  {

    re::RenderGraphMRCNode::execute(this, a2);
  }
}

id re::SFBSystemShellTileDownsampleNode::setupEncoder(re::SFBSystemShellTileDownsampleNode *this, re::RenderGraphContext *a2, id *a3)
{
  v5 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v5)
  {
    v6 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ViewportPercentsData is missing in blur pipeline. Using default values.", v8, 2u);
    }
  }

  re::allocViewportPercentsBuffer(v8, *a2, v5);
  return [*a3 setTileBuffer:v10 offset:v9 atIndex:0];
}

void re::SFBSystemShellComputeNode::execute(re::SFBSystemShellComputeNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  {

    re::RenderGraphComputeNodeBase::execute(this, a2);
  }
}

void re::SFBSystemShellMeshNode::execute(re::SFBSystemShellMeshNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  {
    re::RenderGraphContext::acquireManagedRenderCommandEncoder(a2, 0, v5);
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v5);
    re::RenderGraphMeshNode::execute(this, a2);
  }
}

void re::SFBSystemShellComputeNode::~SFBSystemShellComputeNode(re::SFBSystemShellComputeNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellBlurTAANode::~SFBSystemShellBlurTAANode(re::SFBSystemShellBlurTAANode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellStencilBlurMeshNode::~SFBSystemShellStencilBlurMeshNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellDownsampleRawNodeCompute::~SFBSystemShellDownsampleRawNodeCompute(re::SFBSystemShellDownsampleRawNodeCompute *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellReprojectAndRectifyNode::~SFBSystemShellReprojectAndRectifyNode(re::SFBSystemShellReprojectAndRectifyNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellReprojectNode::~SFBSystemShellReprojectNode(re::SFBSystemShellReprojectNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellCreateTextureAliasNode::~SFBSystemShellCreateTextureAliasNode(re::SFBSystemShellCreateTextureAliasNode *this)
{
  *(this + 34) = 0;
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellMeshNode::~SFBSystemShellMeshNode(id *this)
{
  re::RenderGraphMeshNode::~RenderGraphMeshNode(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellTileDownsampleNode::~SFBSystemShellTileDownsampleNode(re::SFBSystemShellTileDownsampleNode *this)
{
  re::RenderGraphMRCNode::~RenderGraphMRCNode(this);

  JUMPOUT(0x1E6906520);
}

re::CameraMatrices *re::CameraMatrices::CameraMatrices(re::CameraMatrices *this, re::Allocator *a2, unint64_t a3)
{
  *this = &unk_1F5D03790;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 15) = 0;
  *(this + 128) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 160) = 1;
  *(this + 1) = a2;
  re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this + 1, a3);
  ++*(this + 8);
  *(this + 6) = a2;
  re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this + 6, a3);
  ++*(this + 18);
  *(this + 11) = a2;
  re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this + 11, a3);
  ++*(this + 28);
  *(this + 160) = a3;
  return this;
}

uint64_t re::RenderGraphContext::tryGetRenderGraphDataPipe(re::RenderGraphContext *this, const char *a2)
{
  v2 = &unk_1ECF17000;
  {
    v6 = a2;
    v7 = this;
    v2 = &unk_1ECF17000;
    v5 = v4;
    a2 = v6;
    this = v7;
    if (v5)
    {
      re::RenderGraphContext::tryGetRenderGraphDataPipe(unsigned long)::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v6);
      v2 = &unk_1ECF17000;
      a2 = v6;
      this = v7;
    }
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(*(this + 146), &a2[64 * v2[347] - 0x61C8864680B583E9 + (v2[347] >> 2)] ^ v2[347]);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

BOOL re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_0,BOOL ()(re::MeshPartDrawContext const&)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  v5 = &v3[14 * v4];
  if (v4)
  {
    v6 = 112 * v4;
    while (*v3 != *a2)
    {
      v3 += 14;
      v6 -= 112;
      if (!v6)
      {
        v3 = v5;
        return v3 != v5;
      }
    }
  }

  return v3 != v5;
}

void *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_0,BOOL ()(re::MeshPartDrawContext const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D10FC0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_0,BOOL ()(re::MeshPartDrawContext const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D10FC0;
  a2[1] = v2;
  return a2;
}

uint64_t re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(a1);
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x21)
      {
        v7 = v5;
        v8 = *(a1 + 32);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 40) = v6;
      (*(**(a2 + 40) + 24))(*(a2 + 40));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 40) != a1)
    {
      result = (*(**(a1 + 32) + 40))(*(a1 + 32));
    }

    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_2,BOOL ()(re::MeshPartDrawContext const&)>::operator()(uint64_t a1, float32x4_t *a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 24))
  {
    v5 = v4 + 32;
  }

  else
  {
    v5 = *(v4 + 40);
  }

  v6 = v5 + 40 * *(v4 + 16);
  v7 = *(v6 - 24);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v6 - 8);
  v9 = v8 + 6;
  v10 = 112 * v7;
  for (i = v8 + 2; ; i += 7)
  {
    if (v12)
    {
      if ((a2[10].i8[1] & 1) != 0 && *(v12 + 1) == 1 && a2[11].f32[0] == *(v12 + 4))
      {
        v14 = a2[10].u8[3] == *(v12 + 8) ? v9[-6].i64[1] : 0;
      }

      else
      {
        v14 = 0;
      }

      v15 = a2[12].i32[1];
      if (re::isBoundingBoxInsideVCAPlanes(a2[1].i64[1] + 416, a2 + 5, v14, a2[12].i32[2], &a2[10], a2 + 9, v9, v13, i, 4, v9[-6].i64[1], v9[-5].i32[0]))
      {
        if ((v15 & 0x4000000) == 0)
        {
          break;
        }
      }
    }

    v9 += 7;
    v10 -= 112;
    if (!v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_2,BOOL ()(re::MeshPartDrawContext const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11028;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_2,BOOL ()(re::MeshPartDrawContext const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11028;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 416 * v6 + 16;
}

void anonymous namespace::computeWarpTransforms(uint64_t a1, unint64_t a2, uint64_t a3, simd_float4 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v13 = a5;
  v14 = a3 + (a5 << 6);
  WarpMatrixForSourceProjection = re::createWarpMatrixForSourceProjection(*(v14 + 256), *(v14 + 272), *(v14 + 288), *(v14 + 304), *a4, a4[1], a4[2], a4[3], a1, a2, a3, a4, a5, a6, a7, a8, *(v14 + 256), *(v14 + 272), *(v14 + 288), *(v14 + 304), *v14, *(v14 + 16), *(v14 + 32), *(v14 + 48));
  if (a2 <= v8)
  {
    re::internal::assertLog(6, v15, WarpMatrixForSourceProjection, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v51, v52);
    __break(1u);
  }

  else
  {
    v23 = (a1 + 192 * v13);
    *v23[5].i64 = WarpMatrixForSourceProjection;
    v23[5].i32[2] = v17;
    v23[6].i64[0] = v18;
    v23[6].i32[2] = v19;
    v23[7].i64[0] = v20;
    v23[7].i32[2] = v21;
    LODWORD(v22) = *(a3 + 420);
    v24 = a3 + 16 * v13;
    ViewportToNDCReprojectionMatrix = re::createViewportToNDCReprojectionMatrix(*(v24 + 384), *(v24 + 392), v23[5], v23[6], v23[7], *(a3 + 416), v22);
    v23[5].i32[2] = v26;
    *v23[5].i64 = ViewportToNDCReprojectionMatrix;
    v23[6].i32[2] = v27;
    v23[6].i64[0] = v28;
    v23[7].i32[2] = v29;
    v23[7].i64[0] = v30;
    *v23[8].i64 = re::createWarpMatrixForSourceProjection(*(v14 + 256), *(v14 + 272), *(v14 + 288), *(v14 + 304), *a4, a4[1], a4[2], a4[3], v31, v32, v33, v34, v35, v36, v37, v38, *(v14 + 256), *(v14 + 272), *(v14 + 288), *(v14 + 304), *(v14 + 128), *(v14 + 144), *(v14 + 160), *(v14 + 176));
    v23[8].i32[2] = v39;
    v23[9].i32[2] = v40;
    v23[9].i64[0] = v41;
    v23[10].i64[0] = v42;
    v23[10].i32[2] = v43;
    LODWORD(v44) = *(a3 + 420);
    v45 = re::createViewportToNDCReprojectionMatrix(*(v24 + 384), *(v24 + 392), v23[8], v23[9], v23[10], *(a3 + 416), v44);
    v23[8].i32[2] = v46;
    *v23[8].i64 = v45;
    v23[9].i32[2] = v47;
    v23[9].i64[0] = v48;
    v23[10].i32[2] = v49;
    v23[10].i64[0] = v50;
  }
}

uint64_t re::internal::Callable<anonymous namespace::setReprojectionConstants(re::RenderGraphContext &,unsigned long,float,float,re::mtl::ComputeCommandEncoder,unsigned int)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D11090;
  v2 = *(a1 + 472);
  if (v2 != -1)
  {
    (off_1F5D11070[v2])(&v4, a1 + 448);
  }

  *(a1 + 472) = -1;
  return a1;
}

{
  *a1 = &unk_1F5D11090;
  v2 = *(a1 + 472);
  if (v2 != -1)
  {
    (off_1F5D11070[v2])(&v4, a1 + 448);
  }

  *(a1 + 472) = -1;
  return MEMORY[0x1E6906520](a1, 0x10A3C40DD184A7ELL);
}

void *re::internal::Callable<anonymous namespace::setReprojectionConstants(re::RenderGraphContext &,unsigned long,float,float,re::mtl::ComputeCommandEncoder,unsigned int)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator()(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = re::BufferSlice::contents((a1 + 448));
  memcpy(__dst, v6, *(a1 + 484));
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11 & 1;
    if (v11)
    {
      v13 = a2;
    }

    else
    {
      v13 = a3;
    }

    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v19[0] = *v13;
    v19[1] = v14;
    v19[2] = v15;
    v19[3] = v16;
    v11 = 0;
    v10 = 1;
  }

  while (v12);
  v17 = re::BufferSlice::contents((a1 + 448));
  return memcpy(v17, __dst, *(a1 + 484));
}

uint64_t re::internal::Callable<anonymous namespace::setReprojectionConstants(re::RenderGraphContext &,unsigned long,float,float,re::mtl::ComputeCommandEncoder,unsigned int)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11090;
  memcpy((a2 + 16), (a1 + 16), 0x1B0uLL);
  *(a2 + 448) = 0;
  *(a2 + 472) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a2 + 448, a1 + 448);
  *(a2 + 480) = *(a1 + 480);
  return a2;
}

uint64_t re::internal::Callable<anonymous namespace::setReprojectionConstants(re::RenderGraphContext &,unsigned long,float,float,re::mtl::ComputeCommandEncoder,unsigned int)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11090;
  memcpy((a2 + 16), (a1 + 16), 0x1B0uLL);
  *(a2 + 448) = 0;
  *(a2 + 472) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a2 + 448, a1 + 448);
  *(a2 + 480) = *(a1 + 480);
  return a2;
}

void re::RenderGraphMeshNode::~RenderGraphMeshNode(id *this)
{
  *this = &unk_1F5D15DC8;
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((this + 38));
  re::DynamicString::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::RenderGraphMeshNode::~RenderGraphMeshNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphMRCNode::~RenderGraphMRCNode(re::RenderGraphMRCNode *this)
{
  *this = &unk_1F5D14908;
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(this + 400);
  v2 = *(this + 49);
  if (v2)
  {

    *(this + 49) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicString::deinit((this + 288));
  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::RenderGraphMRCNode::~RenderGraphMRCNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::tryGet<re::CameraStreamContext>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re19CameraStreamContextE";
  if (("N2re19CameraStreamContextE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re19CameraStreamContextE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re21BlurReprojectionStateE";
  if (("N2re21BlurReprojectionStateE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re21BlurReprojectionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::VCARenderData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re13VCARenderDataE";
  if (("N2re13VCARenderDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re13VCARenderDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::get<re::RendererGlobals>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re15RendererGlobalsE";
  if (("N2re15RendererGlobalsE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re15RendererGlobalsE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,1ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<re::FilteredMeshPass,1ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 24 * *a1;
    *(v5 + 16) = *a2;
    v6 = v5 + 16;
    v7 = *(a2 + 8);
    *(v6 + 8) = v7;
    if (v7 == 1)
    {
      v8 = *(a2 + 9);
      *(v6 + 13) = *(a2 + 13);
      *(v6 + 9) = v8;
    }

    v9 = *(a2 + 14);
    *(v6 + 18) = *(a2 + 18);
    *(v6 + 14) = v9;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,1ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

float32x4_t *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_1,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 1);
  v6 = *v5 + 1;
  *v5 = v6;
  if ((*(a2 + 145) & 1) == 0)
  {
    *(a2 + 145) = 1;
  }

  *(a2 + 146) = v6;
  v7 = *(*(a1 + 1) + 24);
  v8 = *(a3 + 161) & 1;
  v9 = *(a3 + 176);
  v10 = *(a3 + 163);
  v11 = *(a3 + 200);
  if (*(v7 + 444))
  {
    v12 = v7 + 416;
LABEL_5:
    v43 = 0uLL;
    v44.i64[0] = 0;
    if (v43.i32[3] == 0x7FFFFFFF)
    {
      *(v13 + 8) = *(a2 + 88);
      *(v13 + 16) = v6;
      *(v13 + 17) = v8;
      *(v13 + 20) = v9;
      *(v13 + 24) = v10;
      *(v13 + 28) = v11;
      ++*(v7 + 456);
    }

    goto LABEL_24;
  }

  v14 = *(v7 + 16);
  if (v14)
  {
    v15 = 24 * v14;
    v16 = v7 + 32;
    v17 = *(a2 + 88);
    v18 = 32;
    v19 = 24 * v14;
    do
    {
      if (*(v7 + v18) == v17)
      {
        goto LABEL_24;
      }

      v18 += 24;
      v19 -= 24;
    }

    while (v19);
    if ((v14 & 0xFFFFFFF0) != 0)
    {
      v12 = v7 + 416;
      if (!*(v7 + 416))
      {
        v20 = *v7;
        if (!*v7)
        {
        }

        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v7 + 416, v20, 32);
        v21 = *(v7 + 16);
        if (!v21)
        {
          goto LABEL_20;
        }

        v15 = 24 * v21;
      }

      do
      {
        v43 = 0uLL;
        v44.i64[0] = 0;
        if (v43.i32[3] == 0x7FFFFFFF)
        {
          *(v22 + 8) = *v16;
          *(v22 + 16) = *(v16 + 8);
          ++*(v7 + 456);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
LABEL_20:
      *(v7 + 16) = 0;
      ++*(v7 + 24);
      goto LABEL_5;
    }

    if (v14 >= 0x10)
    {
LABEL_30:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return result;
    }
  }

  else
  {
    v17 = *(a2 + 88);
  }

  v23 = v7 + 24 * v14;
  *(v23 + 32) = v17;
  *(v23 + 40) = v6;
  *(v23 + 41) = v8;
  *(v23 + 44) = v9;
  *(v23 + 48) = v10;
  *(v23 + 49) = v43.i16[0];
  *(v23 + 51) = v43.i8[2];
  *(v23 + 52) = v11;
  v24 = *(v7 + 16);
  ++*(v7 + 24);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  *(v7 + 16) = v26;
  if (v25)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, v26);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v40, v41);
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
  result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(*(*(a1 + 1) + 16) + 192, (a2 + 88));
  if (result)
  {
    v28 = result;
    result = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](*(*(a1 + 1) + 8) + 56, *(a2 + 84));
    v29 = 0;
    LODWORD(v30) = 0;
    HIDWORD(v30) = 0;
    *(&v30 + 4) = v28->u32[1];
    *&v31 = 0;
    *(&v31 + 1) = v28->u32[2];
    v32 = vnegq_f32(v28[1]);
    v32.i32[3] = 1.0;
    v33 = *result;
    v34 = result[1];
    v35 = result[2];
    v36 = result[3];
    v42[0] = v28->u32[0];
    v42[1] = v30;
    v42[2] = v31;
    v42[3] = v32;
    do
    {
      *(&v43 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(v42[v29])), v34, *&v42[v29], 1), v35, v42[v29], 2), v36, v42[v29], 3);
      ++v29;
    }

    while (v29 != 4);
    v37 = v44;
    v38 = v45;
    v39 = v46;
    *result = v43;
    result[1] = v37;
    result[2] = v38;
    result[3] = v39;
  }

  return result;
}

void *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_1,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D110F8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_1,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D110F8;
  a2[1] = v2;
  return a2;
}

uint64_t re::HashTable<unsigned long long,re::anonymous namespace::SPlatterDrawInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 32 * v7 + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 32 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 32 * v6 + 8) != a3)
  {
    LODWORD(v9) = *(v8 + 32 * v7) & 0x7FFFFFFF;
    while (1)
    {
      LODWORD(v7) = v9;
      v9 = *(v8 + 32 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 32 * v9 + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_7:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::anonymous namespace::SPlatterDrawInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                *(v20 + 8) = *v17;
                *(v20 + 16) = *(v17 + 8);
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 32 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 32 * v4;
}

uint64_t *re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::copy(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *result;
  if (*a2 >= *result)
  {
    v11 = a2 + 2;
    v12 = result + 2;
    if (v4)
    {
      v13 = 112 * v4;
      v14 = result + 2;
      v15 = a2 + 2;
      do
      {
        result = re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(v14, v15);
        v15 += 14;
        v14 += 14;
        v13 -= 112;
      }

      while (v13);
      v4 = *v2;
    }

    if (v4 != v3)
    {
      v16 = 14 * v4;
      v17 = &v11[14 * v4];
      v18 = &v12[v16];
      v19 = v17;
      do
      {
        *v18 = 0;
        *(v18 + 2) = 0;
        v20 = *v19;
        v19 += 14;
        result = memcpy(v18 + 2, v17 + 2, 16 * v20);
        *v18 = v20;
        v18 += 14;
        v17 = v19;
      }

      while (v19 != &v11[14 * v3]);
    }
  }

  else
  {
    v5 = result + 2;
    if (v3)
    {
      v6 = 112 * v3;
      v7 = a2 + 2;
      v8 = result + 2;
      do
      {
        result = re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(v8, v7);
        v7 += 14;
        v8 += 14;
        v6 -= 112;
      }

      while (v6);
      v4 = *v2;
    }

    if (v3 != v4)
    {
      v9 = &v5[14 * v4];
      v10 = &v5[14 * v3];
      do
      {
        *v10 = 0;
        ++*(v10 + 2);
        v10 += 14;
      }

      while (v10 != v9);
    }
  }

  *v2 = v3;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,false>(unint64_t result, float *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = a2 - 8;
  v11 = a2 - 12;
  v12 = result;
  while (1)
  {
    result = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v54 = *(a2 - 4);
        v53 = a2 - 4;
        if (v54 <= *v12)
        {
          return;
        }

LABEL_106:
        v132 = *v12;
        *v12 = *v53;
        v59 = v132;
LABEL_107:
        *v53 = v59;
        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v55 = (v12 + 16);
      v60 = *(v12 + 16);
      v61 = (v12 + 32);
      v62 = *(v12 + 32);
      if (v60 <= *v12)
      {
        if (v62 > v60)
        {
          v100 = *v55;
          *v55 = *v61;
          *v61 = v100;
          if (*(v12 + 16) > *v12)
          {
            v137 = *v12;
            *v12 = *v55;
            *v55 = v137;
          }
        }
      }

      else
      {
        if (v62 > v60)
        {
          v133 = *v12;
          *v12 = *v61;
          v63 = v133;
          goto LABEL_176;
        }

        v140 = *v12;
        *v12 = *v55;
        *v55 = v140;
        if (v62 > *(v12 + 16))
        {
          v63 = *v55;
          *v55 = *v61;
LABEL_176:
          *v61 = v63;
        }
      }

      if (*v9 <= v61->n128_f32[0])
      {
        return;
      }

      v105 = *v61;
      *v61 = *v9;
      *v9 = v105;
      if (v61->n128_f32[0] <= v55->n128_f32[0])
      {
        return;
      }

      v106 = *v55;
      *v55 = *v61;
      *v61 = v106;
LABEL_180:
      if (*(v12 + 16) > *v12)
      {
        v141 = *v12;
        *v12 = *v55;
        *v55 = v141;
      }

      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2 - 4, a5);
      return;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v64 = (v12 + 16);
      v66 = v12 == a2 || v64 == a2;
      if (a4)
      {
        if (!v66)
        {
          v67 = 0;
          v68 = v12;
          do
          {
            v69 = v64;
            v70 = *(v68 + 16);
            if (v70 > *v68)
            {
              v134 = *(v68 + 20);
              v142 = *(v68 + 28);
              v71 = v67;
              while (1)
              {
                *(v12 + v71 + 16) = *(v12 + v71);
                if (!v71)
                {
                  break;
                }

                v72 = *(v12 + v71 - 16);
                v71 -= 16;
                if (v70 <= v72)
                {
                  v73 = v12 + v71 + 16;
                  goto LABEL_126;
                }
              }

              v73 = v12;
LABEL_126:
              *v73 = v70;
              *(v73 + 12) = v142;
              *(v73 + 4) = v134;
            }

            v64 = v69 + 4;
            v67 += 16;
            v68 = v69;
          }

          while (v69 + 4 != a2);
        }
      }

      else if (!v66)
      {
        do
        {
          v101 = v64;
          v102 = *(result + 16);
          if (v102 > *result)
          {
            v138 = *(result + 20);
            v144 = *(result + 28);
            v103 = v64;
            do
            {
              *v103 = *(v103 - 1);
              v104 = *(v103 - 8);
              v103 -= 4;
            }

            while (v102 > v104);
            *v103 = v102;
            *(v103 + 3) = v144;
            *(v103 + 1) = v138;
          }

          v64 += 4;
          result = v101;
        }

        while ((v101 + 16) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v74 = (v13 - 2) >> 1;
        v75 = v74;
        do
        {
          v76 = v75;
          if (v74 >= v75)
          {
            v77 = (2 * v75) | 1;
            v78 = (v12 + 16 * v77);
            if (2 * v76 + 2 < v13 && *v78 > v78[4])
            {
              v78 += 4;
              v77 = 2 * v76 + 2;
            }

            v79 = (v12 + 16 * v76);
            v80 = *v79;
            if (*v78 <= *v79)
            {
              v143 = *(v79 + 3);
              v135 = *(v79 + 1);
              do
              {
                v81 = v79;
                v79 = v78;
                *v81 = *v78;
                if (v74 < v77)
                {
                  break;
                }

                v82 = 2 * v77;
                v77 = (2 * v77) | 1;
                v78 = (v12 + 16 * v77);
                v83 = v82 + 2;
                if (v83 < v13 && *v78 > v78[4])
                {
                  v78 += 4;
                  v77 = v83;
                }
              }

              while (*v78 <= v80);
              *v79 = v80;
              *(v79 + 3) = v143;
              *(v79 + 1) = v135;
            }
          }

          v75 = v76 - 1;
        }

        while (v76);
        do
        {
          v84 = 0;
          v136 = *v12;
          v85 = v12;
          do
          {
            v86 = v85;
            v87 = &v85[4 * v84];
            v85 = v87 + 4;
            v88 = 2 * v84;
            v84 = (2 * v84) | 1;
            v89 = v88 + 2;
            if (v89 < v13)
            {
              v91 = v87[8];
              v90 = v87 + 8;
              if (*(v90 - 4) > v91)
              {
                v85 = v90;
                v84 = v89;
              }
            }

            *v86 = *v85;
          }

          while (v84 <= ((v13 - 2) >> 1));
          a2 -= 4;
          if (v85 == a2)
          {
            *v85 = v136;
          }

          else
          {
            *v85 = *a2;
            *a2 = v136;
            v92 = (v85 - v12 + 16) >> 4;
            v93 = v92 < 2;
            v94 = v92 - 2;
            if (!v93)
            {
              v95 = v94 >> 1;
              v96 = (v12 + 16 * v95);
              v97 = *v85;
              if (*v96 > *v85)
              {
                v112 = *(v85 + 3);
                v109 = *(v85 + 1);
                do
                {
                  v98 = v85;
                  v85 = v96;
                  *v98 = *v96;
                  if (!v95)
                  {
                    break;
                  }

                  v95 = (v95 - 1) >> 1;
                  v96 = (v12 + 16 * v95);
                }

                while (*v96 > v97);
                *v85 = v97;
                *(v85 + 3) = v112;
                *(v85 + 1) = v109;
              }
            }
          }

          v93 = v13-- <= 2;
        }

        while (!v93);
      }

      return;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = *v9;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 <= *v12)
      {
        if (v16 > v17)
        {
          v115 = *v14;
          *v14 = *v9;
          *v9 = v115;
          if (*v14 > *v12)
          {
            v116 = *v12;
            *v12 = *v14;
            *v14 = v116;
          }
        }
      }

      else
      {
        if (v16 > v17)
        {
          v113 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v119 = *v12;
        *v12 = *v14;
        *v14 = v119;
        if (*v9 > *v14)
        {
          v113 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v113;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 4;
      v21 = *(v14 - 4);
      v22 = *v10;
      if (v21 <= *(v12 + 16))
      {
        if (v22 > v21)
        {
          v120 = *v20;
          *v20 = *v10;
          *v10 = v120;
          if (*v20 > *v19)
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 > v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10 > *v20)
        {
          v122 = *v20;
          *v20 = *v10;
          v23 = v122;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (v12 + 32);
      v28 = v14[4];
      v27 = (v14 + 4);
      v29 = v28;
      v30 = *v11;
      if (v28 <= *(v12 + 32))
      {
        if (v30 > v29)
        {
          v123 = *v27;
          *v27 = *v11;
          *v11 = v123;
          if (*v27 > *v26)
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 > v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11 > *v27)
        {
          v124 = *v27;
          *v27 = *v11;
          v31 = v124;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = *v27;
      if (*v15 <= *v20)
      {
        if (v35 > v34)
        {
          v126 = *v15;
          *v15 = *v27;
          *v27 = v126;
          if (*v15 > *v20)
          {
            v127 = *v20;
            *v20 = *v15;
            *v15 = v127;
          }
        }
      }

      else
      {
        if (v35 > v34)
        {
          v125 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v128 = *v20;
        *v20 = *v15;
        *v15 = v128;
        if (*v27 > *v15)
        {
          v125 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v125;
        }
      }

      v129 = *v12;
      *v12 = *v15;
      a5 = v129;
      *v15 = v129;
      goto LABEL_58;
    }

    v18 = *v12;
    if (*v12 <= *v14)
    {
      if (v16 > v18)
      {
        v117 = *v12;
        *v12 = *v9;
        a5 = v117;
        *v9 = v117;
        if (*v12 > *v14)
        {
          v118 = *v14;
          *v14 = *v12;
          a5 = v118;
          *v12 = v118;
        }
      }

      goto LABEL_58;
    }

    if (v16 <= v18)
    {
      v121 = *v14;
      *v14 = *v12;
      a5 = v121;
      *v12 = v121;
      if (*v9 <= *v12)
      {
        goto LABEL_58;
      }

      v114 = *v12;
      *v12 = *v9;
    }

    else
    {
      v114 = *v14;
      *v14 = *v9;
    }

    a5 = v114;
    *v9 = v114;
LABEL_58:
    --a3;
    a5.n128_u32[0] = *v12;
    if ((a4 & 1) != 0 || *(v12 - 16) > a5.n128_f32[0])
    {
      v36 = 0;
      v110 = *(v12 + 12);
      v107 = *(v12 + 4);
      do
      {
        v37 = *(v12 + v36 + 16);
        v36 += 16;
      }

      while (v37 > a5.n128_f32[0]);
      v38 = v12 + v36;
      v39 = a2;
      if (v36 == 16)
      {
        v39 = a2;
        do
        {
          if (v38 >= v39)
          {
            break;
          }

          v41 = *(v39 - 4);
          v39 -= 4;
        }

        while (v41 <= a5.n128_f32[0]);
      }

      else
      {
        do
        {
          v40 = *(v39 - 4);
          v39 -= 4;
        }

        while (v40 <= a5.n128_f32[0]);
      }

      v12 += v36;
      if (v38 < v39)
      {
        v42 = v39;
        do
        {
          v130 = *v12;
          *v12 = *v42;
          *v42 = v130;
          do
          {
            v43 = *(v12 + 16);
            v12 += 16;
          }

          while (v43 > a5.n128_f32[0]);
          do
          {
            v44 = v42[-1].n128_f32[0];
            --v42;
          }

          while (v44 <= a5.n128_f32[0]);
        }

        while (v12 < v42);
      }

      if (v12 - 16 != result)
      {
        *result = *(v12 - 16);
      }

      *(v12 - 16) = a5.n128_u32[0];
      *(v12 - 4) = v110;
      *(v12 - 12) = v107;
      if (v38 < v39)
      {
        goto LABEL_79;
      }

      v45 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *>(result, v12 - 16, a5);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *>(v12, a2, v46))
      {
        a2 = (v12 - 16);
        if (!v45)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v45)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,false>(result, (v12 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v111 = *(v12 + 12);
      v108 = *(v12 + 4);
      if (a5.n128_f32[0] <= *v9)
      {
        v48 = v12 + 16;
        do
        {
          v12 = v48;
          if (v48 >= a2)
          {
            break;
          }

          v48 += 16;
        }

        while (a5.n128_f32[0] <= *v12);
      }

      else
      {
        do
        {
          v47 = *(v12 + 16);
          v12 += 16;
        }

        while (a5.n128_f32[0] <= v47);
      }

      v49 = a2;
      if (v12 < a2)
      {
        v49 = a2;
        do
        {
          v50 = *(v49 - 4);
          v49 -= 4;
        }

        while (a5.n128_f32[0] > v50);
      }

      while (v12 < v49)
      {
        v131 = *v12;
        *v12 = *v49;
        *v49 = v131;
        do
        {
          v51 = *(v12 + 16);
          v12 += 16;
        }

        while (a5.n128_f32[0] <= v51);
        do
        {
          v52 = *(v49 - 4);
          v49 -= 4;
        }

        while (a5.n128_f32[0] > v52);
      }

      if (v12 - 16 != result)
      {
        *result = *(v12 - 16);
      }

      a4 = 0;
      *(v12 - 16) = a5.n128_u32[0];
      *(v12 - 4) = v111;
      *(v12 - 12) = v108;
    }
  }

  v55 = (v12 + 16);
  v56 = *(v12 + 16);
  v57 = *(a2 - 4);
  v53 = a2 - 4;
  v58 = v57;
  if (v56 <= *v12)
  {
    if (v58 <= v56)
    {
      return;
    }

    v99 = *v55;
    *v55 = *v53;
    *v53 = v99;
    goto LABEL_180;
  }

  if (v58 > v56)
  {
    goto LABEL_106;
  }

  v139 = *v12;
  *v12 = *v55;
  *v55 = v139;
  if (*v53 > *(v12 + 16))
  {
    v59 = *v55;
    *v55 = *v53;
    goto LABEL_107;
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,0>(__n128 *a1, __n128 *a2, float *a3, _OWORD *a4, unsigned __int32 *a5, __n128 result)
{
  v6 = a2->n128_f32[0];
  v7 = *a3;
  if (a2->n128_f32[0] <= a1->n128_f32[0])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[0] > a1->n128_f32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 > a2->n128_f32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 > a2->n128_f32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[0] > a1->n128_f32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = *a5;
  if (*a5 > *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = *a4;
    if (*a4 > *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_f32[0] = *a3;
      if (*a3 > a2->n128_f32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[0];
        if (a2->n128_f32[0] > a1->n128_f32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = *(a2 - 16);
      v4 = (a2 - 16);
      v9 = v8;
      if (v7 > *a1)
      {
        if (v9 <= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*v4 <= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 <= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) > *a1)
      {
        v40 = *a1;
        *a1 = *v6;
        *v6 = v40;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16), a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = (a2 - 16);
    v21 = *a1;
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_f32[0] > v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 <= v17)
    {
      v37 = *a1;
      *a1 = *v6;
      *v6 = v37;
      if (v19 <= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (*v20 <= v18->n128_f32[0])
    {
      return 1;
    }

    v38 = *v18;
    *v18 = *v20;
    *v20 = v38;
    if (v18->n128_f32[0] <= v6->n128_f32[0])
    {
      return 1;
    }

    v39 = *v6;
    *v6 = *v18;
    *v18 = v39;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 16);
    v4 = (a2 - 16);
    if (v5 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 <= *a1)
  {
    if (v12 > v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_f32[0] > v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 <= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 <= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    if (*v30 > v11->n128_f32[0])
    {
      v42 = *(v30 + 4);
      v43 = *(v30 + 12);
      v34 = v31;
      while (1)
      {
        *(a1 + v34 + 48) = *(a1 + v34 + 32);
        if (v34 == -32)
        {
          break;
        }

        v35 = *(a1 + v34 + 16);
        v34 -= 16;
        if (v33 <= v35)
        {
          v36 = a1 + v34 + 48;
          goto LABEL_41;
        }
      }

      v36 = a1;
LABEL_41:
      *v36 = v33;
      *(v36 + 4) = v42;
      *(v36 + 12) = v43;
      if (++v32 == 8)
      {
        return v30 + 16 == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    v30 += 16;
    if (v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_3,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  v3 = a3[2].i64[0];
  if (v3)
  {
    v5 = v3[1];
    v25[0] = *v3;
    v25[1] = v5;
    v6 = *(result + 8);
    if (*(v6 + 24))
    {
      v7 = v6 + 32;
    }

    else
    {
      v7 = *(v6 + 40);
    }

    v8 = v7 + 40 * *(v6 + 16);
    v9 = *(v8 - 24);
    if (v9)
    {
      v10 = a2;
      v24 = a3[12].i32[2];
      v11 = *(v8 - 8);
      v23 = &v11[7 * v9];
      v12 = -1;
      v13 = result;
      do
      {
        if (v14)
        {
          if (a3[10].i8[1])
          {
            v15 = v10;
            if (*(v14 + 1) == 1 && a3[11].f32[0] == *(v14 + 4))
            {
              v16 = a3[10].u8[3] == *(v14 + 8) ? v11->i64[1] : 0;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
            v15 = v10;
          }

          v17 = *(v15 + 3) == 2 ? *(v15 + 32) : 1;
          if (v17 >= 1)
          {
            v18 = v14;
            for (i = 0; i != v17; ++i)
            {
              v20 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](*(v13 + 16) + 56, (i + *(v10 + 84)));
              if (re::isBoundingBoxInsideVCAPlanes(v25, v20, v16, v24, &a3[10], a3 + 9, v11 + 6, v21, v11 + 2, 4, v11->i64[1], v11[1].i32[0]) && v12 >= *v18)
              {
                v12 = *v18;
              }
            }
          }
        }

        v11 += 7;
        result = v13;
      }

      while (v11 != v23);
      v22 = v12 - 1;
      a2 = v10;
    }

    else
    {
      v22 = -2;
    }

    if ((*(a2 + 145) & 1) == 0)
    {
      *(a2 + 145) = 1;
    }

    *(a2 + 146) = v22;
  }

  return result;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_3,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11160;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_3,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11160;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

unsigned __int8 *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_4,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(unsigned __int8 *result, uint64_t a2, float32x4_t *a3, unsigned __int8 *a4)
{
  v4 = a3[2].i64[0];
  if (v4)
  {
    v7 = result;
    {
      v9 = v4[1];
      v25[0] = *v4;
      v25[1] = v9;
      v10 = *(v7 + 1);
      if (*(v10 + 24))
      {
        v11 = v10 + 32;
      }

      else
      {
        v11 = *(v10 + 40);
      }

      v12 = v11 + 40 * *(v10 + 16);
      v13 = *(v12 - 24);
      if (v13)
      {
        v24 = a3[12].i32[2];
        v14 = *(v12 - 8);
        v23 = &v14[7 * v13];
        v15 = -1;
        v16 = v7;
        do
        {
          if (result)
          {
            if ((a3[10].i8[1] & 1) != 0 && result[1] == 1 && a3[11].f32[0] == *(result + 1))
            {
              v17 = a3[10].u8[3] == result[8] ? v14->i64[1] : 0;
            }

            else
            {
              v17 = 0;
            }

            v18 = *(a2 + 3) == 2 ? *(a2 + 32) : 1;
            if (v18 >= 1)
            {
              v19 = result;
              for (i = 0; i != v18; ++i)
              {
                v21 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](*(v16 + 3) + 56, (i + *(a2 + 84)));
                result = re::isBoundingBoxInsideVCAPlanes(v25, v21, v17, v24, &a3[10], a3 + 9, v14 + 6, v22, v14 + 2, 4, v14->i64[1], v14[1].i32[0]);
                if (result && v15 >= *v19)
                {
                  v15 = *v19;
                }
              }
            }
          }

          v14 += 7;
          v7 = v16;
        }

        while (v14 != v23);
        LOBYTE(v8) = v15 - 1;
      }

      else
      {
        LOBYTE(v8) = -2;
      }
    }

    if ((*(a2 + 145) & 1) == 0)
    {
      *(a2 + 145) = 1;
    }

    *(a2 + 146) = v8;
  }

  return result;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_4,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D111B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_4,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D111B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re21TonemapParametersDataE";
  if (("N2re21TonemapParametersDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re21TonemapParametersDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::internal::Callable<re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(re::RenderGraphContext &,re::mtl::ComputeCommandEncoder)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D11210;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_1F5D11070[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

{
  *a1 = &unk_1F5D11210;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_1F5D11070[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x1E6906520](a1, 0x10E3C40B2DC33E2);
}

void *re::internal::Callable<re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(re::RenderGraphContext &,re::mtl::ComputeCommandEncoder)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator()(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v40[21] = *MEMORY[0x1E69E9840];
  v6 = re::BufferSlice::contents((a1 + 16));
  v7 = memcpy(__dst, v6, *(a1 + 52));
  v15 = 0;
  v16 = &v39;
  v17 = 1;
  do
  {
    v18 = v17 & 1;
    if (v17)
    {
      v19 = a2;
    }

    else
    {
      v19 = a3;
    }

    v20 = v19[1];
    v36 = v20;
    v37 = *v19;
    v21 = v19[3];
    v34 = v21;
    v35 = v19[2];
    v22 = (a1 + 192 + (v15 << 6));
    WarpMatrixForSourceProjection = re::createWarpMatrixForSourceProjection(*v22, v22[1], v22[2], v22[3], v37, v20, v35, v21, v7, v8, v9, v10, v11, v12, v13, v14, *v22, v22[1], v22[2], v22[3], *(a1 + 64 + (v15 << 6)), *(a1 + 64 + (v15 << 6) + 16), *(a1 + 64 + (v15 << 6) + 32), *(a1 + 64 + (v15 << 6) + 48));
    v17 = 0;
    *(v16 + 2) = v24;
    *v16 = WarpMatrixForSourceProjection;
    *(v16 + 6) = v25;
    *(v16 + 10) = v26;
    v16[2] = v27;
    v16[4] = v28;
    v29 = *(a1 + 336);
    v30 = *(a1 + 320);
    v31 = (v29 + (v15 << 6));
    *v31 = v37;
    v31[1] = v36;
    v31[2] = v35;
    v31[3] = v34;
    *(v29 + 128) = v30;
    v16 = v40;
    v15 = 1;
  }

  while (v18);
  v32 = re::BufferSlice::contents((a1 + 16));
  return memcpy(v32, __dst, *(a1 + 52));
}

uint64_t re::internal::Callable<re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(re::RenderGraphContext &,re::mtl::ComputeCommandEncoder)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11210;
  *(a2 + 16) = 0;
  *(a2 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a2 + 16, a1 + 16);
  *(a2 + 48) = *(a1 + 48);
  memcpy((a2 + 64), (a1 + 64), 0x118uLL);
  return a2;
}

uint64_t re::internal::Callable<re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(re::RenderGraphContext &,re::mtl::ComputeCommandEncoder)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11210;
  *(a2 + 16) = 0;
  *(a2 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a2 + 16, a1 + 16);
  *(a2 + 48) = *(a1 + 48);
  memcpy((a2 + 64), (a1 + 64), 0x118uLL);
  return a2;
}

__n128 re::DynamicArray<re::TargetRead>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TargetRead>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  v5->n128_u64[0] = 0;
  v5->n128_u64[1] = -1;
  v5->n128_u64[0] = a2->n128_u64[0];
  v5->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  v5[1] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::TargetWrite>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TargetWrite>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  *v5 = 0;
  *(v5 + 8) = -1;
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  v7 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v7;
  *(v5 + 16) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphNode::configure(re::RenderGraphNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = 0x9E3779B97F4A7C17;
  v7 = *(this + 3);
  v6 = *(this + 4);
  v8 = strlen(v7);
  if (v8)
  {
    MurmurHash3_x64_128(v7, v8, 0, &v12);
    v9 = (v13 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(v6);
  if (v10)
  {
    MurmurHash3_x64_128(v6, v10, 0, &v12);
    v5 = ((v13 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12) - 0x61C8864680B583E9;
  }

  *(this + 6) = ((v9 >> 2) + (v9 << 6) + v5) ^ v9;
  v11 = *(this + 12);
  *(this + 12) = 0;
}

void re::RenderGraphNode::setup(re::RenderGraphNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v5 = *(this + 15);
  if (v5)
  {
    v6 = *(this + 17);
    v7 = v6 + 32 * v5;
    do
    {
      re::RenderGraphBuilder::read(a2, v6, v6 + 16);
      v6 += 32;
    }

    while (v6 != v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    v9 = *(this + 22);
    v10 = v9 + (v8 << 6);
    do
    {
      re::RenderGraphBuilder::write(a2, v9, v9 + 16);
      v9 += 64;
    }

    while (v9 != v10);
  }

  v11 = *(this + 25);
  if (v11)
  {
    v12 = *(this + 27);
    v13 = v12 + 32 * v11;
    do
    {
      re::RenderGraphBuilder::read(a2, v12, v12 + 16);
      v12 += 32;
    }

    while (v12 != v13);
  }

  v14 = *(this + 30);
  if (v14)
  {
    v15 = *(this + 32);
    v16 = v15 + (v14 << 6);
    do
    {
      re::RenderGraphBuilder::write(a2, v15, v15 + 16);
      v15 += 64;
    }

    while (v15 != v16);
  }

  *(a2 + 75) = *(this + 9);
  if (*(this + 88))
  {
    *(a2 + 616) = *(this + 88);
  }

  v17 = *(this + 10);
  if (v17)
  {
    *(a2 + 76) = v17;
  }
}

re::DynamicString ***re::RenderGraphNode::patch(re::DynamicString ***this, re::RenderGraphContext *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (this[5])
  {
    v2 = this;
    v3 = *(a2 + 146);
    v4 = "N2re28RenderGraphNodeExecutionDataE";
    if (("N2re28RenderGraphNodeExecutionDataE" & 0x8000000000000000) != 0)
    {
      v5 = ("N2re28RenderGraphNodeExecutionDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v6 = 5381;
      do
      {
        v4 = v6;
        v7 = *v5++;
        v6 = (33 * v6) ^ v7;
      }

      while (v7);
    }

    if (*(v3 + 16))
    {
      v8 = (((&this[7][8 * this[6] - 0xC3910C8D016B07DLL] + (this[6] >> 2) - 1) ^ this[6]) - 0x61C8864680B583E9 + (v4 << 6) + (v4 >> 2)) ^ v4;
      v9 = *(*(v3 + 24) + 4 * (v8 % *(v3 + 40)));
      if (v9 != 0x7FFFFFFF)
      {
        v10 = *(v3 + 32);
        while (*(v10 + 24 * v9 + 8) != v8)
        {
          v9 = *(v10 + 24 * v9) & 0x7FFFFFFF;
          if (v9 == 0x7FFFFFFF)
          {
            return this;
          }
        }

        v11 = *(v10 + 24 * v9 + 16);
        if (v11)
        {
          v12 = this[2];
          v13 = strlen(v12);
          if (v13)
          {
            MurmurHash3_x64_128(v12, v13, 0, &v23);
            v14 = (v24 - 0x61C8864680B583E9 + (v23 << 6) + (v23 >> 2)) ^ v23;
          }

          else
          {
            v14 = 0;
          }

          v23 = v14;
          this = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v11 + 8, &v23);
          if (this)
          {
            v15 = this[2];
            if (v15)
            {
              v16 = this[4];
              v17 = &v16[7 * v15];
              do
              {
                re::FixedArray<unsigned char>::FixedArray(&v23, v16);
                re::FixedArray<unsigned int>::FixedArray(&v26, v16 + 3);
                v29 = v16[6];
                v20 = v29;
                v21 = v2;
                v18 = re::scanForCopy(&v26, &v21, &v20);
                if (v18)
                {
                  v19 = v25;
                  v22[1] = 0;
                  v22[2] = 0;
                }

                if (v26)
                {
                  if (v27)
                  {
                    (*(*v26 + 40))();
                    v27 = 0;
                    v28 = 0;
                  }

                  v26 = 0;
                }

                this = v23;
                if (v23)
                {
                  if (v24)
                  {
                    this = (*(*v23 + 40))();
                  }
                }

                v16 += 7;
              }

              while (v16 != v17);
            }
          }
        }
      }
    }
  }

  return this;
}

void re::IntrospectionInfo<re::DynamicArray<re::TargetRead>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BEC60, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BEC60);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BED00);
      qword_1EE1BED00 = &unk_1F5D11310;
      __cxa_guard_release(&qword_1EE1BEC60);
    }
  }

  if ((_MergedGlobals_510 & 1) == 0)
  {
    v1 = qword_1EE1BEC10;
    if (qword_1EE1BEC10 || (v1 = re::allocInfo_TargetRead(a1), qword_1EE1BEC10 = v1, re::initInfo_TargetRead(v1, v2), (_MergedGlobals_510 & 1) == 0))
    {
      _MergedGlobals_510 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BED00, 0);
      qword_1EE1BED10 = 0x2800000003;
      dword_1EE1BED18 = v3;
      word_1EE1BED1C = 0;
      *&xmmword_1EE1BED20 = 0;
      *(&xmmword_1EE1BED20 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BED30 = v1;
      unk_1EE1BED38 = 0;
      qword_1EE1BED00 = &unk_1F5D11310;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&v13, &qword_1EE1BED00);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BED20 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::TargetWrite>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BEC68, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BEC68);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BED40);
      qword_1EE1BED40 = &unk_1F5D113A8;
      __cxa_guard_release(&qword_1EE1BEC68);
    }
  }

  if ((byte_1EE1BEBE9 & 1) == 0)
  {
    v1 = qword_1EE1BEC28;
    if (qword_1EE1BEC28 || (v1 = re::allocInfo_TargetWrite(a1), qword_1EE1BEC28 = v1, re::initInfo_TargetWrite(v1, v2), (byte_1EE1BEBE9 & 1) == 0))
    {
      byte_1EE1BEBE9 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BED40, 0);
      qword_1EE1BED50 = 0x2800000003;
      dword_1EE1BED58 = v3;
      word_1EE1BED5C = 0;
      *&xmmword_1EE1BED60 = 0;
      *(&xmmword_1EE1BED60 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BED70 = v1;
      unk_1EE1BED78 = 0;
      qword_1EE1BED40 = &unk_1F5D113A8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&v13, &qword_1EE1BED40);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BED60 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BufferRead>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BEC70, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BEC70);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BED80);
      qword_1EE1BED80 = &unk_1F5D11440;
      __cxa_guard_release(&qword_1EE1BEC70);
    }
  }

  if ((byte_1EE1BEBEA & 1) == 0)
  {
    v1 = qword_1EE1BEC40;
    if (qword_1EE1BEC40 || (v1 = re::allocInfo_BufferRead(a1), qword_1EE1BEC40 = v1, re::initInfo_BufferRead(v1, v2), (byte_1EE1BEBEA & 1) == 0))
    {
      byte_1EE1BEBEA = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BED80, 0);
      qword_1EE1BED90 = 0x2800000003;
      dword_1EE1BED98 = v3;
      word_1EE1BED9C = 0;
      *&xmmword_1EE1BEDA0 = 0;
      *(&xmmword_1EE1BEDA0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BEDB0 = v1;
      unk_1EE1BEDB8 = 0;
      qword_1EE1BED80 = &unk_1F5D11440;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&v13, &qword_1EE1BED80);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BEDA0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BufferWrite>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BEC78, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BEC78);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BEDC0);
      qword_1EE1BEDC0 = &unk_1F5D114D8;
      __cxa_guard_release(&qword_1EE1BEC78);
    }
  }

  if ((byte_1EE1BEBEB & 1) == 0)
  {
    v1 = qword_1EE1BEC58;
    if (qword_1EE1BEC58 || (v1 = re::allocInfo_BufferWrite(a1), qword_1EE1BEC58 = v1, re::initInfo_BufferWrite(v1, v2), (byte_1EE1BEBEB & 1) == 0))
    {
      byte_1EE1BEBEB = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BEDC0, 0);
      qword_1EE1BEDD0 = 0x2800000003;
      dword_1EE1BEDD8 = v3;
      word_1EE1BEDDC = 0;
      *&xmmword_1EE1BEDE0 = 0;
      *(&xmmword_1EE1BEDE0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BEDF0 = v1;
      qword_1EE1BEDF8 = 0;
      qword_1EE1BEDC0 = &unk_1F5D114D8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&v13, &qword_1EE1BEDC0);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BEDE0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEBF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEE00, "RenderGraphNode");
    __cxa_guard_release(&qword_1EE1BEBF8);
  }

  return &unk_1EE1BEE00;
}

void re::initInfo_RenderGraphNode(re *this, re::IntrospectionBase *a2)
{
  v32[0] = 0xA3C1F00635C716B4;
  v32[1] = "RenderGraphNode";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1BEBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBF0))
  {
    v5 = re::introspectionAllocator();
    v11 = re::introspect_RenderGraphNodeBase(1, v6, v7, v8, v9, v10);
    v12 = (*(*v5 + 32))(v5, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "RenderGraphNodeBase";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 3;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BECC0 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::IntrospectionInfo<re::StringID>::get(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "name";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BECC8 = v16;
    v17 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::TargetRead>>::get(v17);
    v18 = (*(*v17 + 32))(v17, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "TargetReads";
    *(v18 + 16) = &qword_1EE1BED00;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0xB800000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BECD0 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::TargetWrite>>::get(v19);
    v20 = (*(*v19 + 32))(v19, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "TargetWrites";
    *(v20 + 16) = &qword_1EE1BED40;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xE000000003;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1BECD8 = v20;
    v21 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BufferRead>>::get(v21);
    v22 = (*(*v21 + 32))(v21, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "BufferReads";
    *(v22 + 16) = &qword_1EE1BED80;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x6800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1BECE0 = v22;
    v23 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BufferWrite>>::get(v23);
    v24 = (*(*v23 + 32))(v23, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "BufferWrites";
    *(v24 + 16) = &qword_1EE1BEDC0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x9000000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1BECE8 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_size_t(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "ThreadgroupMemoryLength";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x4800000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1BECF0 = v28;
    v29 = re::introspectionAllocator();
    v30 = (*(*v29 + 32))(v29, 16, 8);
    *v30 = 2;
    *(v30 + 8) = 0;
    qword_1EE1BECF8 = v30;
    __cxa_guard_release(&qword_1EE1BEBF0);
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1BECC0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v31 = v33;
}

void *re::allocInfo_TargetRead(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEC00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEE90, "TargetRead");
    __cxa_guard_release(&qword_1EE1BEC00);
  }

  return &unk_1EE1BEE90;
}

void re::initInfo_TargetRead(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x10643527A3D5CELL;
  v18[1] = "TargetRead";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BEC08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC08))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_RenderGraphTargetHandle(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "targetHandle";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BEC80 = v8;
    v9 = re::introspectionAllocator();
    Settings = re::introspect_ReadSettings(1, v10, v11, v12, v13, v14);
    v16 = (*(*v9 + 32))(v9, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "settings";
    *(v16 + 16) = Settings;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x1000000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BEC88 = v16;
    __cxa_guard_release(&qword_1EE1BEC08);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BEC80;
  *(this + 9) = re::internal::defaultConstruct<re::TargetRead>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TargetRead>;
  *(this + 13) = re::internal::defaultConstructV2<re::TargetRead>;
  *(this + 14) = re::internal::defaultDestructV2<re::TargetRead>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::TargetRead>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  *(a3 + 16) = 0;
  *(a3 + 19) = 0;
  *&result = 2;
  *(a3 + 24) = 2;
  return result;
}

double re::internal::defaultConstructV2<re::TargetRead>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 19) = 0;
  *&result = 2;
  *(a1 + 24) = 2;
  return result;
}

void *re::allocInfo_TargetWrite(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEF20, "TargetWrite");
    __cxa_guard_release(&qword_1EE1BEC18);
  }

  return &unk_1EE1BEF20;
}

void re::initInfo_TargetWrite(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x1FC226FCD6FE15CLL;
  v18[1] = "TargetWrite";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BEC20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC20))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_RenderGraphTargetHandle(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "targetHandle";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BEC90 = v8;
    v9 = re::introspectionAllocator();
    v15 = re::introspect_WriteSettings(1, v10, v11, v12, v13, v14);
    v16 = (*(*v9 + 32))(v9, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "settings";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x1000000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BEC98 = v16;
    __cxa_guard_release(&qword_1EE1BEC20);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BEC90;
  *(this + 9) = re::internal::defaultConstruct<re::TargetWrite>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TargetWrite>;
  *(this + 13) = re::internal::defaultConstructV2<re::TargetWrite>;
  *(this + 14) = re::internal::defaultDestructV2<re::TargetWrite>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::TargetWrite>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = xmmword_1E31038B0;
  result = 0.0;
  *(a3 + 32) = xmmword_1E30474D0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::TargetWrite>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1E31038B0;
  result = 0.0;
  *(a1 + 32) = xmmword_1E30474D0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  return result;
}

void *re::allocInfo_BufferRead(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEFB0, "BufferRead");
    __cxa_guard_release(&qword_1EE1BEC30);
  }

  return &unk_1EE1BEFB0;
}

void re::initInfo_BufferRead(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xD20F3D0E03C2CLL;
  v18[1] = "BufferRead";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BEC38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC38))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_RenderGraphBufferHandle(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "bufferHandle";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BECA0 = v8;
    v9 = re::introspectionAllocator();
    Settings = re::introspect_ReadSettings(1, v10, v11, v12, v13, v14);
    v16 = (*(*v9 + 32))(v9, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "settings";
    *(v16 + 16) = Settings;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x1000000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BECA8 = v16;
    __cxa_guard_release(&qword_1EE1BEC38);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BECA0;
  *(this + 9) = re::internal::defaultConstruct<re::BufferRead>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BufferRead>;
  *(this + 13) = re::internal::defaultConstructV2<re::BufferRead>;
  *(this + 14) = re::internal::defaultDestructV2<re::BufferRead>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::BufferRead>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  *(a3 + 16) = 0;
  *(a3 + 19) = 0;
  *&result = 2;
  *(a3 + 24) = 2;
  return result;
}

double re::internal::defaultConstructV2<re::BufferRead>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 19) = 0;
  *&result = 2;
  *(a1 + 24) = 2;
  return result;
}

void *re::allocInfo_BufferWrite(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEC48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF040, "BufferWrite");
    __cxa_guard_release(&qword_1EE1BEC48);
  }

  return &unk_1EE1BF040;
}

void re::initInfo_BufferWrite(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x196FD864BC046BELL;
  v18[1] = "BufferWrite";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BEC50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC50))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_RenderGraphBufferHandle(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "bufferHandle";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BECB0 = v8;
    v9 = re::introspectionAllocator();
    v15 = re::introspect_WriteSettings(1, v10, v11, v12, v13, v14);
    v16 = (*(*v9 + 32))(v9, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "settings";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x1000000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BECB8 = v16;
    __cxa_guard_release(&qword_1EE1BEC50);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BECB0;
  *(this + 9) = re::internal::defaultConstruct<re::BufferWrite>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BufferWrite>;
  *(this + 13) = re::internal::defaultConstructV2<re::BufferWrite>;
  *(this + 14) = re::internal::defaultDestructV2<re::BufferWrite>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::BufferWrite>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = xmmword_1E31038B0;
  result = 0.0;
  *(a3 + 32) = xmmword_1E30474D0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::BufferWrite>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1E31038B0;
  result = 0.0;
  *(a1 + 32) = xmmword_1E30474D0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TargetRead>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::TargetRead>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TargetRead>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TargetRead>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::TargetRead>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 32 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = -1;
          *v11 = *v8;
          v11[1] = *(v8 + 8);
          *(v11 + 1) = *(v8 + 16);
          v8 += 32;
          v11 += 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TargetWrite>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::TargetWrite>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TargetWrite>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TargetWrite>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::TargetWrite>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + (v9 << 6);
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = -1;
          *v11 = *v8;
          v11[1] = *(v8 + 8);
          v12 = *(v8 + 16);
          v13 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v13;
          *(v11 + 1) = v12;
          v8 += 64;
          v11 += 8;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::TargetRead>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::TargetRead>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::TargetRead>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::TargetRead>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::TargetRead>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::TargetRead>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::TargetRead>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::TargetRead>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::TargetRead>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v10.n128_u64[0] = 0;
  v10.n128_u64[1] = -1;
  v12 = 2;
  re::DynamicArray<re::TargetRead>::add(this, &v10);
  v8 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::TargetRead>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::DynamicArray<re::TargetRead>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::TargetRead>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = -1;
        *(v7 + 16) = 0;
        *(v7 + 19) = 0;
        *(v7 + 24) = 2;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::TargetRead>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::TargetRead>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::TargetRead>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 32 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::TargetWrite>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::TargetWrite>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::TargetWrite>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::TargetWrite>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::TargetWrite>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::TargetWrite>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::TargetWrite>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::TargetWrite>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::TargetWrite>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v11 = 0u;
  v10[1] = -1;
  DWORD1(v11) = 1;
  v12 = xmmword_1E30474D0;
  v13 = 0u;
  DWORD2(v13) = 0;
  re::DynamicArray<re::TargetWrite>::add(this, v10);
  v8 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::TargetWrite>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void *re::DynamicArray<re::TargetWrite>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::TargetWrite>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 6;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = xmmword_1E31038B0;
        *(v7 + 32) = xmmword_1E30474D0;
        *(v7 + 48) = 0;
        *(v7 + 52) = 0;
        *(v7 + 56) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::TargetWrite>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::TargetWrite>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::TargetWrite>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 6);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BufferRead>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BufferRead>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BufferRead>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BufferRead>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::TargetRead>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::BufferRead>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::TargetRead>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::TargetRead>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BufferRead>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v10.n128_u64[0] = 0;
  v10.n128_u64[1] = -1;
  v12 = 2;
  re::DynamicArray<re::TargetRead>::add(this, &v10);
  v8 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::BufferRead>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::TargetRead>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::TargetRead>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::TargetRead>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}