uint64_t sub_1C6E5F0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v28 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_48:
    v27 = 0;
    return v27 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  while (1)
  {
    result = sub_1C6E6EB04(v14 + v16 * v12, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v12 == v11)
    {
      break;
    }

    sub_1C6E6EB04(v15 + v16 * v12, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    result = *v10;
    v18 = *v10 == *v7 && v10[1] == *(v7 + 1);
    if (!v18 && (result = sub_1C6EE54B0(), (result & 1) == 0) || (v19 = v10[2], v20 = *(v7 + 2), v21 = *(v19 + 16), v21 != *(v20 + 16)))
    {
LABEL_47:
      sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      goto LABEL_48;
    }

    if (v21)
    {
      v22 = v19 == v20;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v19 + 32);
      v24 = (v20 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_47;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      break;
    }

LABEL_20:
    v25 = v10[3];
    v26 = *(v7 + 3);
    if (v7[32] == 1)
    {
      if (v26 > 3)
      {
        if (v26 > 5)
        {
          if (v26 == 6)
          {
            if (v25 != 6)
            {
              goto LABEL_47;
            }
          }

          else if (v25 != 7)
          {
            goto LABEL_47;
          }
        }

        else if (v26 == 4)
        {
          if (v25 != 4)
          {
            goto LABEL_47;
          }
        }

        else if (v25 != 5)
        {
          goto LABEL_47;
        }
      }

      else if (v26 > 1)
      {
        if (v26 == 2)
        {
          if (v25 != 2)
          {
            goto LABEL_47;
          }
        }

        else if (v25 != 3)
        {
          goto LABEL_47;
        }
      }

      else if (v26)
      {
        if (v25 != 1)
        {
          goto LABEL_47;
        }
      }

      else if (v25)
      {
        goto LABEL_47;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_47;
    }

    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v27 = sub_1C6EE4A50();
    sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if ((v27 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5F458(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5F4B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5047646E41757063;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000055;
    }

    else
    {
      v5 = 0x80000001C6EF7AC0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x796C6E4F757063;
    }

    else
    {
      v4 = 7105633;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x5047646E41757063;
  v8 = 0x80000001C6EF7AC0;
  if (a2 == 2)
  {
    v8 = 0xE900000000000055;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x796C6E4F757063;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6EE54B0();
  }

  return v11 & 1;
}

uint64_t sub_1C6E5F638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6EA08();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E5F6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6EA5C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C6E5F730()
{
  result = qword_1EDEF7C78;
  if (!qword_1EDEF7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF7C78);
  }

  return result;
}

unint64_t sub_1C6E5F7B8()
{
  result = qword_1EDEF7C80;
  if (!qword_1EDEF7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF7C80);
  }

  return result;
}

unint64_t sub_1C6E5F810()
{
  result = qword_1EDEF7C70;
  if (!qword_1EDEF7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF7C70);
  }

  return result;
}

uint64_t sub_1C6E5F87C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1C6E5F8DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1C6E5F918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6EAB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C6E5F968()
{
  result = qword_1EDEF8F58;
  if (!qword_1EDEF8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8F58);
  }

  return result;
}

unint64_t sub_1C6E5F9F0()
{
  result = qword_1EDEF8F60;
  if (!qword_1EDEF8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8F60);
  }

  return result;
}

unint64_t sub_1C6E5FA48()
{
  result = qword_1EDEF8F50;
  if (!qword_1EDEF8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8F50);
  }

  return result;
}

unint64_t sub_1C6E5FAA0()
{
  result = qword_1EDEF8D30;
  if (!qword_1EDEF8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8D30);
  }

  return result;
}

unint64_t sub_1C6E5FB28()
{
  result = qword_1EDEF8D38;
  if (!qword_1EDEF8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8D38);
  }

  return result;
}

unint64_t sub_1C6E5FB80()
{
  result = qword_1EDEF8D28;
  if (!qword_1EDEF8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8D28);
  }

  return result;
}

unint64_t sub_1C6E5FBD4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C6E5FBFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E5FC18(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E5FC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6EB6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E5FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E5FD4C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2126E0);
  __swift_project_value_buffer(v0, qword_1EC2126E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA120;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "underlying_resource";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input_aliases";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "output_aliases";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "node_cache_policy";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "id";
  *(v15 + 8) = 2;
  *(v15 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E5FFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_1C6EE4400();
          sub_1C6EE44A0();
          goto LABEL_5;
        }

        sub_1C6E60130(a1, v5, a2, a3);
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_14;
          case 4:
            sub_1C6E601E4(a1, v5, a2, a3);
            break;
          case 5:
            sub_1C6E60298(a1, v5, a2, a3);
            break;
        }
      }

LABEL_5:
      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E60130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  sub_1C6E6989C(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4F0);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E601E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  sub_1C6E6989C(qword_1EDEF7208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy, &unk_1C6EEAC68);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E60298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E6989C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E6034C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E6049C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_1C6EE4400();
      sub_1C6EE4620();
    }

    if (*(v3[1] + 16))
    {
      sub_1C6EE4400();
      sub_1C6EE4620();
    }

    sub_1C6E606B8(v3, a1, a2, a3);
    sub_1C6E608D4(v3, a1, a2, a3);
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E6049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  sub_1C6E6EBC0(a1 + *(v12 + 28), v7, &qword_1EC1F7F10, &qword_1C6EE92A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7F10, &qword_1C6EE92A8);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  sub_1C6E6989C(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4F0);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
}

uint64_t sub_1C6E606B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  sub_1C6E6EBC0(a1 + *(v12 + 32), v7, &qword_1EC1F7508, &unk_1C6EE6690);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7508, &unk_1C6EE6690);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  sub_1C6E6989C(qword_1EDEF7208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy, &unk_1C6EEAC68);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
}

uint64_t sub_1C6E608D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  sub_1C6E6EBC0(a1 + *(v12 + 36), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E6989C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E60AF0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = sub_1C6E0C808(MEMORY[0x1E69E7CC0]);
  *(a2 + 1) = sub_1C6E0C808(v4);
  sub_1C6EE4420();
  v5 = a1[7];
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[9];
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a2[v9], 1, 1, v10);
}

uint64_t sub_1C6E60C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, &unk_1C6EEC620);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E60D34(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, &unk_1C6EEC658);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E60DA0(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, &unk_1C6EEC658);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E60E20()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2126F8);
  __swift_project_value_buffer(v0, qword_1EC2126F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_storage";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_spec";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E60FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6E6107C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6E61130(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E6107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  sub_1C6E6989C(qword_1EDEF8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage, &unk_1C6EEB528);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E61130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  sub_1C6E6989C(qword_1EDEF8DF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec, &unk_1C6EEC388);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E611E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E61254(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E61470(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E61254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  sub_1C6E6EBC0(a1 + *(v12 + 20), v7, &qword_1EC1F7820, &unk_1C6EEA180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7820, &unk_1C6EEA180);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6E6989C(qword_1EDEF8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage, &unk_1C6EEB528);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
}

uint64_t sub_1C6E61470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  sub_1C6E6EBC0(a1 + *(v12 + 24), v7, &qword_1EC1F7810, &unk_1C6EE9270);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7810, &unk_1C6EE9270);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  sub_1C6E6989C(qword_1EDEF8DF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec, &unk_1C6EEC388);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
}

uint64_t sub_1C6E6168C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6E617C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8250, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4B8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E61860(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4F0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E618CC(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4F0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E6194C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212710);
  __swift_project_value_buffer(v0, qword_1EC212710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_id";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "model_io_spec";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E61B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1C6E61D88(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6E61CD4(a1, v5, a2, a3);
        break;
      case 1:
        sub_1C6E61C20(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1C6E61C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E6989C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E61CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  sub_1C6E6989C(&qword_1EDEF8F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification, &unk_1C6EEC220);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E61D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  sub_1C6E6989C(&qword_1EDEF8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec, &unk_1C6EEBF28);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E61E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E61EC4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E620E0(v3, a1, a2, a3);
    sub_1C6E622FC(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E61EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  sub_1C6E6EBC0(a1 + *(v12 + 20), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E6989C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E620E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  sub_1C6E6EBC0(a1 + *(v12 + 24), v7, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  sub_1C6E6989C(&qword_1EDEF8F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification, &unk_1C6EEC220);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
}

uint64_t sub_1C6E622FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  sub_1C6E6EBC0(a1 + *(v12 + 28), v7, &qword_1EC1F7EE0, &unk_1C6EE9260);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7EE0, &unk_1C6EE9260);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E6989C(&qword_1EDEF8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec, &unk_1C6EEBF28);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
}

uint64_t sub_1C6E62518@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = a1[5];
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1C6E62690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8258, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec, &unk_1C6EEC350);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E62730(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF8DF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec, &unk_1C6EEC388);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E6279C(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(qword_1EDEF8DF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec, &unk_1C6EEC388);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E6281C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212728);
  __swift_project_value_buffer(v0, qword_1EC212728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "md5_hex_digest";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E62A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        sub_1C6E6EA08();
        sub_1C6EE44E0();
      }

      else if (result == 2 || result == 1)
      {
        sub_1C6EE4580();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E62B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1C6EE46C0(), !v4))
    {
      if (!v3[4] || (sub_1C6E6EA08(), result = sub_1C6EE4660(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E62C18@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E62CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8260, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification, &unk_1C6EEC1E8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E62D64(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EDEF8F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification, &unk_1C6EEC220);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E62DD0(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EDEF8F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification, &unk_1C6EEC220);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E62E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8268, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelType, &unk_1C6EEC080);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E62F3C(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F81C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelType, &unk_1C6EEC0B8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E62FA8(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F81C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelType, &unk_1C6EEC0B8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E63024()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212758);
  __swift_project_value_buffer(v0, qword_1EC212758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C6EEA130;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TENSORFLOW";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MESSAGE_PREPROCESSING";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TEXT_PREPROCESSING";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TEXT_OUTPUT";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "TEXT_CODES";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "COREML";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "FEATURE_PREPROCESSING";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "PYTORCH";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "WORDPIECE_TOKENIZER";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E63400()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212770);
  __swift_project_value_buffer(v0, qword_1EC212770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "inputs";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "outputs";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E635C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
        sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO, &unk_1C6EEBDC0);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E636F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0), sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO, &unk_1C6EEBDC0), result = sub_1C6EE46D0(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0), sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO, &unk_1C6EEBDC0), result = sub_1C6EE46D0(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E63854@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E638F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec, &unk_1C6EEBEF0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E63994(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EDEF8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec, &unk_1C6EEBF28);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E63A00(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EDEF8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec, &unk_1C6EEBF28);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E63A7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5F0FC(*a1, *a2) & 1) == 0 || (sub_1C6E5F0FC(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E63B34()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212788);
  __swift_project_value_buffer(v0, qword_1EC212788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shape";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "dtype";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E63D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1C6E6EA5C();
          sub_1C6EE44E0();
          break;
        case 2:
          sub_1C6EE4500();
          break;
        case 1:
          sub_1C6EE4580();
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E63E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_1C6EE4640(), !v4))
    {
      if (!v3[3] || (sub_1C6E6EA5C(), result = sub_1C6EE4660(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E63F28@<X0>(uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E63F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E63FF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E640C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8278, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO, &unk_1C6EEBD88);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E64160(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO, &unk_1C6EEBDC0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E641CC(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO, &unk_1C6EEBDC0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E6426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  sub_1C6E6989C(&qword_1EDEF62D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue, &unk_1C6EEBAF0);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E64320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C30, &qword_1C6EEC710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0);
  sub_1C6E6EBC0(a1 + *(v12 + 20), v7, &qword_1EC1F7C30, &qword_1C6EEC710);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F7C30, &qword_1C6EEC710);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  sub_1C6E6989C(&qword_1EDEF62D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue, &unk_1C6EEBAF0);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
}

uint64_t sub_1C6E645EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8280, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec, &unk_1C6EEBC20);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E6468C(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EDEF62B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec, &unk_1C6EEBC58);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E646F8(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EDEF62B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec, &unk_1C6EEBC58);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E64778()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2127B8);
  __swift_project_value_buffer(v0, qword_1EC2127B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6EEA120;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "float16_little_endian_bytes";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "float_value";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int32_value";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "int64_value";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "bytes_value";
  *(v14 + 8) = 11;
  *(v14 + 16) = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E649FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 0;
LABEL_15:
        sub_1C6E64CD0(v11, v12, v13, v14, v15);
      }

      else if (result == 2)
      {
        sub_1C6E64B34(a1, v5, a2, a3, MEMORY[0x1E69AAC80], 0x1000000000000000);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6E64B34(a1, v5, a2, a3, MEMORY[0x1E69AAC90], 0x2000000000000000);
          break;
        case 4:
          sub_1C6E64C04(a1, v5, a2, a3);
          break;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 1;
          goto LABEL_15;
      }
    }
  }
}

uint64_t sub_1C6E64B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unsigned int *, uint64_t, uint64_t), uint64_t a6)
{
  v14 = 0;
  v15 = 1;
  result = a5(&v14, a3, a4);
  if (!v6 && (v15 & 1) == 0)
  {
    v10 = v14;
    v11 = *(a2 + 8);
    if ((~v11 & 0x3000000000000000) != 0 || *(a2 + 16) != 255)
    {
      sub_1C6EE44C0();
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = -1;
    }

    v13 = *a2;
    *a2 = v10;
    *(a2 + 8) = a6;
    *(a2 + 16) = 0;
    return sub_1C6E1E420(v13, v11, v12);
  }

  return result;
}

