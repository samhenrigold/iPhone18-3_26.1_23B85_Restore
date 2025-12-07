void sub_29C8E91EC()
{
  v7[6] = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDB8E50];
  v1 = *MEMORY[0x29EDB81C8];
  v7[0] = *MEMORY[0x29EDB8210];
  v7[1] = v1;
  v2 = *MEMORY[0x29EDB81F0];
  v7[2] = *MEMORY[0x29EDB81E8];
  v7[3] = v2;
  v3 = *MEMORY[0x29EDB8260];
  v7[4] = *MEMORY[0x29EDB81E0];
  v7[5] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:6];
  v5 = [v0 setWithArray:v4];
  v6 = qword_2A1A11BE8;
  qword_2A1A11BE8 = v5;
}

unsigned __int8 *sub_29C8E92D8(unsigned __int8 *result)
{
  v1 = result;
  if (result[48] != result[49])
  {
    SetExternalSourceEnabledForDataType();
    result = SetAccountNameEnabledForDataType();
  }

  if (v1[50] != v1[51])
  {
    SetExternalSourceEnabledForDataType();
    result = SetAccountNameEnabledForDataType();
  }

  if (v1[52] != v1[53])
  {
    SetExternalSourceEnabledForDataType();
    result = SetAccountNameEnabledForDataType();
  }

  if (v1[54] != v1[55])
  {
    SetExternalSourceEnabledForDataType();

    return SetAccountNameEnabledForDataType();
  }

  return result;
}