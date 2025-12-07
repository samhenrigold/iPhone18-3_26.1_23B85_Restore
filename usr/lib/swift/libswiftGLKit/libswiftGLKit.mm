uint64_t _indexHomogeneousValue<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 * *(*(a4 - 8) + 72)) >> 64 != (a2 * *(*(a4 - 8) + 72)) >> 63)
  {
    __break(1u);
  }

  return MEMORY[0x2A1C725E8]();
}

float _GLKMatrix2.subscript.getter(unint64_t a1, float a2, float a3, float a4, float a5)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    __break(1u);
  }

  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return *&v6[a1];
}

float _GLKVector2.subscript.getter(unint64_t a1, float a2, float a3)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1 > 1)
  {
    __break(1u);
  }

  *v4 = a2;
  *&v4[1] = a3;
  return *&v4[a1];
}

float _GLKMatrix3.subscript.getter(unint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 > 8)
  {
    __break(1u);
  }

  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v5 = *(v1 + 32);
  return *(v4 + a1);
}

float _GLKVector3.subscript.getter(unint64_t a1, float a2, float a3, float a4)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 > 2)
  {
    __break(1u);
  }

  *v5 = a2;
  *&v5[1] = a3;
  *&v5[2] = a4;
  return *&v5[a1];
}

float _GLKMatrix4.subscript.getter(unint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 > 0xF)
  {
    __break(1u);
  }

  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  return *(v5 + a1);
}

float _GLKVector4.subscript.getter(unint64_t a1, float a2, float a3, float a4, float a5)
{

  return _GLKVector4.subscript.getter(a1, a2, a3, a4, a5);
}

{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    __break(1u);
  }

  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return *&v6[a1];
}

float _GLKQuaternion.subscript.getter(unint64_t a1, float a2, float a3, float a4, float a5)
{

  return _GLKVector4.subscript.getter(a1, a2, a3, a4, a5);
}