uint64_t sub_1C6E64DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if ((~v5 & 0x3000000000000000) == 0 && v6 == 255)
  {
    goto LABEL_3;
  }

  v8 = (v5 >> 60) & 3 | (4 * (v6 & 1));
  if (v8 <= 1)
  {
    if (v8)
    {
      result = sub_1C6E64F84(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      result = sub_1C6E64ED0(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_3;
      }
    }
  }

  else if (v8 == 2)
  {
    result = sub_1C6E64FE8(v3);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  else if (v8 == 3)
  {
    result = sub_1C6E65048(v3);
    if (!v4)
    {
LABEL_3:
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
      return sub_1C6EE4410();
    }
  }

  else
  {
    result = sub_1C6E650A8(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_1C6E64ED0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if ((~v5 & 0x3000000000000000) == 0 && v6 == 255 || (v5 >> 60) & 3 | (4 * (v6 & 1u)))
  {
    __break(1u);
  }

  else
  {
    sub_1C6E1E408(*result, v5);
    sub_1C6EE4670();
    return sub_1C6E1E420(v4, v5, v6);
  }

  return result;
}

uint64_t sub_1C6E64F84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (((~v4 & 0x3000000000000000) != 0 || v5 != 255) && ((v4 >> 60) & 3 | (4 * (v5 & 1u))) == 1)
  {
    return sub_1C6EE4680();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E64FE8(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((~v3 & 0x3000000000000000) != 0 || v4 != 255) && ((v3 >> 60) & 3 | (4 * (v4 & 1u))) == 2)
  {
    return sub_1C6EE4690();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E65048(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((~v3 & 0x3000000000000000) != 0 || v4 != 255) && ((v3 >> 60) & 3 | (4 * (v4 & 1u))) == 3)
  {
    return sub_1C6EE46A0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E650A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 4)
  {
    sub_1C6E1E408(*result, v5);
    sub_1C6EE4670();
    return sub_1C6E1E420(v4, v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6E65160@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1C6EE7FC0;
  *(a2 + 16) = -1;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E65208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue, &unk_1C6EEBAB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E652A8(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EDEF62D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue, &unk_1C6EEBAF0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E65314(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EDEF62D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue, &unk_1C6EEBAF0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E653E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8298, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_DType, &unk_1C6EEB950);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E65480(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8160, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_DType, &unk_1C6EEB988);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E654EC(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F8160, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_DType, &unk_1C6EEB988);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E65568()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2127E8);
  __swift_project_value_buffer(v0, qword_1EC2127E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C6EEA150;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C6EE46F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 1;
  *v8 = "TEXT";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "INT_32";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "INT_64";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "FLOAT_32";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "FLOAT_64";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "BYTES";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "FLOAT_16";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E658E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec(0);
  sub_1C6E6989C(&qword_1EC1F8120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec, &unk_1C6EEB690);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E6599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F82A8, &qword_1C6EEC720);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec(0);
  sub_1C6E6EBC0(a1 + *(v12 + 20), v7, &qword_1EC1F82A8, &qword_1C6EEC720);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F82A8, &qword_1C6EEC720);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  sub_1C6E6989C(&qword_1EC1F8120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec, &unk_1C6EEB690);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
}

uint64_t sub_1C6E65BD0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_1C6EE4420();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1C6E65CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec, &unk_1C6EEB7C0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E65D90(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8140, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec, &unk_1C6EEB7F8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E65DFC(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F8140, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec, &unk_1C6EEB7F8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E65E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4530();
    }
  }

  return result;
}

uint64_t sub_1C6E65F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6EE4680(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E66038(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec, &unk_1C6EEB658);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E660D8(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec, &unk_1C6EEB690);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E66144(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F8120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec, &unk_1C6EEB690);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E661C0(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E66264()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212830);
  __swift_project_value_buffer(v0, qword_1EC212830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_path";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_storage_type";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E6642C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6EE4580();
      }

      else if (result == 2)
      {
        sub_1C6E6EAB0();
        sub_1C6EE44E0();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E664E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    if (!v3[2] || (sub_1C6E6EAB0(), result = sub_1C6EE4660(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E665CC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E6661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E66690(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E6675C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage, &unk_1C6EEB4F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E667FC(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage, &unk_1C6EEB528);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E66868(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(qword_1EDEF8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage, &unk_1C6EEB528);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E668F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1C6E66990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorageType, &unk_1C6EEB388);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E66A30(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F80F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorageType, &unk_1C6EEB3C0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E66A9C(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F80F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorageType, &unk_1C6EEB3C0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E66B18()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212860);
  __swift_project_value_buffer(v0, qword_1EC212860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C6EEA160;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TENSORFLOW_SAVED_MODEL";
  *(v9 + 8) = 22;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MESSAGE_PREPROCESSING_SPEC_PB";
  *(v11 + 1) = 29;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TOKENIZER_PB";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "FROZEN_GRAPH_PB";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "TENSORFLOW_H5";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "TEXT_CODES_PB";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "CODES_SPEC_PB";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "COREML_MLMODEL";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "COREML_MLPACKAGE";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "COREML_COMPILED_MODEL";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "FEATURE_PREPROCESSING_SPEC_PB";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "PYTORCH_TRACED_MODEL";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "WORDPIECE_TOKENIZER_PB";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E67000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0);
        sub_1C6E6989C(&qword_1EC1F80B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec, &unk_1C6EEB0C8);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E670E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0), sub_1C6E6989C(&qword_1EC1F80B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec, &unk_1C6EEB0C8), result = sub_1C6EE46D0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_MessagePreprocessingSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E67264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_MessagePreprocessingSpec, &unk_1C6EEB1F8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E67304(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F80D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_MessagePreprocessingSpec, &unk_1C6EEB230);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E67370(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F80D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_MessagePreprocessingSpec, &unk_1C6EEB230);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E673EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5A718(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E67494()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212890);
  __swift_project_value_buffer(v0, qword_1EC212890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "source_field_names";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "join_string";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E676E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C6EE4570();
          goto LABEL_5;
        }

        if (result == 4)
        {
LABEL_13:
          sub_1C6EE4580();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_13;
        }

        if (result == 2)
        {
          sub_1C6E6EB6C();
          sub_1C6EE44E0();
        }
      }

LABEL_5:
      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E677DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    if (!v3[2] || (sub_1C6E6EB6C(), result = sub_1C6EE4660(), !v4))
    {
      if (!*(v3[4] + 16) || (result = sub_1C6EE46B0(), !v4))
      {
        v8 = v3[6];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v3[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_1C6EE46C0(), !v4))
        {
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0);
          return sub_1C6EE4410();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C6E6791C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E6797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E679F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E67ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82D8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec, &unk_1C6EEB090);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E67B5C(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F80B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec, &unk_1C6EEB0C8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E67BC8(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F80B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec, &unk_1C6EEB0C8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E67C54(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E67CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorType, &unk_1C6EEAF28);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E67D7C(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8090, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorType, &unk_1C6EEAF60);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E67DE8(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F8090, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorType, &unk_1C6EEAF60);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E67E64(uint64_t a1, uint64_t a2)
{
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E67EEC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2128C0);
  __swift_project_value_buffer(v0, qword_1EC2128C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIMPLE";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "STRING_JOIN";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E68120()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2128D8);
  __swift_project_value_buffer(v0, qword_1EC2128D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "retention_key";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E682F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6E68380(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E68380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, &unk_1C6EEAB00);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E68434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E684E0(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1C6EE46C0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E684E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
  sub_1C6E6EBC0(a1 + *(v12 + 24), v7, &qword_1EC1F8000, &unk_1C6EEA4C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F8000, &unk_1C6EEA4C0);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, &unk_1C6EEAB00);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
}

uint64_t sub_1C6E686FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6E687F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData, &unk_1C6EEAD98);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E68898(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8070, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData, &unk_1C6EEADD0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E68904(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(&qword_1EC1F8070, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData, &unk_1C6EEADD0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E689A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E68A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, &unk_1C6EEAB00);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E68ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E68B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  sub_1C6E6EBC0(a1 + *(v12 + 20), v7, &qword_1EC1F8000, &unk_1C6EEA4C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E6EC28(v7, &qword_1EC1F8000, &unk_1C6EEA4C0);
  }

  sub_1C6E6B02C(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, &unk_1C6EEAB00);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
}

uint64_t sub_1C6E68D90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E68DF8(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E68EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy, &unk_1C6EEAC30);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E68F7C(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF7208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy, &unk_1C6EEAC68);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E68FE8(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(qword_1EDEF7208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy, &unk_1C6EEAC68);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E69088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6EE6590;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_1C6EE46F0();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1C6EE4700();
}

uint64_t sub_1C6E691F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E69268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E692FC@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E69340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E693B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E69480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, &unk_1C6EEAAC8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E69520@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6EE4720();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6E695BC(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, &unk_1C6EEAB00);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E69628(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E69680(uint64_t a1, uint64_t a2)
{
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, &unk_1C6EEAB00);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E696FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E69750(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E6989C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6E6AA9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E6B02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E6B094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E6B0F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1C6EE3F90();
    if (v10)
    {
      v11 = sub_1C6EE3FC0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1C6EE3FB0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1C6EE3F90();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C6EE3FC0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C6EE3FB0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1C6E6B324(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C6E6B4B4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C6DF1134(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1C6E6B0F4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1C6DF1134(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1C6E6B4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C6EE3F90();
  v11 = result;
  if (result)
  {
    result = sub_1C6EE3FC0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6EE3FB0();
  sub_1C6E6B0F4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1C6E6B56C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1C6E00D18(a3, a4);
          return sub_1C6E6B324(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_1C6E6B6D4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  v6 = (a2 >> 60) & 3 | (4 * (a3 & 1));
  v7 = (a5 >> 60) & 3 | (4 * (a6 & 1));
  if (v6 <= 1)
  {
    if (v6)
    {
      return v7 == 1 && *&a1 == *&a4;
    }

    if (!v7)
    {
      return sub_1C6E6B56C(a1, a2, a4, a5);
    }

    return 0;
  }

  if (v6 == 2)
  {
    return v7 == 2 && a1 == a4;
  }

  if (v6 != 3)
  {
    if (v7 == 4)
    {
      return sub_1C6E6B56C(a1, a2, a4, a5);
    }

    return 0;
  }

  return v7 == 3 && a1 == a4;
}

uint64_t sub_1C6E6B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C30, &qword_1C6EEC710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8288, &qword_1C6EEC718);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_1C6E6EBC0(a1 + v14, v13, &qword_1EC1F7C30, &qword_1C6EEC710);
  sub_1C6E6EBC0(a2 + v14, &v13[v15], &qword_1EC1F7C30, &qword_1C6EEC710);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6E6EC28(v13, &qword_1EC1F7C30, &qword_1C6EEC710);
LABEL_9:
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1C6EE4A50();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6E6EBC0(v13, v9, &qword_1EC1F7C30, &qword_1C6EEC710);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
LABEL_6:
    sub_1C6E6EC28(v13, &qword_1EC1F8288, &qword_1C6EEC718);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_1C6E6B02C(&v13[v15], v21[0], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  v19 = sub_1C6E6BEF0(v9, v18);
  sub_1C6E6B094(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  sub_1C6E6EC28(v13, &qword_1EC1F7C30, &qword_1C6EEC710);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C6E6BAC0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8248, &qword_1C6EEC708);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
  v27 = a1;
  v14 = *(v26 + 24);
  v15 = *(v11 + 56);
  sub_1C6E6EBC0(a1 + v14, v13, &qword_1EC1F8000, &unk_1C6EEA4C0);
  sub_1C6E6EBC0(a2 + v14, &v13[v15], &qword_1EC1F8000, &unk_1C6EEA4C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6E6EBC0(v13, v9, &qword_1EC1F8000, &unk_1C6EEA4C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v25;
      sub_1C6E6B02C(&v13[v15], v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v21 = *v9 == *v20 && v9[1] == v20[1];
      if (v21 || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v22 = sub_1C6EE4A50();
        sub_1C6E6B094(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        sub_1C6E6EC28(v13, &qword_1EC1F8000, &unk_1C6EEA4C0);
        if ((v22 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }

      sub_1C6E6B094(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v17 = &qword_1EC1F8000;
      v18 = &unk_1C6EEA4C0;
LABEL_7:
      sub_1C6E6EC28(v13, v17, v18);
      goto LABEL_8;
    }

    sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
LABEL_6:
    v17 = &qword_1EC1F8248;
    v18 = &qword_1C6EEC708;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E6EC28(v13, &qword_1EC1F8000, &unk_1C6EEA4C0);
LABEL_15:
  if (*v27 == *a2 && v27[1] == a2[1] || (sub_1C6EE54B0() & 1) != 0)
  {
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1C6EE4A50();
    return v19 & 1;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C6E6BEF0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = (~v5 & 0x3000000000000000) == 0 && v7 == 255;
  if ((~v2 & 0x3000000000000000) != 0 || v4 != 255)
  {
    if (!v9)
    {
      sub_1C6E1E3E0(*a1, v2, v4);
      sub_1C6E1E3E0(v6, v5, v7);
      v11 = sub_1C6E6B6D4(v3, v2, v4 & 1, v6, v5, v7 & 1);
      sub_1C6E1E420(v6, v5, v7);
      sub_1C6E1E420(v3, v2, v4);
      if (v11)
      {
        goto LABEL_15;
      }

      return 0;
    }

LABEL_12:
    sub_1C6E1E3E0(*a1, v2, v4);
    sub_1C6E1E3E0(v6, v5, v7);
    sub_1C6E1E420(v3, v2, v4);
    sub_1C6E1E420(v6, v5, v7);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  sub_1C6E1E3E0(*a1, v2, 255);
  sub_1C6E1E3E0(v6, v5, 255);
  sub_1C6E1E420(v3, v2, 255);
LABEL_15:
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E6C0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8248, &qword_1C6EEC708);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0) + 20);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_1C6E6EBC0(a1 + v14, v13, &qword_1EC1F8000, &unk_1C6EEA4C0);
  v27 = a2;
  sub_1C6E6EBC0(a2 + v14, &v13[v15], &qword_1EC1F8000, &unk_1C6EEA4C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6E6EC28(v13, &qword_1EC1F8000, &unk_1C6EEA4C0);
LABEL_15:
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v19 = sub_1C6EE4A50();
      return v19 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6E6EBC0(v13, v9, &qword_1EC1F8000, &unk_1C6EEA4C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
LABEL_6:
    v17 = &qword_1EC1F8248;
    v18 = &qword_1C6EEC708;
LABEL_7:
    sub_1C6E6EC28(v13, v17, v18);
    goto LABEL_8;
  }

  v20 = v25;
  sub_1C6E6B02C(&v13[v15], v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  v21 = *v9 == *v20 && v9[1] == v20[1];
  if (!v21 && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E6B094(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    v17 = &qword_1EC1F8000;
    v18 = &unk_1C6EEA4C0;
    goto LABEL_7;
  }

  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1C6EE4A50();
  sub_1C6E6B094(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6E6EC28(v13, &qword_1EC1F8000, &unk_1C6EEA4C0);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C6E6C4B8(uint64_t *a1, uint64_t *a2)
{
  v72 = a2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = (&v57 - v6);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v57 - v7;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v57 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8228, &qword_1C6EEC6E8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v57 - v12;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8230, &qword_1C6EEC6F0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v70 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  v71 = a1;
  v24 = *(v70 + 28);
  v25 = *(v21 + 56);
  sub_1C6E6EBC0(a1 + v24, v23, &qword_1EC1F7F10, &qword_1C6EE92A8);
  v26 = v72 + v24;
  v27 = v72;
  sub_1C6E6EBC0(v26, &v23[v25], &qword_1EC1F7F10, &qword_1C6EE92A8);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_1C6E6EC28(v23, &qword_1EC1F7F10, &qword_1C6EE92A8);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &qword_1EC1F8230;
    v30 = &qword_1C6EEC6F0;
    v31 = v23;
LABEL_7:
    sub_1C6E6EC28(v31, v29, v30);
    goto LABEL_30;
  }

  sub_1C6E6EBC0(v23, v19, &qword_1EC1F7F10, &qword_1C6EE92A8);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_1C6E6B094(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    goto LABEL_6;
  }

  sub_1C6E6B02C(&v23[v25], v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  v32 = sub_1C6E6D140(v19, v16);
  sub_1C6E6B094(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  sub_1C6E6B094(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  sub_1C6E6EC28(v23, &qword_1EC1F7F10, &qword_1C6EE92A8);
  if ((v32 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v33 = v71;
  if ((sub_1C6E246EC(*v71, *v27) & 1) == 0 || (sub_1C6E246EC(v33[1], v27[1]) & 1) == 0)
  {
    goto LABEL_30;
  }

  v34 = v69;
  v35 = v70;
  v36 = *(v70 + 32);
  v37 = *(v66 + 48);
  sub_1C6E6EBC0(v33 + v36, v69, &qword_1EC1F7508, &unk_1C6EE6690);
  sub_1C6E6EBC0(v27 + v36, v34 + v37, &qword_1EC1F7508, &unk_1C6EE6690);
  v38 = v68;
  v39 = *(v67 + 48);
  if (v39(v34, 1, v68) == 1)
  {
    if (v39(v34 + v37, 1, v38) == 1)
    {
      sub_1C6E6EC28(v34, &qword_1EC1F7508, &unk_1C6EE6690);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v40 = v65;
  sub_1C6E6EBC0(v34, v65, &qword_1EC1F7508, &unk_1C6EE6690);
  if (v39(v34 + v37, 1, v38) == 1)
  {
    sub_1C6E6B094(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
LABEL_16:
    v29 = &qword_1EC1F8228;
    v30 = &qword_1C6EEC6E8;
    v31 = v34;
    goto LABEL_7;
  }

  v41 = v34 + v37;
  v42 = v60;
  sub_1C6E6B02C(v41, v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  v43 = sub_1C6E6C0B8(v40, v42);
  sub_1C6E6B094(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  sub_1C6E6B094(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  sub_1C6E6EC28(v34, &qword_1EC1F7508, &unk_1C6EE6690);
  if ((v43 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  v44 = *(v35 + 36);
  v45 = *(v61 + 48);
  v46 = v64;
  sub_1C6E6EBC0(v33 + v44, v64, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v47 = v27 + v44;
  v48 = v46;
  sub_1C6E6EBC0(v47, v46 + v45, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v49 = v63;
  v50 = *(v62 + 48);
  if (v50(v46, 1, v63) != 1)
  {
    v51 = v59;
    sub_1C6E6EBC0(v48, v59, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v50(v48 + v45, 1, v49) != 1)
    {
      v52 = v48 + v45;
      v53 = v58;
      sub_1C6E6B02C(v52, v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if (*v51 == *v53 && v51[1] == v53[1] || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v54 = sub_1C6EE4A50();
        sub_1C6E6B094(v53, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6B094(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6EC28(v48, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if (v54)
        {
          goto LABEL_29;
        }

LABEL_30:
        v55 = 0;
        return v55 & 1;
      }

      sub_1C6E6B094(v53, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E6B094(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v29 = &qword_1EC1F7EF0;
      v30 = &unk_1C6EE9280;
      goto LABEL_24;
    }

    sub_1C6E6B094(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_23:
    v29 = &qword_1EC1F8220;
    v30 = &qword_1C6EEC6E0;
LABEL_24:
    v31 = v48;
    goto LABEL_7;
  }

  if (v50(v46 + v45, 1, v49) != 1)
  {
    goto LABEL_23;
  }

  sub_1C6E6EC28(v46, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_29:
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v55 = sub_1C6EE4A50();
  return v55 & 1;
}

uint64_t sub_1C6E6CE68(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (sub_1C6E59BCC(a1[4], *(a2 + 32)) & 1) != 0 && (a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48) || (sub_1C6EE54B0()))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E6CFA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v6)
    {
      case 1:
        if (v5 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v5 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v5 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v5 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v5 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v5 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v5 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v5 == 8)
        {
          goto LABEL_11;
        }

        return 0;
      case 9:
        if (v5 == 9)
        {
          goto LABEL_11;
        }

        return 0;
      case 10:
        if (v5 == 10)
        {
          goto LABEL_11;
        }

        return 0;
      case 11:
        if (v5 == 11)
        {
          goto LABEL_11;
        }

        return 0;
      case 12:
        if (v5 == 12)
        {
          goto LABEL_11;
        }

        return 0;
      case 13:
        if (v5 == 13)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v5)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v5 != v6)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E6D140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v40 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7818, &unk_1C6EE69D0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7828, &qword_1C6EE69E0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  sub_1C6E6EBC0(a1 + v19, v18, &qword_1EC1F7820, &unk_1C6EEA180);
  v21 = a2 + v19;
  v22 = a2;
  sub_1C6E6EBC0(v21, &v18[v20], &qword_1EC1F7820, &unk_1C6EEA180);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) == 1)
  {
    if (v23(&v18[v20], 1, v9) == 1)
    {
      sub_1C6E6EC28(v18, &qword_1EC1F7820, &unk_1C6EEA180);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C6E6EBC0(v18, v14, &qword_1EC1F7820, &unk_1C6EEA180);
  if (v23(&v18[v20], 1, v9) == 1)
  {
    sub_1C6E6B094(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
LABEL_9:
    v29 = &qword_1EC1F7828;
    v30 = &qword_1C6EE69E0;
LABEL_17:
    v33 = v18;
LABEL_18:
    sub_1C6E6EC28(v33, v29, v30);
    goto LABEL_19;
  }

  v31 = v43;
  sub_1C6E6B02C(&v18[v20], v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  if ((*v14 != *v31 || *(v14 + 1) != v31[1]) && (sub_1C6EE54B0() & 1) == 0 || !sub_1C6DF4B44(*(v14 + 2), v14[24], v31[2]))
  {
    sub_1C6E6B094(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
    sub_1C6E6B094(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
    v29 = &qword_1EC1F7820;
    v30 = &unk_1C6EEA180;
    goto LABEL_17;
  }

  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v32 = sub_1C6EE4A50();
  sub_1C6E6B094(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6E6B094(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6E6EC28(v18, &qword_1EC1F7820, &unk_1C6EEA180);
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  v24 = *(v44 + 24);
  v25 = *(v45 + 48);
  v26 = v48;
  sub_1C6E6EBC0(v49 + v24, v48, &qword_1EC1F7810, &unk_1C6EE9270);
  sub_1C6E6EBC0(v22 + v24, v26 + v25, &qword_1EC1F7810, &unk_1C6EE9270);
  v27 = v47;
  v28 = *(v46 + 48);
  if (v28(v26, 1, v47) == 1)
  {
    if (v28(v26 + v25, 1, v27) == 1)
    {
      sub_1C6E6EC28(v26, &qword_1EC1F7810, &unk_1C6EE9270);
LABEL_25:
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v34 = sub_1C6EE4A50();
      return v34 & 1;
    }

    goto LABEL_23;
  }

  v36 = v42;
  sub_1C6E6EBC0(v26, v42, &qword_1EC1F7810, &unk_1C6EE9270);
  if (v28(v26 + v25, 1, v27) == 1)
  {
    sub_1C6E6B094(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
LABEL_23:
    v29 = &qword_1EC1F7818;
    v30 = &unk_1C6EE69D0;
    v33 = v26;
    goto LABEL_18;
  }

  v37 = v26 + v25;
  v38 = v41;
  sub_1C6E6B02C(v37, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  v39 = sub_1C6E6D820(v36, v38);
  sub_1C6E6B094(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  sub_1C6E6B094(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  sub_1C6E6EC28(v26, &qword_1EC1F7810, &unk_1C6EE9270);
  if (v39)
  {
    goto LABEL_25;
  }

LABEL_19:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_1C6E6D820(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = (&v55 - v6);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8238, &qword_1C6EEC6F8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v55 - v7;
  v67 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v58 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v55 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8240, &qword_1C6EEC700);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v55 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v55 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v21;
  v66 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v23 = *(v66 + 20);
  v24 = *(v20 + 56);
  v69 = a1;
  sub_1C6E6EBC0(a1 + v23, v22, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v25 = v70 + v23;
  v26 = v70;
  sub_1C6E6EBC0(v25, &v22[v24], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v27 = *(v13 + 48);
  if (v27(v22, 1, v12) == 1)
  {
    if (v27(&v22[v24], 1, v12) == 1)
    {
      sub_1C6E6EC28(v22, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1C6E6EBC0(v22, v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v27(&v22[v24], 1, v12) == 1)
  {
    sub_1C6E6B094(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v28 = &qword_1EC1F8220;
    v29 = &qword_1C6EEC6E0;
LABEL_7:
    v30 = v22;
LABEL_42:
    sub_1C6E6EC28(v30, v28, v29);
    goto LABEL_43;
  }

  sub_1C6E6B02C(&v22[v24], v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v18 != *v15 || v18[1] != v15[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E6B094(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E6B094(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v28 = &qword_1EC1F7EF0;
    v29 = &unk_1C6EE9280;
    goto LABEL_7;
  }

  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v31 = sub_1C6EE4A50();
  sub_1C6E6B094(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E6B094(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E6EC28(v22, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v31 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_12:
  v32 = v66;
  v33 = *(v66 + 24);
  v34 = *(v64 + 48);
  v36 = v68;
  v35 = v69;
  sub_1C6E6EBC0(v69 + v33, v68, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  sub_1C6E6EBC0(v26 + v33, v36 + v34, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  v37 = *(v65 + 48);
  v38 = v67;
  if (v37(v36, 1, v67) == 1)
  {
    if (v37(v36 + v34, 1, v38) == 1)
    {
      sub_1C6E6EC28(v36, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v47 = v63;
  sub_1C6E6EBC0(v36, v63, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if (v37(v36 + v34, 1, v38) == 1)
  {
    sub_1C6E6B094(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
LABEL_21:
    v28 = &qword_1EC1F8240;
    v29 = &qword_1C6EEC700;
    v30 = v36;
    goto LABEL_42;
  }

  v48 = v58;
  sub_1C6E6B02C(v36 + v34, v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  if ((*v47 != *v48 || *(v47 + 8) != v48[1]) && (sub_1C6EE54B0() & 1) == 0 || (*(v47 + 16) != v48[2] || *(v47 + 24) != v48[3]) && (sub_1C6EE54B0() & 1) == 0 || !sub_1C6DF4B44(*(v47 + 32), *(v47 + 40), v48[4]))
  {
    sub_1C6E6B094(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    sub_1C6E6B094(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    v28 = &qword_1EC1F7EE8;
    v29 = &unk_1C6EEA1D0;
    v30 = v36;
    goto LABEL_42;
  }

  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v49 = sub_1C6EE4A50();
  sub_1C6E6B094(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  sub_1C6E6B094(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  sub_1C6E6EC28(v36, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_15:
  v39 = *(v32 + 28);
  v40 = *(v59 + 48);
  v41 = v62;
  sub_1C6E6EBC0(v35 + v39, v62, &qword_1EC1F7EE0, &unk_1C6EE9260);
  v42 = v26 + v39;
  v43 = v41;
  sub_1C6E6EBC0(v42, v41 + v40, &qword_1EC1F7EE0, &unk_1C6EE9260);
  v44 = v61;
  v45 = *(v60 + 48);
  if (v45(v41, 1, v61) != 1)
  {
    v50 = v57;
    sub_1C6E6EBC0(v43, v57, &qword_1EC1F7EE0, &unk_1C6EE9260);
    if (v45(v43 + v40, 1, v44) == 1)
    {
      sub_1C6E6B094(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      goto LABEL_35;
    }

    v51 = v43 + v40;
    v52 = v56;
    sub_1C6E6B02C(v51, v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    if ((sub_1C6E5F0FC(*v50, *v52) & 1) == 0 || (sub_1C6E5F0FC(v50[1], v52[1]) & 1) == 0)
    {
      sub_1C6E6B094(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      sub_1C6E6B094(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      v28 = &qword_1EC1F7EE0;
      v29 = &unk_1C6EE9260;
      goto LABEL_41;
    }

    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v53 = sub_1C6EE4A50();
    sub_1C6E6B094(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6E6B094(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6E6EC28(v43, &qword_1EC1F7EE0, &unk_1C6EE9260);
    if (v53)
    {
      goto LABEL_18;
    }

LABEL_43:
    v46 = 0;
    return v46 & 1;
  }

  if (v45(v41 + v40, 1, v44) != 1)
  {
LABEL_35:
    v28 = &qword_1EC1F8238;
    v29 = &qword_1C6EEC6F8;
LABEL_41:
    v30 = v43;
    goto LABEL_42;
  }

  sub_1C6E6EC28(v41, &qword_1EC1F7EE0, &unk_1C6EE9260);
LABEL_18:
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v46 = sub_1C6EE4A50();
  return v46 & 1;
}

uint64_t sub_1C6E6E350(uint64_t a1, void *a2)
{
  result = *a1;
  if (result != *a2 || *(a1 + 8) != a2[1])
  {
    result = sub_1C6EE54B0();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  v7 = a2[2];
  v8 = *(v6 + 16);
  if (v8 != *(v7 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    if (sub_1C6DF4B44(*(a1 + 24), *(a1 + 32), a2[3]))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1C6EE4A50() & 1;
    }

    return 0;
  }

  v10 = (v6 + 32);
  v11 = (v7 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E6E47C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0 || !sub_1C6DF4B44(a1[4], *(a1 + 40), a2[4]))
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E6E574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23[0] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F82A8, &qword_1C6EEC720);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F82B0, &qword_1C6EEC728);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  v14 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec(0) + 20);
  v15 = *(v11 + 56);
  v23[1] = a1;
  sub_1C6E6EBC0(a1 + v14, v13, &qword_1EC1F82A8, &qword_1C6EEC720);
  sub_1C6E6EBC0(a2 + v14, &v13[v15], &qword_1EC1F82A8, &qword_1C6EEC720);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6E6EC28(v13, &qword_1EC1F82A8, &qword_1C6EEC720);
LABEL_10:
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v19 = sub_1C6EE4A50();
      return v19 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6E6EBC0(v13, v9, &qword_1EC1F82A8, &qword_1C6EEC720);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
LABEL_6:
    v17 = &qword_1EC1F82B0;
    v18 = &qword_1C6EEC728;
    goto LABEL_7;
  }

  v20 = v23[0];
  sub_1C6E6B02C(&v13[v15], v23[0], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  if (*v9 == *v20)
  {
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v21 = sub_1C6EE4A50();
    sub_1C6E6B094(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
    sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
    sub_1C6E6EC28(v13, &qword_1EC1F82A8, &qword_1C6EEC720);
    if ((v21 & 1) == 0)
    {
      v19 = 0;
      return v19 & 1;
    }

    goto LABEL_10;
  }

  sub_1C6E6B094(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  v17 = &qword_1EC1F82A8;
  v18 = &qword_1C6EEC720;
LABEL_7:
  sub_1C6E6EC28(v13, v17, v18);
  v19 = 0;
  return v19 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1C6E6EA08()
{
  result = qword_1EDEF8D40[0];
  if (!qword_1EDEF8D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8D40);
  }

  return result;
}

unint64_t sub_1C6E6EA5C()
{
  result = qword_1EDEF7C88[0];
  if (!qword_1EDEF7C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF7C88);
  }

  return result;
}

unint64_t sub_1C6E6EAB0()
{
  result = qword_1EDEF8F68;
  if (!qword_1EDEF8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8F68);
  }

  return result;
}

uint64_t sub_1C6E6EB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6E6EB6C()
{
  result = qword_1EC1F82E0;
  if (!qword_1EC1F82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F82E0);
  }

  return result;
}

uint64_t sub_1C6E6EBC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E6EC28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_83Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C6EE4430();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_84Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C6EE4430();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1C6E6EF70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C6EE4430();
  if (v7 <= 0x3F)
  {
    sub_1C6E58ADC(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6E6F054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6EE4430();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E6F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1C6EE4430();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C6E6F1F4(uint64_t a1)
{
  sub_1C6E6F2B0(319, &qword_1EDEF67D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E6F2B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_167Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6E6F490(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6E6F500()
{
  result = qword_1EC1F83F8;
  if (!qword_1EC1F83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F83F8);
  }

  return result;
}

uint64_t sub_1C6E6F584(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6E6F5DC()
{
  result = qword_1EC1F8410;
  if (!qword_1EC1F8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8410);
  }

  return result;
}

unint64_t sub_1C6E6F634()
{
  result = qword_1EC1F8418;
  if (!qword_1EC1F8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8418);
  }

  return result;
}

unint64_t sub_1C6E6FA4C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E6FA64()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1C6E6FA90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1C6E6FAAC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_1C6E6FACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E71348();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL sub_1C6E6FB18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

void sub_1C6E6FB54(uint64_t a1@<X8>)
{
  sub_1C6E71A58();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1C6E6FBA0(uint64_t a2@<X8>)
{
  sub_1C6E71A58();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_1C6E6FBE4(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E6FC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7139C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E6FC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E6FD18()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212920);
  __swift_project_value_buffer(v0, qword_1EC212920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "source";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E6FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        sub_1C6E7139C();
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1C6EE44B0();
    }

    v6 = v3;
    sub_1C6E71348();
LABEL_5:
    v3 = v6;
    sub_1C6EE44E0();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C6E6FFAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C6E71348(), v5 = sub_1C6EE4660(), !v4))
  {
    if (!v3[2] || (sub_1C6E7139C(), v5 = sub_1C6EE4660(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
      return sub_1C6EE4410();
    }
  }

  return v5;
}

uint64_t sub_1C6E700AC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E700FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E70170(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E7023C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E70FB8(&qword_1EC1F8480, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, &unk_1C6EECE08);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E702DC(uint64_t a1)
{
  v2 = sub_1C6E70FB8(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, &unk_1C6EECE40);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E70348(uint64_t a1, uint64_t a2)
{
  sub_1C6E70FB8(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, &unk_1C6EECE40);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E70414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E70FB8(&qword_1EC1F8498, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingSource, &unk_1C6EECCA0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E704B4(uint64_t a1)
{
  v2 = sub_1C6E70FB8(&qword_1EC1F8448, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingSource, &unk_1C6EECCD8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E70520(uint64_t a1, uint64_t a2)
{
  sub_1C6E70FB8(&qword_1EC1F8448, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingSource, &unk_1C6EECCD8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7059C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212950);
  __swift_project_value_buffer(v0, qword_1EC212950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EDITOR_PROVIDED";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E70794(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E707DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1C6E70854@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E708BC(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E70948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E70FB8(&qword_1EC1F84A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingValue, &unk_1C6EECB10);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E709E8(uint64_t a1)
{
  v2 = sub_1C6E70FB8(&qword_1EC1F8428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingValue, &unk_1C6EECB48);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E70A54(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E70AAC(uint64_t a1, uint64_t a2)
{
  sub_1C6E70FB8(&qword_1EC1F8428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingValue, &unk_1C6EECB48);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E70B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E70B7C(uint64_t a1, uint64_t a2)
{
  sub_1C6EE4430();
  sub_1C6E70FB8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E70C04()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212980);
  __swift_project_value_buffer(v0, qword_1EC212980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RELEVANT";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SOMEWHAT_RELEVANT";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOT_RELEVANT";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E70E6C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6EE4720();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6E70FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6E71238(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C6E71348()
{
  result = qword_1EC1F8488;
  if (!qword_1EC1F8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8488);
  }

  return result;
}

unint64_t sub_1C6E7139C()
{
  result = qword_1EC1F8490;
  if (!qword_1EC1F8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8490);
  }

  return result;
}

uint64_t sub_1C6E713F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (*(a2 + 24) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  sub_1C6EE4430();
  sub_1C6E70FB8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E71550(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6E71714(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6E71798()
{
  result = qword_1EC1F84D8;
  if (!qword_1EC1F84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F84D8);
  }

  return result;
}

unint64_t sub_1C6E71820()
{
  result = qword_1EC1F84F0;
  if (!qword_1EC1F84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F84F0);
  }

  return result;
}

uint64_t sub_1C6E718A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6E718FC()
{
  result = qword_1EC1F8508;
  if (!qword_1EC1F8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8508);
  }

  return result;
}

unint64_t sub_1C6E71954()
{
  result = qword_1EC1F8510;
  if (!qword_1EC1F8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8510);
  }

  return result;
}

unint64_t sub_1C6E719AC()
{
  result = qword_1EC1F8518;
  if (!qword_1EC1F8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8518);
  }

  return result;
}

unint64_t sub_1C6E71A04()
{
  result = qword_1EC1F8520;
  if (!qword_1EC1F8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8520);
  }

  return result;
}

uint64_t sub_1C6E71B68()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212998);
  __swift_project_value_buffer(v0, qword_1EC212998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C6EED1D0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C6EE46F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "parent_id";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "namespace";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "raw_text";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "redirect";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E71E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2)
      {
        goto LABEL_16;
      }

      if (result == 3)
      {
LABEL_2:
        sub_1C6EE4580();
      }
    }

    else if (result > 5)
    {
      if (result == 6 || result == 7)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

LABEL_16:
      sub_1C6EE4560();
    }
  }
}

uint64_t sub_1C6E71F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6EE46A0(), !v4))
  {
    if (!v3[1] || (result = sub_1C6EE46A0(), !v4))
    {
      v6 = v3[3];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_1C6EE46C0(), !v4))
      {
        if (!v3[4] || (result = sub_1C6EE46A0(), !v4))
        {
          v8 = v3[6];
          v9 = HIBYTE(v8) & 0xF;
          if ((v8 & 0x2000000000000000) == 0)
          {
            v9 = v3[5] & 0xFFFFFFFFFFFFLL;
          }

          if (!v9 || (result = sub_1C6EE46C0(), !v4))
          {
            v10 = v3[8];
            v11 = HIBYTE(v10) & 0xF;
            if ((v10 & 0x2000000000000000) == 0)
            {
              v11 = v3[7] & 0xFFFFFFFFFFFFLL;
            }

            if (!v11 || (result = sub_1C6EE46C0(), !v4))
            {
              v12 = v3[10];
              v13 = HIBYTE(v12) & 0xF;
              if ((v12 & 0x2000000000000000) == 0)
              {
                v13 = v3[9] & 0xFFFFFFFFFFFFLL;
              }

              if (!v13 || (result = sub_1C6EE46C0(), !v4))
              {
                type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage(0);
                return sub_1C6EE4410();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C6E720D4@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0xE000000000000000;
  a2[7] = 0;
  a2[8] = 0xE000000000000000;
  a2[9] = 0;
  a2[10] = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E72130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E721A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E72274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E72864(&qword_1EC1F8548, type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage, &unk_1C6EED298);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E722F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1F7208 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6EE4720();
  v3 = __swift_project_value_buffer(v2, qword_1EC212998);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6E7239C(uint64_t a1)
{
  v2 = sub_1C6E72864(&qword_1EC1F8530, type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage, &unk_1C6EED2D0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E72408(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E72460(uint64_t a1, uint64_t a2)
{
  sub_1C6E72864(&qword_1EC1F8530, type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage, &unk_1C6EED2D0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E724DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage(uint64_t a1)
{
  result = qword_1EC1F8550;
  if (!qword_1EC1F8550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E726A0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1C6EE54B0();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  if (a1[5] != a2[5] || a1[6] != a2[6])
  {
    v7 = a1;
    v8 = a2;
    v9 = sub_1C6EE54B0();
    a2 = v8;
    v10 = v9;
    a1 = v7;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[7] != a2[7] || a1[8] != a2[8])
  {
    v11 = a1;
    v12 = a2;
    v13 = sub_1C6EE54B0();
    a2 = v12;
    v14 = v13;
    a1 = v11;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[9] != a2[9] || a1[10] != a2[10]) && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage(0);
  sub_1C6EE4430();
  sub_1C6E72864(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E72864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6E728D4(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E729B4(uint64_t a1)
{
  sub_1C6E72BD4(319, &qword_1EC1F8570, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E72AC0(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E72BD4(319, &qword_1EC1F8588, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6E72BD4(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E72BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C6E72C94(uint64_t a1)
{
  sub_1C6E732AC(319, &qword_1EDEF67D0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6E72BD4(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6E72BD4(319, &qword_1EC1F85A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6E72E08(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E72BD4(319, &qword_1EC1F85B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6E72BD4(319, &qword_1EC1F85C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E72F6C(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E72BD4(319, &qword_1EC1F85D8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E7308C(uint64_t a1)
{
  sub_1C6E73110(319);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E73110(uint64_t a1)
{
  if (!qword_1EC1F85F0)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(255);
    v1 = sub_1C6EE49E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1F85F0);
    }
  }
}

void sub_1C6E731C0(uint64_t a1)
{
  sub_1C6E732AC(319, &qword_1EDEF67A0, MEMORY[0x1E69E72F0]);
  if (v1 <= 0x3F)
  {
    sub_1C6E72BD4(319, &qword_1EC1F8608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C6EE4430();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E732AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6EE4D50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6E733F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C6EE4430();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_54Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_55Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C6E73640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C6E72BD4(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6E73720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7D8B0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C6E73770()
{
  result = qword_1EC1F8660;
  if (!qword_1EC1F8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8660);
  }

  return result;
}

unint64_t sub_1C6E737F8()
{
  result = qword_1EC1F8678;
  if (!qword_1EC1F8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8678);
  }

  return result;
}

unint64_t sub_1C6E73850()
{
  result = qword_1EC1F8680;
  if (!qword_1EC1F8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8680);
  }

  return result;
}

unint64_t sub_1C6E738A4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C6E738CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E738E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7D9CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E7394C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1C6E739AC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1C6E739E8(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E73A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7DA20();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E73AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

unint64_t sub_1C6E73B28()
{
  result = qword_1EC1F8688;
  if (!qword_1EC1F8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8688);
  }

  return result;
}

unint64_t sub_1C6E73BB0()
{
  result = qword_1EC1F86A0;
  if (!qword_1EC1F86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86A0);
  }

  return result;
}

unint64_t sub_1C6E73C08()
{
  result = qword_1EC1F86A8;
  if (!qword_1EC1F86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86A8);
  }

  return result;
}

unint64_t sub_1C6E73C60()
{
  result = qword_1EC1F86B0;
  if (!qword_1EC1F86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86B0);
  }

  return result;
}

uint64_t sub_1C6E73CE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6E73D3C()
{
  result = qword_1EC1F86C8;
  if (!qword_1EC1F86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86C8);
  }

  return result;
}

unint64_t sub_1C6E73D94()
{
  result = qword_1EC1F86D0;
  if (!qword_1EC1F86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86D0);
  }

  return result;
}

uint64_t sub_1C6E73E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0), sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, &unk_1C6EEE890), result = sub_1C6EE46D0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E73F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8888, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle, &unk_1C6EEEE20);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7403C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F7F20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle, &unk_1C6EEEE58);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E740A8(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F7F20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle, &unk_1C6EEEE58);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7413C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2129C8);
  __swift_project_value_buffer(v0, qword_1EC2129C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "result_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "test_results";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E74304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6E7D8B0();
        sub_1C6EE44E0();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
        sub_1C6E7A810(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, &unk_1C6EEE9F8);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E7441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C6E7D8B0(), result = sub_1C6EE4660(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0), sub_1C6E7A810(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, &unk_1C6EEE9F8), result = sub_1C6EE46D0(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E74550@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  return sub_1C6EE4420();
}

uint64_t sub_1C6E745FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult, &unk_1C6EEECB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7469C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8858, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult, &unk_1C6EEECF0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E74708(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F8858, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult, &unk_1C6EEECF0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E747D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResultType, &unk_1C6EEEB50);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E74874(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8838, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResultType, &unk_1C6EEEB88);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E748E0(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F8838, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResultType, &unk_1C6EEEB88);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7495C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2129F8);
  __swift_project_value_buffer(v0, qword_1EC2129F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FAILED_WITH_EXCEPTION";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TESTS_RAN_ALL_OK";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TESTS_RAN_NOT_ALL_OK";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E74BC4()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212A10);
  __swift_project_value_buffer(v0, qword_1EC212A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "test_case";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actual_output_features";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "result_type";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "info";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E74E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C6E7D9CC();
          sub_1C6EE44E0();
        }

        else if (result == 4)
        {
          sub_1C6EE4580();
        }
      }

      else if (result == 1)
      {
        sub_1C6E74F30(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_1C6E75A64(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E74F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, &unk_1C6EEE890);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E74FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E75114(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E75EF8(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, 2);
    if (*v3)
    {
      sub_1C6E7D9CC();
      sub_1C6EE4660();
    }

    v9 = v3[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1C6EE46C0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E75114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F50, &unk_1C6EED3E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
  sub_1C6E7D904(a1 + *(v12 + 28), v7, &qword_1EC1F7F50, &unk_1C6EED3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E7D96C(v7, &qword_1EC1F7F50, &unk_1C6EED3E0);
  }

  sub_1C6E7D848(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, &unk_1C6EEE890);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
}

uint64_t sub_1C6E75328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6E7547C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, &unk_1C6EEE9C0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7551C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, &unk_1C6EEE9F8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E75588(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, &unk_1C6EEE9F8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E75608()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212A28);
  __swift_project_value_buffer(v0, qword_1EC212A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA120;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "test_name";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requested_api_names";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "input_features";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expected_output_features";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "test_case_config";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1C6EE4580();
      }

      else if (result == 2)
      {
        sub_1C6EE4570();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6E759B0(a1, v5, a2, a3);
          break;
        case 4:
          sub_1C6E75A64(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
          break;
        case 5:
          sub_1C6E75B1C(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C6E759B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E7A810(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E75A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E7A810(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E75B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  sub_1C6E7A810(&qword_1EC1F87C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig, &unk_1C6EEE598);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E75BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6EE46C0(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_1C6EE46B0(), !v4))
    {
      result = sub_1C6E75CE8(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1C6E75EF8(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, 4);
        sub_1C6E76110(v3, a1, a2, a3);
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E75CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  sub_1C6E7D904(a1 + *(v12 + 28), v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E7D96C(v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E7D848(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7A810(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E75EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_1C6E7D904(a1 + *(v15 + 32), v10, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1C6E7D96C(v10, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E7D848(v10, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7A810(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E76110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  sub_1C6E7D904(a1 + *(v12 + 36), v7, &qword_1EC1F7F70, &qword_1C6EE9500);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E7D96C(v7, &qword_1EC1F7F70, &qword_1C6EE9500);
  }

  sub_1C6E7D848(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  sub_1C6E7A810(&qword_1EC1F87C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig, &unk_1C6EEE598);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
}

uint64_t sub_1C6E76324@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
  v4 = a1[7];
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v6(&a2[a1[8]], 1, 1, v5);
  v7 = a1[9];
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1C6E7644C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E764C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E7658C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, &unk_1C6EEE858);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7662C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, &unk_1C6EEE890);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E76698(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, &unk_1C6EEE890);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E76764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultType, &unk_1C6EEE6F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E76804(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F87E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultType, &unk_1C6EEE728);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E76870(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F87E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultType, &unk_1C6EEE728);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E768EC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212A58);
  __swift_project_value_buffer(v0, qword_1EC212A58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PASS";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "FAIL";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E76B1C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212A70);
  __swift_project_value_buffer(v0, qword_1EC212A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "error_tolerance_config";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assertion_config";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E76CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6E76D78(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6E76E2C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E76D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  sub_1C6E7A810(&qword_1EC1F87A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig, &unk_1C6EEE430);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E76E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  sub_1C6E7A810(&qword_1EC1F8760, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig, &unk_1C6EEE160);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E76EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E76F50(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E77160(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E76F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  sub_1C6E7D904(a1 + *(v12 + 20), v7, &qword_1EC1F7F68, &qword_1C6EE94F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E7D96C(v7, &qword_1EC1F7F68, &qword_1C6EE94F8);
  }

  sub_1C6E7D848(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  sub_1C6E7A810(&qword_1EC1F87A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig, &unk_1C6EEE430);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
}

uint64_t sub_1C6E77160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  sub_1C6E7D904(a1 + *(v12 + 24), v7, &qword_1EC1F7F60, &qword_1C6EE94F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E7D96C(v7, &qword_1EC1F7F60, &qword_1C6EE94F0);
  }

  sub_1C6E7D848(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  sub_1C6E7A810(&qword_1EC1F8760, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig, &unk_1C6EEE160);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
}

uint64_t sub_1C6E77370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6E774A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig, &unk_1C6EEE560);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E77544(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F87C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig, &unk_1C6EEE598);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E775B0(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F87C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig, &unk_1C6EEE598);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E77648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C6E7A810(a5, a6, a7);
      sub_1C6EE4590();
    }
  }

  return result;
}

uint64_t sub_1C6E77724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0), sub_1C6E7A810(&qword_1EC1F8780, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType, &unk_1C6EEE2C8), result = sub_1C6EE46D0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E778C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig, &unk_1C6EEE3F8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E77960(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F87A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig, &unk_1C6EEE430);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E779CC(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F87A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig, &unk_1C6EEE430);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E77A60()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212AA0);
  __swift_project_value_buffer(v0, qword_1EC212AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dtype";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relative_error_tolerance";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "absolute_error_tolerance";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E77C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1C6EE4530();
      }

      else if (result == 1)
      {
        sub_1C6E6EA5C();
        sub_1C6EE44E0();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E77D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C6E6EA5C(), result = sub_1C6EE4660(), !v4))
  {
    if (!*(v3 + 12) || (result = sub_1C6EE4680(), !v4))
    {
      if (!*(v3 + 16) || (result = sub_1C6EE4680(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E77E44@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E77EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8900, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType, &unk_1C6EEE290);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E77F88(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8780, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType, &unk_1C6EEE2C8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E77FF4(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F8780, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType, &unk_1C6EEE2C8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E78074()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212AB8);
  __swift_project_value_buffer(v0, qword_1EC212AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assertion_type";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actual_features_config";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6E7DA20();
        sub_1C6EE44E0();
      }

      else if (result == 2)
      {
        sub_1C6E782FC(a1, v5, a2, a3);
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E782FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  sub_1C6E7A810(&qword_1EC1F8720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig, &unk_1C6EEDE68);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E783B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C6E7DA20(), result = sub_1C6EE4660(), !v4))
  {
    result = sub_1C6E7847C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E7847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  sub_1C6E7D904(a1 + *(v12 + 24), v7, &qword_1EC1F7F78, &qword_1C6EE9508);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E7D96C(v7, &qword_1EC1F7F78, &qword_1C6EE9508);
  }

  sub_1C6E7D848(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  sub_1C6E7A810(&qword_1EC1F8720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig, &unk_1C6EEDE68);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
}

uint64_t sub_1C6E7868C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6E7878C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8908, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig, &unk_1C6EEE128);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7882C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8760, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig, &unk_1C6EEE160);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E78898(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F8760, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig, &unk_1C6EEE160);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E78924(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E7896C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1C6E789E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E78A4C(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E78AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8918, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionType, &unk_1C6EEDFC0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E78B78(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionType, &unk_1C6EEDFF8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E78BE4(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F8740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionType, &unk_1C6EEDFF8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E78C60(uint64_t a1, uint64_t a2)
{
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E78CE8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212AE8);
  __swift_project_value_buffer(v0, qword_1EC212AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C6EED390;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "EXISTS";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "NOT_EXISTS";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CONTAINS";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "NOT_CONTAINS";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "EQUALS";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "NOT_EQUALS";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "GREATER_THAN";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "NOT_GREATER_THAN";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "LESS_THAN";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "NOT_LESS_THAN";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E79114(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6EE6590;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = sub_1C6EE46F0();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1C6EE4700();
}

uint64_t sub_1C6E79280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6E792F4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E792F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0);
  sub_1C6E7A810(&qword_1EC1F8700, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig, &unk_1C6EEDD00);
  sub_1C6E7A810(&qword_1EC1F8708, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig, &unk_1C6EEDC38);
  return sub_1C6EE4490();
}

uint64_t sub_1C6E793EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1C6EE4400(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0), sub_1C6E7A810(&qword_1EC1F8700, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig, &unk_1C6EEDD00), sub_1C6E7A810(&qword_1EC1F8708, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig, &unk_1C6EEDC38), result = sub_1C6EE4610(), !v5))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E79584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E795F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E796C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8920, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig, &unk_1C6EEDE30);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E79764(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig, &unk_1C6EEDE68);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E797D0(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F8720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig, &unk_1C6EEDE68);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E79864(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E79910()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B18);
  __swift_project_value_buffer(v0, qword_1EC212B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "to_length";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "with_shape";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "slice_specs";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E79B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0);
          sub_1C6E7A810(&qword_1EC1F86E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec, &unk_1C6EEDB98);
          sub_1C6EE4590();
          break;
        case 2:
          sub_1C6EE4500();
          break;
        case 1:
          sub_1C6EE44D0();
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E79C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6EE4650(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (result = sub_1C6EE4640(), !v4))
    {
      if (!*(*(v3 + 16) + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0), sub_1C6E7A810(&qword_1EC1F86E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec, &unk_1C6EEDB98), result = sub_1C6EE46D0(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E79D70@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = v2;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E79E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8928, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig, &unk_1C6EEDCC8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E79EB4(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8700, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig, &unk_1C6EEDD00);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E79F20(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F8700, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig, &unk_1C6EEDD00);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E79FA0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B30);
  __swift_project_value_buffer(v0, qword_1EC212B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "should_slice";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "end";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7A1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1C6EE4540();
    }

    else if (result == 1)
    {
      sub_1C6EE44D0();
    }
  }

  return result;
}

uint64_t sub_1C6E7A25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6EE4650(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_1C6EE4690(), !v4))
    {
      if (!*(v3 + 8) || (result = sub_1C6EE4690(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E7A328@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E7A36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E7A3E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E7A4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8930, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec, &unk_1C6EEDB60);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7A54C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6EE4720();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6E7A5E8(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F86E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec, &unk_1C6EEDB98);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E7A654(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E7A6AC(uint64_t a1, uint64_t a2)
{
  sub_1C6E7A810(&qword_1EC1F86E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec, &unk_1C6EEDB98);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7A728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E7A810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6E7B4D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E7B820(float *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          if (v2 != 6)
          {
            return 0;
          }
        }

        else if (v2 != 7)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[3] == *(a2 + 12) && a1[4] == *(a2 + 16))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0);
    sub_1C6EE4430();
    sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E7B980(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_1C6E5AA5C(a1[2], *(a2 + 16)))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult(0);
    sub_1C6EE4430();
    sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E7BA84(uint64_t *a1, uint64_t *a2)
{
  v48 = a2;
  v45 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v40 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = (&v39 - v5);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v39 - v6;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F50, &unk_1C6EED3E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v39 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F88C0, &unk_1C6EEEEF8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v44 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
  v18 = *(v44 + 28);
  v19 = *(v15 + 56);
  v47 = a1;
  sub_1C6E7D904(a1 + v18, v17, &qword_1EC1F7F50, &unk_1C6EED3E0);
  v20 = v48;
  sub_1C6E7D904(v48 + v18, &v17[v19], &qword_1EC1F7F50, &unk_1C6EED3E0);
  v21 = *(v8 + 48);
  if (v21(v17, 1, v7) == 1)
  {
    if (v21(&v17[v19], 1, v7) == 1)
    {
      sub_1C6E7D96C(v17, &qword_1EC1F7F50, &unk_1C6EED3E0);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_1EC1F88C0;
    v23 = &unk_1C6EEEEF8;
    v24 = v17;
LABEL_20:
    sub_1C6E7D96C(v24, v22, v23);
    goto LABEL_21;
  }

  sub_1C6E7D904(v17, v13, &qword_1EC1F7F50, &unk_1C6EED3E0);
  if (v21(&v17[v19], 1, v7) == 1)
  {
    sub_1C6E7D7E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
    goto LABEL_6;
  }

  sub_1C6E7D848(&v17[v19], v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  v25 = sub_1C6E7CE44(v13, v10);
  sub_1C6E7D7E8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  sub_1C6E7D7E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  sub_1C6E7D96C(v17, &qword_1EC1F7F50, &unk_1C6EED3E0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v26 = *(v44 + 32);
  v27 = *(v42 + 48);
  v29 = v46;
  v28 = v47;
  sub_1C6E7D904(v47 + v26, v46, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6E7D904(v20 + v26, v29 + v27, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v30 = *(v43 + 48);
  v31 = v45;
  if (v30(v29, 1, v45) != 1)
  {
    v34 = v41;
    sub_1C6E7D904(v29, v41, &qword_1EC1F7D68, &unk_1C6EE89B0);
    if (v30(v29 + v27, 1, v31) != 1)
    {
      v37 = v40;
      sub_1C6E7D848(v29 + v27, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      if (sub_1C6E227C4(*v34, *v37))
      {
        sub_1C6EE4430();
        sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v38 = sub_1C6EE4A50();
        sub_1C6E7D7E8(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E7D7E8(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E7D96C(v29, &qword_1EC1F7D68, &unk_1C6EE89B0);
        if ((v38 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      }

      sub_1C6E7D7E8(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E7D7E8(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v22 = &qword_1EC1F7D68;
      v23 = &unk_1C6EE89B0;
      goto LABEL_19;
    }

    sub_1C6E7D7E8(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_18:
    v22 = &qword_1EC1F7D70;
    v23 = &unk_1C6EF2EA0;
LABEL_19:
    v24 = v29;
    goto LABEL_20;
  }

  if (v30(v29 + v27, 1, v31) != 1)
  {
    goto LABEL_18;
  }

  sub_1C6E7D96C(v29, &qword_1EC1F7D68, &unk_1C6EE89B0);
LABEL_11:
  v32 = *v28;
  v33 = *v20;
  if (*(v20 + 8) == 1)
  {
    if (v33)
    {
      if (v33 == 1)
      {
        if (v32 != 1)
        {
          goto LABEL_21;
        }
      }

      else if (v32 != 2)
      {
        goto LABEL_21;
      }
    }

    else if (v32)
    {
      goto LABEL_21;
    }
  }

  else if (v32 != v33)
  {
    goto LABEL_21;
  }

  if (v28[2] == v20[2] && v28[3] == v20[3] || (sub_1C6EE54B0() & 1) != 0)
  {
    sub_1C6EE4430();
    sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v35 = sub_1C6EE4A50();
    return v35 & 1;
  }

LABEL_21:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1C6E7C19C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F88A8, &qword_1C6EEEEF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 <= 4)
    {
      if (v15 <= 1)
      {
        if (v15)
        {
          if (v14 != 1)
          {
            goto LABEL_17;
          }
        }

        else if (v14)
        {
          goto LABEL_17;
        }
      }

      else if (v15 == 2)
      {
        if (v14 != 2)
        {
          goto LABEL_17;
        }
      }

      else if (v15 == 3)
      {
        if (v14 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (v14 != 4)
      {
        goto LABEL_17;
      }
    }

    else if (v15 > 7)
    {
      if (v15 == 8)
      {
        if (v14 != 8)
        {
          goto LABEL_17;
        }
      }

      else if (v15 == 9)
      {
        if (v14 != 9)
        {
          goto LABEL_17;
        }
      }

      else if (v14 != 10)
      {
        goto LABEL_17;
      }
    }

    else if (v15 == 5)
    {
      if (v14 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (v15 == 6)
    {
      if (v14 != 6)
      {
        goto LABEL_17;
      }
    }

    else if (v14 != 7)
    {
      goto LABEL_17;
    }
  }

  else if (v14 != v15)
  {
LABEL_17:
    v21 = 0;
    return v21 & 1;
  }

  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v17 = a1;
  v26[0] = v16;
  v26[1] = a1;
  v18 = *(v16 + 24);
  v19 = *(v11 + 48);
  sub_1C6E7D904(v17 + v18, v13, &qword_1EC1F7F78, &qword_1C6EE9508);
  sub_1C6E7D904(a2 + v18, &v13[v19], &qword_1EC1F7F78, &qword_1C6EE9508);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_1C6E7D96C(v13, &qword_1EC1F7F78, &qword_1C6EE9508);
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_1C6E7D904(v13, v10, &qword_1EC1F7F78, &qword_1C6EE9508);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    sub_1C6E7D7E8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
LABEL_15:
    v22 = &qword_1EC1F88A8;
    v23 = &qword_1C6EEEEF0;
LABEL_16:
    sub_1C6E7D96C(v13, v22, v23);
    goto LABEL_17;
  }

  sub_1C6E7D848(&v13[v19], v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  if ((sub_1C6E24124(*v10, *v7) & 1) == 0)
  {
    sub_1C6E7D7E8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
    sub_1C6E7D7E8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
    v22 = &qword_1EC1F7F78;
    v23 = &qword_1C6EE9508;
    goto LABEL_16;
  }

  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v25 = sub_1C6EE4A50();
  sub_1C6E7D7E8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  sub_1C6E7D7E8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  sub_1C6E7D96C(v13, &qword_1EC1F7F78, &qword_1C6EE9508);
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = sub_1C6EE4A50();
  return v21 & 1;
}

uint64_t sub_1C6E7C688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = (&v40 - v7);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8898, &qword_1C6EEEEE0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v40 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F88A0, &qword_1C6EEEEE8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  sub_1C6E7D904(a1 + v19, v18, &qword_1EC1F7F68, &qword_1C6EE94F8);
  v21 = a2 + v19;
  v22 = a2;
  sub_1C6E7D904(v21, &v18[v20], &qword_1EC1F7F68, &qword_1C6EE94F8);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) == 1)
  {
    if (v23(&v18[v20], 1, v9) == 1)
    {
      sub_1C6E7D96C(v18, &qword_1EC1F7F68, &qword_1C6EE94F8);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C6E7D904(v18, v14, &qword_1EC1F7F68, &qword_1C6EE94F8);
  if (v23(&v18[v20], 1, v9) == 1)
  {
    sub_1C6E7D7E8(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
LABEL_9:
    v29 = &qword_1EC1F88A0;
    v30 = &qword_1C6EEEEE8;
LABEL_10:
    v31 = v18;
LABEL_11:
    sub_1C6E7D96C(v31, v29, v30);
    goto LABEL_12;
  }

  v34 = v43;
  sub_1C6E7D848(&v18[v20], v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  if ((sub_1C6E5B684(*v14, *v34) & 1) == 0)
  {
    sub_1C6E7D7E8(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
    sub_1C6E7D7E8(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
    v29 = &qword_1EC1F7F68;
    v30 = &qword_1C6EE94F8;
    goto LABEL_10;
  }

  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = sub_1C6EE4A50();
  sub_1C6E7D7E8(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  sub_1C6E7D7E8(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  sub_1C6E7D96C(v18, &qword_1EC1F7F68, &qword_1C6EE94F8);
  if ((v35 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v24 = *(v44 + 24);
  v25 = *(v45 + 48);
  v26 = v48;
  sub_1C6E7D904(v49 + v24, v48, &qword_1EC1F7F60, &qword_1C6EE94F0);
  sub_1C6E7D904(v22 + v24, v26 + v25, &qword_1EC1F7F60, &qword_1C6EE94F0);
  v27 = v47;
  v28 = *(v46 + 48);
  if (v28(v26, 1, v47) == 1)
  {
    if (v28(v26 + v25, 1, v27) == 1)
    {
      sub_1C6E7D96C(v26, &qword_1EC1F7F60, &qword_1C6EE94F0);
LABEL_22:
      sub_1C6EE4430();
      sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v32 = sub_1C6EE4A50();
      return v32 & 1;
    }

    goto LABEL_19;
  }

  v36 = v42;
  sub_1C6E7D904(v26, v42, &qword_1EC1F7F60, &qword_1C6EE94F0);
  if (v28(v26 + v25, 1, v27) == 1)
  {
    sub_1C6E7D7E8(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
LABEL_19:
    v29 = &qword_1EC1F8898;
    v30 = &qword_1C6EEEEE0;
    v31 = v26;
    goto LABEL_11;
  }

  v37 = v26 + v25;
  v38 = v41;
  sub_1C6E7D848(v37, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  v39 = sub_1C6E7C19C(v36, v38);
  sub_1C6E7D7E8(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  sub_1C6E7D7E8(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  sub_1C6E7D96C(v26, &qword_1EC1F7F60, &qword_1C6EE94F0);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_12:
  v32 = 0;
  return v32 & 1;
}

unsigned __int8 *sub_1C6E7CD2C(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 1);
  v3 = *(a2 + 1);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if (sub_1C6E5B3BC(*(result + 2), *(a2 + 2)))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0);
      sub_1C6EE4430();
      sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return (sub_1C6EE4A50() & 1);
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E7CE44(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v56 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8890, &unk_1C6EEEED0);
  MEMORY[0x1EEE9AC00](v63);
  v10 = &v56 - v9;
  v67 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v11 = *(v67 - 8);
  v12 = MEMORY[0x1EEE9AC00](v67);
  v62 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v56 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v65 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v56 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v66 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - v24;
  if (*a1 != *a2 && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_18;
  }

  v57 = v4;
  v58 = v10;
  v56 = v6;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v27 = *(v26 + 28);
  v28 = *(v21 + 48);
  v59 = v26;
  v60 = a1;
  sub_1C6E7D904(a1 + v27, v25, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v29 = a2 + v27;
  v30 = a2;
  sub_1C6E7D904(v29, &v25[v28], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v31 = *(v11 + 48);
  v32 = v67;
  if (v31(v25, 1, v67) == 1)
  {
    if (v31(&v25[v28], 1, v32) == 1)
    {
      sub_1C6E7D96C(v25, &qword_1EC1F7D68, &unk_1C6EE89B0);
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  sub_1C6E7D904(v25, v20, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v31(&v25[v28], 1, v32) == 1)
  {
    sub_1C6E7D7E8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_15:
    v42 = &qword_1EC1F7D70;
    v43 = &unk_1C6EF2EA0;
LABEL_16:
    v44 = v25;
LABEL_17:
    sub_1C6E7D96C(v44, v42, v43);
    goto LABEL_18;
  }

  sub_1C6E7D848(&v25[v28], v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  if ((sub_1C6E227C4(*v20, *v15) & 1) == 0)
  {
    sub_1C6E7D7E8(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6E7D7E8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v42 = &qword_1EC1F7D68;
    v43 = &unk_1C6EE89B0;
    goto LABEL_16;
  }

  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v47 = sub_1C6EE4A50();
  sub_1C6E7D7E8(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7D7E8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7D96C(v25, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  v33 = v59;
  v34 = *(v59 + 32);
  v35 = *(v21 + 48);
  v36 = v66;
  sub_1C6E7D904(v60 + v34, v66, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6E7D904(a2 + v34, v36 + v35, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v31(v36, 1, v32) == 1)
  {
    if (v31((v36 + v35), 1, v32) == 1)
    {
      sub_1C6E7D96C(v36, &qword_1EC1F7D68, &unk_1C6EE89B0);
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  v48 = v65;
  sub_1C6E7D904(v36, v65, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v31((v36 + v35), 1, v32) == 1)
  {
    sub_1C6E7D7E8(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_25:
    v42 = &qword_1EC1F7D70;
    v43 = &unk_1C6EF2EA0;
    v44 = v36;
    goto LABEL_17;
  }

  v49 = v36 + v35;
  v50 = v62;
  sub_1C6E7D848(v49, v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  if ((sub_1C6E227C4(*v48, *v50) & 1) == 0)
  {
    sub_1C6E7D7E8(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6E7D7E8(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v42 = &qword_1EC1F7D68;
    v43 = &unk_1C6EE89B0;
    v44 = v36;
    goto LABEL_17;
  }

  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v51 = sub_1C6EE4A50();
  sub_1C6E7D7E8(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7D7E8(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7D96C(v36, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v37 = *(v33 + 36);
  v38 = *(v63 + 48);
  v39 = v58;
  sub_1C6E7D904(v60 + v37, v58, &qword_1EC1F7F70, &qword_1C6EE9500);
  sub_1C6E7D904(v30 + v37, v39 + v38, &qword_1EC1F7F70, &qword_1C6EE9500);
  v40 = *(v64 + 48);
  v41 = v57;
  if (v40(v39, 1, v57) == 1)
  {
    if (v40(v39 + v38, 1, v41) == 1)
    {
      sub_1C6E7D96C(v39, &qword_1EC1F7F70, &qword_1C6EE9500);
LABEL_35:
      sub_1C6EE4430();
      sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v45 = sub_1C6EE4A50();
      return v45 & 1;
    }

    goto LABEL_32;
  }

  v52 = v61;
  sub_1C6E7D904(v39, v61, &qword_1EC1F7F70, &qword_1C6EE9500);
  if (v40(v39 + v38, 1, v41) == 1)
  {
    sub_1C6E7D7E8(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
LABEL_32:
    v42 = &qword_1EC1F8890;
    v43 = &unk_1C6EEEED0;
    v44 = v39;
    goto LABEL_17;
  }

  v53 = v39 + v38;
  v54 = v56;
  sub_1C6E7D848(v53, v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  v55 = sub_1C6E7C688(v52, v54);
  sub_1C6E7D7E8(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  sub_1C6E7D7E8(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  sub_1C6E7D96C(v39, &qword_1EC1F7F70, &qword_1C6EE9500);
  if (v55)
  {
    goto LABEL_35;
  }

LABEL_18:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_1C6E7D7E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E7D848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6E7D8B0()
{
  result = qword_1EC1F88B8;
  if (!qword_1EC1F88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F88B8);
  }

  return result;
}

uint64_t sub_1C6E7D904(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E7D96C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C6E7D9CC()
{
  result = qword_1EC1F88D8;
  if (!qword_1EC1F88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F88D8);
  }

  return result;
}

unint64_t sub_1C6E7DA20()
{
  result = qword_1EC1F8910;
  if (!qword_1EC1F8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8910);
  }

  return result;
}

uint64_t sub_1C6E7DA74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0);
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t __swift_get_extra_inhabitant_index_116Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_117Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6E7DCB8(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E7E024(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E7E130(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6E7E130(319, &qword_1EC1F8980, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E7E130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C6E7E194()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B48);
  __swift_project_value_buffer(v0, qword_1EC212B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vectors";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7E35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6E7E45C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding(0);
        sub_1C6E8005C(&qword_1EC1F8990, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding, &unk_1C6EEF03C);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E7E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  sub_1C6E8005C(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, &unk_1C6EEF1A4);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E7E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E7E60C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding(0);
      sub_1C6E8005C(&qword_1EC1F8990, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding, &unk_1C6EEF03C);
      sub_1C6EE46D0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E7E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding(0);
  sub_1C6E80E08(a1 + *(v12 + 24), v7, &qword_1EC1F89F0, &unk_1C6EF1170);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E80E70(v7, &qword_1EC1F89F0, &unk_1C6EF1170);
  }

  sub_1C6E80F30(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E8005C(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, &unk_1C6EEF1A4);
  sub_1C6EE46E0();
  return sub_1C6E80ED0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
}

uint64_t sub_1C6E7E81C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6E7E91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8005C(&qword_1EC1F89E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding, &unk_1C6EEF2D4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7E9BC(uint64_t a1)
{
  v2 = sub_1C6E8005C(&qword_1EC1F89D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding, &unk_1C6EEF30C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E7EA28(uint64_t a1, uint64_t a2)
{
  sub_1C6E8005C(&qword_1EC1F89D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding, &unk_1C6EEF30C);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7EAA8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B60);
  __swift_project_value_buffer(v0, qword_1EC212B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dimension";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "tokenizer_spec";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7ECC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6E7EE2C(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6EE4560();
        break;
      case 1:
        sub_1C6E7ED78(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1C6E7ED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E8005C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E7EE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8005C(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec, &unk_1C6EF0698);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E7EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E7EF98(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1C6EE46A0();
    }

    sub_1C6E7F1A8(v3, a1, a2, a3);
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E7EF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  sub_1C6E80E08(a1 + *(v12 + 24), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E80E70(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E80F30(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8005C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E80ED0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E7F1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8968, &qword_1C6EEEF08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  sub_1C6E80E08(a1 + *(v12 + 28), v7, &qword_1EC1F8968, &qword_1C6EEEF08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E80E70(v7, &qword_1EC1F8968, &qword_1C6EEEF08);
  }

  sub_1C6E80F30(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
  sub_1C6E8005C(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec, &unk_1C6EF0698);
  sub_1C6EE46E0();
  return sub_1C6E80ED0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
}

uint64_t sub_1C6E7F3BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C6E7F4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E7F51C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E7F5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8005C(&qword_1EC1F8A08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, &unk_1C6EEF16C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7F688(uint64_t a1)
{
  v2 = sub_1C6E8005C(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, &unk_1C6EEF1A4);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E7F6F4(uint64_t a1, uint64_t a2)
{
  sub_1C6E8005C(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, &unk_1C6EEF1A4);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7F774()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B78);
  __swift_project_value_buffer(v0, qword_1EC212B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vector";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7F93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4580();
    }

    else if (result == 2)
    {
      sub_1C6EE44F0();
    }
  }

  return result;
}

uint64_t sub_1C6E7F9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_1C6EE4630(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E7FA80@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  return sub_1C6EE4420();
}

uint64_t sub_1C6E7FAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E7FB44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E7FC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8005C(&qword_1EC1F8A10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding, &unk_1C6EEF004);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7FCB0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6EE4720();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6E7FD4C(uint64_t a1)
{
  v2 = sub_1C6E8005C(&qword_1EC1F8990, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding, &unk_1C6EEF03C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E7FDB8(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E7FE10(uint64_t a1, uint64_t a2)
{
  sub_1C6E8005C(&qword_1EC1F8990, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding, &unk_1C6EEF03C);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7FE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E7FEE0(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59708(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E8005C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E8005C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6E802BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E803CC(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8968, &qword_1C6EEEF08);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v38 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8A00, &qword_1C6EEF398);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v38 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v38 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  v42 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v19 = *(v42 + 24);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_1C6E80E08(a1 + v19, v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E80E08(a2 + v19, &v18[v20], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_1C6E80E70(v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_1C6E80E08(v18, v14, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    sub_1C6E80ED0(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v22 = &qword_1EC1F8220;
    v23 = &qword_1C6EEC6E0;
LABEL_7:
    v24 = v18;
LABEL_8:
    sub_1C6E80E70(v24, v22, v23);
    goto LABEL_23;
  }

  v25 = v46;
  sub_1C6E80F30(&v18[v20], v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v14 != *v25 || v14[1] != v25[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E80ED0(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E80ED0(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v22 = &qword_1EC1F7EF0;
    v23 = &unk_1C6EE9280;
    goto LABEL_7;
  }

  sub_1C6EE4430();
  sub_1C6E8005C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v26 = sub_1C6EE4A50();
  sub_1C6E80ED0(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E80ED0(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E80E70(v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v26 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (*v47 != *a2)
  {
    goto LABEL_23;
  }

  v27 = *(v42 + 28);
  v28 = *(v41 + 48);
  v29 = v45;
  sub_1C6E80E08(v47 + v27, v45, &qword_1EC1F8968, &qword_1C6EEEF08);
  sub_1C6E80E08(a2 + v27, v29 + v28, &qword_1EC1F8968, &qword_1C6EEEF08);
  v30 = v44;
  v31 = *(v43 + 48);
  if (v31(v29, 1, v44) != 1)
  {
    v32 = v40;
    sub_1C6E80E08(v29, v40, &qword_1EC1F8968, &qword_1C6EEEF08);
    if (v31(v29 + v28, 1, v30) != 1)
    {
      v33 = v29 + v28;
      v34 = v39;
      sub_1C6E80F30(v33, v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      v35 = sub_1C6E8B274(v32, v34);
      sub_1C6E80ED0(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      sub_1C6E80ED0(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      sub_1C6E80E70(v29, &qword_1EC1F8968, &qword_1C6EEEF08);
      if (v35)
      {
        goto LABEL_22;
      }

LABEL_23:
      v36 = 0;
      return v36 & 1;
    }

    sub_1C6E80ED0(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
    goto LABEL_19;
  }

  if (v31(v29 + v28, 1, v30) != 1)
  {
LABEL_19:
    v22 = &qword_1EC1F8A00;
    v23 = &qword_1C6EEF398;
    v24 = v29;
    goto LABEL_8;
  }

  sub_1C6E80E70(v29, &qword_1EC1F8968, &qword_1C6EEEF08);
LABEL_22:
  sub_1C6EE4430();
  sub_1C6E8005C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v36 = sub_1C6EE4A50();
  return v36 & 1;
}

uint64_t sub_1C6E80A9C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F8, &qword_1C6EEF390);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_1C6E80E08(a1 + v14, v13, &qword_1EC1F89F0, &unk_1C6EF1170);
  sub_1C6E80E08(a2 + v14, &v13[v15], &qword_1EC1F89F0, &unk_1C6EF1170);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6E80E70(v13, &qword_1EC1F89F0, &unk_1C6EF1170);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6E80E08(v13, v9, &qword_1EC1F89F0, &unk_1C6EF1170);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6E80ED0(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
LABEL_6:
    sub_1C6E80E70(v13, &qword_1EC1F89F8, &qword_1C6EEF390);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_1C6E80F30(&v13[v15], v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  v18 = sub_1C6E803CC(v9, v17);
  sub_1C6E80ED0(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E80ED0(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E80E70(v13, &qword_1EC1F89F0, &unk_1C6EF1170);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1C6E5EB40(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1C6EE4430();
  sub_1C6E8005C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = sub_1C6EE4A50();
  return v19 & 1;
}