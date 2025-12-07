uint64_t sub_1C6E80E08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E80E70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E80ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E80F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6E80FC0(uint64_t a1)
{
  sub_1C6E7E130(319, &qword_1EC1F8A28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6E7E130(319, &qword_1EC1F8A30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E810E4(uint64_t a1)
{
  sub_1C6E81178();
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E81178()
{
  if (!qword_1EDEF67B8)
  {
    v0 = sub_1C6EE4D50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEF67B8);
    }
  }
}

void sub_1C6E81280(uint64_t a1)
{
  if (!qword_1EDEF7CE8[0])
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(255);
    v1 = sub_1C6EE4FE0();
    if (!v2)
    {
      atomic_store(v1, qword_1EDEF7CE8);
    }
  }
}

uint64_t sub_1C6E812F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    v11 = MEMORY[0x1E69AABD8];
    v12 = MEMORY[0x1E69AABA8];
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1C6E81BA0(a1, v5, a2, a3, MEMORY[0x1E69AABE8], MEMORY[0x1E69AABB0], v11, v12);
          break;
        case 2:
          sub_1C6EE4580();
          break;
        case 1:
          sub_1C6E81AE8(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E81414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E81D68(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
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

    if (*(v3[2] + 16))
    {
      sub_1C6EE4400();
      sub_1C6EE43F0();
      sub_1C6EE4620();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E815C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8255C(&qword_1EC1F8A68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec, &unk_1C6EEF674);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E81668(uint64_t a1)
{
  v2 = sub_1C6E8255C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec, &unk_1C6EEF6AC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E816D4(uint64_t a1, uint64_t a2)
{
  sub_1C6E8255C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec, &unk_1C6EEF6AC);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E817B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE65B0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = "id";
  *(v13 + 8) = 2;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1C6EE46F0();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a3;
  *(v17 + 1) = 13;
  v17[16] = 2;
  v16();
  v18 = v12 + 2 * v9 + v8[14];
  *(v12 + 2 * v9) = 3;
  *v18 = a4;
  *(v18 + 8) = a5;
  *(v18 + 16) = 2;
  v16();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E819CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    v11 = MEMORY[0x1E69AABA0];
    v12 = MEMORY[0x1E69AABE0];
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1C6E81BA0(a1, v5, a2, a3, MEMORY[0x1E69AABB0], MEMORY[0x1E69AABE8], v11, v12);
          break;
        case 2:
          sub_1C6EE4580();
          break;
        case 1:
          sub_1C6E81AE8(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E81AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E8255C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E81BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  a5(0);
  a6(0);
  return sub_1C6EE44A0();
}

uint64_t sub_1C6E81C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E81D68(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);
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

    if (*(v3[2] + 16))
    {
      sub_1C6EE43F0();
      sub_1C6EE4400();
      sub_1C6EE4620();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E81D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_1C6E82B3C(a1 + *(v14 + 28), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6E82BAC(v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E82C68(v9, v13);
  sub_1C6E8255C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E82C0C(v13);
}

uint64_t sub_1C6E81F68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = a2(MEMORY[0x1E69E7CC0]);
  sub_1C6EE4420();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a3[v5], 1, 1, v6);
}

uint64_t sub_1C6E82020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E82094(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E82160(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8255C(&qword_1EC1F8A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec, &unk_1C6EEF50C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E82200@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t sub_1C6E8229C(uint64_t a1)
{
  v2 = sub_1C6E8255C(&qword_1EDEF62E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec, &unk_1C6EEF544);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E82308(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E82360(uint64_t a1, uint64_t a2)
{
  sub_1C6E8255C(&qword_1EDEF62E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec, &unk_1C6EEF544);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E823DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E824DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E8255C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E82780(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v28 = a4;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v27 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(a3(0) + 28);
  v19 = *(v15 + 56);
  sub_1C6E82B3C(a1 + v18, v17);
  sub_1C6E82B3C(a2 + v18, &v17[v19]);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) != 1)
  {
    sub_1C6E82B3C(v17, v13);
    if (v20(&v17[v19], 1, v7) != 1)
    {
      sub_1C6E82C68(&v17[v19], v10);
      v25 = *v13 == *v10 && v13[1] == v10[1];
      if (v25 || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6E8255C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v26 = sub_1C6EE4A50();
        sub_1C6E82C0C(v10);
        sub_1C6E82C0C(v13);
        sub_1C6E82BAC(v17, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v26 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      sub_1C6E82C0C(v10);
      sub_1C6E82C0C(v13);
      v21 = &qword_1EC1F7EF0;
      v22 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6E82BAC(v17, v21, v22);
      goto LABEL_8;
    }

    sub_1C6E82C0C(v13);
LABEL_6:
    v21 = &qword_1EC1F8220;
    v22 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v20(&v17[v19], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E82BAC(v17, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_16:
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1C6EE54B0()) && (v28(a1[2], a2[2]))
  {
    sub_1C6EE4430();
    sub_1C6E8255C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v23 = sub_1C6EE4A50();
    return v23 & 1;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1C6E82B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E82BAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E82C0C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E82C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1C6E82F78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C6E83034(319, a4, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v8 <= 0x3F)
    {
      sub_1C6E81280(319);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E83034(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_1C6EE49E0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C6E83108(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E83278(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    if (v2 <= 0x3F)
    {
      sub_1C6E83278(319, qword_1EDEF6D68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
      if (v3 <= 0x3F)
      {
        sub_1C6E83278(319, qword_1EDEF7078, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
        if (v4 <= 0x3F)
        {
          sub_1C6E83278(319, qword_1EDEF73C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
          if (v5 <= 0x3F)
          {
            sub_1C6E83278(319, qword_1EDEF7478, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C6E83278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6EE4FE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C6EE4430();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 24);

  return v19(v20, a2, v18);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C6EE4430();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 24);

  return v21(v22, a2, a2, v20);
}

void sub_1C6E836D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C6EE4430();
  if (v7 <= 0x3F)
  {
    sub_1C6E83278(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    if (v8 <= 0x3F)
    {
      sub_1C6E83278(319, a4, a5);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6E8394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6EE4430();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E839DC(uint64_t a1@<X8>)
{
  sub_1C6E8C39C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1C6E83A20(uint64_t a2@<X8>)
{
  sub_1C6E8C39C();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_1C6E83A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8C2F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C6E83AA8()
{
  result = qword_1EDEF6A58;
  if (!qword_1EDEF6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6A58);
  }

  return result;
}

unint64_t sub_1C6E83B30()
{
  result = qword_1EDEF6A60;
  if (!qword_1EDEF6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6A60);
  }

  return result;
}

unint64_t sub_1C6E83B88()
{
  result = qword_1EDEF6A50;
  if (!qword_1EDEF6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6A50);
  }

  return result;
}

unint64_t sub_1C6E83BDC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C6E83C04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E83C20(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E83C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8C348();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E83CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

unint64_t sub_1C6E83D44()
{
  result = qword_1EDEF6B08;
  if (!qword_1EDEF6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6B08);
  }

  return result;
}

uint64_t sub_1C6E83DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C6E83E20()
{
  result = qword_1EDEF6B10;
  if (!qword_1EDEF6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6B10);
  }

  return result;
}

unint64_t sub_1C6E83E78()
{
  result = qword_1EDEF6B00;
  if (!qword_1EDEF6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6B00);
  }

  return result;
}

uint64_t sub_1C6E83ECC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212BC0);
  __swift_project_value_buffer(v0, qword_1EC212BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA120;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalizer_spec";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "splitter_spec";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ngrams_spec";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "codes_spec";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E84168(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1C6E876F0(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      }

      else if (result == 2)
      {
        sub_1C6E84284(a1, v5, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6E84338(a1, v5, a2, a3);
          break;
        case 4:
          sub_1C6E843EC(a1, v5, a2, a3);
          break;
        case 5:
          sub_1C6E844A0(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C6E84284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  sub_1C6E88D5C(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, &unk_1C6EF22E8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E84338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec, &unk_1C6EF03C8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E843EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  sub_1C6E88D5C(qword_1EDEF7418, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec, &unk_1C6EEFF68);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E844A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  sub_1C6E88D5C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec, &unk_1C6EEF6AC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E84554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E878D8(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
  if (!v4)
  {
    sub_1C6E84620(v3, a1, a2, a3);
    sub_1C6E84830(v3, a1, a2, a3);
    sub_1C6E84A40(v3, a1, a2, a3);
    sub_1C6E84C50(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E84620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 24), v7, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E88D5C(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, &unk_1C6EF22E8);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
}

uint64_t sub_1C6E84830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 28), v7, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec, &unk_1C6EF03C8);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
}

uint64_t sub_1C6E84A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 32), v7, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
  sub_1C6E88D5C(qword_1EDEF7418, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec, &unk_1C6EEFF68);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
}

uint64_t sub_1C6E84C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 36), v7, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6E88D5C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec, &unk_1C6EEF6AC);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
}

uint64_t sub_1C6E84E60@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = a1[5];
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[8];
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = a1[9];
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2 + v12, 1, 1, v13);
}

uint64_t sub_1C6E85060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8B78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec, &unk_1C6EF0660);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E85100(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec, &unk_1C6EF0698);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E8516C(uint64_t a1, uint64_t a2)
{
  sub_1C6E88D5C(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec, &unk_1C6EF0698);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E851EC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212BD8);
  __swift_project_value_buffer(v0, qword_1EC212BD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EED1D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wordpiece_normalizer_spec";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "splitter_spec";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "codes_spec";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suffix_indicator";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "max_bytes_per_word";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "split_nonspaced_cjk_chars";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E854FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_1C6E85648(a1, v5, a2, a3);
          break;
        case 2:
          sub_1C6E856FC(a1, v5, a2, a3);
          break;
        case 3:
          sub_1C6E857B0(a1, v5, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_1C6EE4540();
      }

      else if (result == 7)
      {
        sub_1C6EE44D0();
      }
    }

    else if (result == 4)
    {
      sub_1C6E85864(a1, v5, a2, a3);
    }

    else
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E85648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E88D5C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E856FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  sub_1C6E88D5C(&qword_1EC1F8B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec, &unk_1C6EF2180);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E857B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec, &unk_1C6EF03C8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E85864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  sub_1C6E88D5C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec, &unk_1C6EEF6AC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E85918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E85A58(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E85C68(v3, a1, a2, a3);
    sub_1C6E85E78(v3, a1, a2, a3);
    sub_1C6E86088(v3, a1, a2, a3);
    v9 = *(v3 + 8);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1C6EE46C0();
    }

    if (*(v3 + 16))
    {
      sub_1C6EE4690();
    }

    if (*(v3 + 20) == 1)
    {
      sub_1C6EE4650();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E85A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 32), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E88D5C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E85C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B90, &qword_1C6EF0738);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 36), v7, &qword_1EC1F8B90, &qword_1C6EF0738);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F8B90, &qword_1C6EF0738);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  sub_1C6E88D5C(&qword_1EC1F8B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec, &unk_1C6EF2180);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
}

uint64_t sub_1C6E85E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 40), v7, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec, &unk_1C6EF03C8);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
}

uint64_t sub_1C6E86088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 44), v7, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6E88D5C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec, &unk_1C6EEF6AC);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
}

uint64_t sub_1C6E86298@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  sub_1C6EE4420();
  v4 = a1[8];
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[9];
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[10];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[11];
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t sub_1C6E86418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E8648C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E86558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8B88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec, &unk_1C6EF04F8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E865F8(uint64_t a1)
{
  v2 = sub_1C6E88D5C(&qword_1EC1F8B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec, &unk_1C6EF0530);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E86664(uint64_t a1, uint64_t a2)
{
  sub_1C6E88D5C(&qword_1EC1F8B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec, &unk_1C6EF0530);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E866F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
  sub_1C6E88D5C(qword_1EDEF6BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy, &unk_1C6EF0260);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E867A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7510, &unk_1C6EE66A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 24), v7, qword_1EC1F7510, &unk_1C6EE66A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, qword_1EC1F7510, &unk_1C6EE66A0);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  sub_1C6E88D5C(qword_1EDEF6BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy, &unk_1C6EF0260);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
}

uint64_t sub_1C6E86A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BA8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec, &unk_1C6EF0390);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E86B2C(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec, &unk_1C6EF03C8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E86B98(uint64_t a1, uint64_t a2)
{
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec, &unk_1C6EF03C8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E86C30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6EE6B40;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "strategy_type";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = sub_1C6EE46F0();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E86EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy, &unk_1C6EF0228);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E86F50(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF6BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy, &unk_1C6EF0260);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E86FBC(uint64_t a1, uint64_t a2)
{
  sub_1C6E88D5C(qword_1EDEF6BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy, &unk_1C6EF0260);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E87088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyType, &unk_1C6EF00C0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E87128(uint64_t a1)
{
  v2 = sub_1C6E88D5C(&qword_1EC1F8AE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyType, &unk_1C6EF00F8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E87194(uint64_t a1, uint64_t a2)
{
  sub_1C6E88D5C(&qword_1EC1F8AE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyType, &unk_1C6EF00F8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E87210()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212C38);
  __swift_project_value_buffer(v0, qword_1EC212C38);
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
  *v10 = "NO_SPLIT";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SPLIT_ON_STRING";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SPLIT_ON_PATTERN";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E87484(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6B40;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "id";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1C6EE46F0();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "strategy";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v12();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E87644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6E876F0(a1, v9, a2, a3, a4);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E876F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E88D5C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E877A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  sub_1C6E88D5C(qword_1EDEF6E58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy, &unk_1C6EEFE00);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E8785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_1C6E878D8(v5, a1, a2, a3, a4);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E878D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_1C6E8C22C(a1 + *(v14 + 20), v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6E8C294(v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E8C1C4(v9, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E88D5C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E87AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  sub_1C6E8C22C(a1 + *(v12 + 24), v7, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E8C294(v7, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  }

  sub_1C6E8C1C4(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  sub_1C6E88D5C(qword_1EDEF6E58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy, &unk_1C6EEFE00);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
}

uint64_t sub_1C6E87D14@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_1C6EE4420();
  v6 = *(a1 + 20);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(a1 + 24);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t sub_1C6E87EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec, &unk_1C6EEFF30);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E87F40(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF7418, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec, &unk_1C6EEFF68);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E87FAC(uint64_t a1, uint64_t a2)
{
  sub_1C6E88D5C(qword_1EDEF7418, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec, &unk_1C6EEFF68);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E88044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_1C6EE44E0();
    }

    else if (result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E88100(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, void (*a6)(void))
{
  if (!*v6 || (a4(a1, a2, a3), result = sub_1C6EE4660(), !v7))
  {
    v10 = v6[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v6[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_1C6EE46C0(), !v7))
    {
      a6(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E881F8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E88248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E882BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E883D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy, &unk_1C6EEFDC8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E88474(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF6E58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy, &unk_1C6EEFE00);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E884E0(uint64_t a1, uint64_t a2)
{
  sub_1C6E88D5C(qword_1EDEF6E58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy, &unk_1C6EEFE00);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E8856C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E885B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1C6E8862C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E88694(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E88720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategyType, &unk_1C6EEFC60);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E887C0(uint64_t a1)
{
  v2 = sub_1C6E88D5C(&qword_1EC1F8AA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategyType, &unk_1C6EEFC98);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E8882C(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E88884(uint64_t a1, uint64_t a2)
{
  sub_1C6E88D5C(&qword_1EC1F8AA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategyType, &unk_1C6EEFC98);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E88900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E88954(uint64_t a1, uint64_t a2)
{
  sub_1C6EE4430();
  sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E889DC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212C98);
  __swift_project_value_buffer(v0, qword_1EC212C98);
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
  *v10 = "NO_NGRAMS";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DICTIONARY_GREEDY_LTR";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E88C10@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t sub_1C6E88D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E8945C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E8968C(uint64_t *a1, uint64_t a2)
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

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (sub_1C6EE54B0() & 1) != 0)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
    sub_1C6EE4430();
    sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E897A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
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

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1C6EE54B0() & 1) != 0)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
    sub_1C6EE4430();
    sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E898A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7510, &unk_1C6EE66A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = (&v40 - v7);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B68, &qword_1C6EF0728);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v40 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  sub_1C6E8C22C(a1 + v19, v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v21 = a2 + v19;
  v22 = a2;
  sub_1C6E8C22C(v21, &v18[v20], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) != 1)
  {
    sub_1C6E8C22C(v18, v14, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v23(&v18[v20], 1, v9) != 1)
    {
      v27 = v43;
      sub_1C6E8C1C4(&v18[v20], v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if (*v14 == *v27 && v14[1] == v27[1] || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v28 = sub_1C6EE4A50();
        sub_1C6E8C164(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E8C164(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E8C294(v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v28 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      sub_1C6E8C164(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E8C164(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v24 = &qword_1EC1F7EF0;
      v25 = &unk_1C6EE9280;
LABEL_7:
      v26 = v18;
LABEL_18:
      sub_1C6E8C294(v26, v24, v25);
      goto LABEL_19;
    }

    sub_1C6E8C164(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v24 = &qword_1EC1F8220;
    v25 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v23(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E8C294(v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_12:
  v29 = *(v44 + 24);
  v30 = *(v45 + 48);
  v31 = v48;
  sub_1C6E8C22C(v49 + v29, v48, qword_1EC1F7510, &unk_1C6EE66A0);
  sub_1C6E8C22C(v22 + v29, v31 + v30, qword_1EC1F7510, &unk_1C6EE66A0);
  v32 = v47;
  v33 = *(v46 + 48);
  if (v33(v31, 1, v47) == 1)
  {
    if (v33(v31 + v30, 1, v32) == 1)
    {
      sub_1C6E8C294(v31, qword_1EC1F7510, &unk_1C6EE66A0);
LABEL_22:
      sub_1C6EE4430();
      sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v35 = sub_1C6EE4A50();
      return v35 & 1;
    }

    goto LABEL_17;
  }

  v34 = v42;
  sub_1C6E8C22C(v31, v42, qword_1EC1F7510, &unk_1C6EE66A0);
  if (v33(v31 + v30, 1, v32) == 1)
  {
    sub_1C6E8C164(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
LABEL_17:
    v24 = &qword_1EC1F8B68;
    v25 = &qword_1C6EF0728;
    v26 = v31;
    goto LABEL_18;
  }

  v37 = v31 + v30;
  v38 = v41;
  sub_1C6E8C1C4(v37, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  v39 = sub_1C6E8968C(v34, v38);
  sub_1C6E8C164(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  sub_1C6E8C164(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  sub_1C6E8C294(v31, qword_1EC1F7510, &unk_1C6EE66A0);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_19:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1C6E89F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = (&v40 - v7);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B70, &qword_1C6EF0730);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v40 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  sub_1C6E8C22C(a1 + v19, v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v21 = a2 + v19;
  v22 = a2;
  sub_1C6E8C22C(v21, &v18[v20], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) != 1)
  {
    sub_1C6E8C22C(v18, v14, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v23(&v18[v20], 1, v9) != 1)
    {
      v27 = v43;
      sub_1C6E8C1C4(&v18[v20], v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if (*v14 == *v27 && v14[1] == v27[1] || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v28 = sub_1C6EE4A50();
        sub_1C6E8C164(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E8C164(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E8C294(v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v28 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      sub_1C6E8C164(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E8C164(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v24 = &qword_1EC1F7EF0;
      v25 = &unk_1C6EE9280;
LABEL_7:
      v26 = v18;
LABEL_18:
      sub_1C6E8C294(v26, v24, v25);
      goto LABEL_19;
    }

    sub_1C6E8C164(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v24 = &qword_1EC1F8220;
    v25 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v23(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E8C294(v18, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_12:
  v29 = *(v44 + 24);
  v30 = *(v45 + 48);
  v31 = v48;
  sub_1C6E8C22C(v49 + v29, v48, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  sub_1C6E8C22C(v22 + v29, v31 + v30, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  v32 = v47;
  v33 = *(v46 + 48);
  if (v33(v31, 1, v47) == 1)
  {
    if (v33(v31 + v30, 1, v32) == 1)
    {
      sub_1C6E8C294(v31, &qword_1EC1F7EC8, &unk_1C6EE90C0);
LABEL_22:
      sub_1C6EE4430();
      sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v35 = sub_1C6EE4A50();
      return v35 & 1;
    }

    goto LABEL_17;
  }

  v34 = v42;
  sub_1C6E8C22C(v31, v42, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  if (v33(v31 + v30, 1, v32) == 1)
  {
    sub_1C6E8C164(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
LABEL_17:
    v24 = &qword_1EC1F8B70;
    v25 = &qword_1C6EF0730;
    v26 = v31;
    goto LABEL_18;
  }

  v37 = v31 + v30;
  v38 = v41;
  sub_1C6E8C1C4(v37, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  v39 = sub_1C6E897A0(v34, v38);
  sub_1C6E8C164(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  sub_1C6E8C164(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  sub_1C6E8C294(v31, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_19:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1C6E8A614(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v91 = a1;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v72 = (&v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v89 = &v71 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B48, &qword_1C6EF0710);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v71 - v6;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v71 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B58, &qword_1C6EF0720);
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v71 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v78 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B90, &qword_1C6EF0738);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v71 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8BA0, &unk_1C6EF0740);
  MEMORY[0x1EEE9AC00](v84);
  v17 = &v71 - v16;
  v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = (&v71 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v71 - v27;
  v88 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  v29 = *(v88 + 32);
  v30 = *(v26 + 56);
  sub_1C6E8C22C(v91 + v29, v28, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v31 = v90 + v29;
  v32 = v90;
  sub_1C6E8C22C(v31, &v28[v30], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v33 = *(v19 + 48);
  if (v33(v28, 1, v18) == 1)
  {
    if (v33(&v28[v30], 1, v18) == 1)
    {
      sub_1C6E8C294(v28, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1C6E8C22C(v28, v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v33(&v28[v30], 1, v18) == 1)
  {
    sub_1C6E8C164(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v34 = &qword_1EC1F8220;
    v35 = &qword_1C6EEC6E0;
LABEL_7:
    v36 = v28;
LABEL_33:
    sub_1C6E8C294(v36, v34, v35);
    goto LABEL_34;
  }

  sub_1C6E8C1C4(&v28[v30], v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v24 != *v21 || v24[1] != v21[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E8C164(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E8C164(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v34 = &qword_1EC1F7EF0;
    v35 = &unk_1C6EE9280;
    goto LABEL_7;
  }

  sub_1C6EE4430();
  sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v37 = sub_1C6EE4A50();
  sub_1C6E8C164(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8C164(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8C294(v28, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v37 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_12:
  v38 = v88;
  v39 = *(v88 + 36);
  v40 = *(v84 + 48);
  v41 = v91;
  sub_1C6E8C22C(v91 + v39, v17, &qword_1EC1F8B90, &qword_1C6EF0738);
  sub_1C6E8C22C(v32 + v39, &v17[v40], &qword_1EC1F8B90, &qword_1C6EF0738);
  v42 = v86;
  v43 = *(v85 + 48);
  if (v43(v17, 1, v86) == 1)
  {
    v44 = v43(&v17[v40], 1, v42);
    v45 = v89;
    v46 = v87;
    if (v44 == 1)
    {
      sub_1C6E8C294(v17, &qword_1EC1F8B90, &qword_1C6EF0738);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v47 = v83;
  sub_1C6E8C22C(v17, v83, &qword_1EC1F8B90, &qword_1C6EF0738);
  v48 = v43(&v17[v40], 1, v42);
  v45 = v89;
  v46 = v87;
  if (v48 == 1)
  {
    sub_1C6E8C164(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
LABEL_17:
    v34 = &qword_1EC1F8BA0;
    v35 = &unk_1C6EF0740;
    v36 = v17;
    goto LABEL_33;
  }

  v49 = &v17[v40];
  v50 = v78;
  sub_1C6E8C1C4(v49, v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  v51 = sub_1C6E9A558(v47, v50);
  sub_1C6E8C164(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  sub_1C6E8C164(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  sub_1C6E8C294(v17, &qword_1EC1F8B90, &qword_1C6EF0738);
  if ((v51 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  v52 = v45;
  v53 = *(v38 + 40);
  v54 = *(v79 + 48);
  v55 = v82;
  sub_1C6E8C22C(v41 + v53, v82, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  sub_1C6E8C22C(v32 + v53, v55 + v54, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  v56 = v81;
  v57 = *(v80 + 48);
  if (v57(v55, 1, v81) == 1)
  {
    if (v57(v55 + v54, 1, v56) == 1)
    {
      sub_1C6E8C294(v55, &qword_1EC1F7DD0, &qword_1C6EE8B60);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_1C6E8C22C(v55, v46, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (v57(v55 + v54, 1, v56) == 1)
  {
    sub_1C6E8C164(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
LABEL_24:
    v34 = &qword_1EC1F8B58;
    v35 = &qword_1C6EF0720;
    v36 = v55;
    goto LABEL_33;
  }

  v58 = v55 + v54;
  v59 = v73;
  sub_1C6E8C1C4(v58, v73, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  v60 = sub_1C6E898A4(v46, v59);
  sub_1C6E8C164(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E8C164(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E8C294(v55, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if ((v60 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v61 = *(v38 + 44);
  v62 = *(v74 + 48);
  v63 = v77;
  sub_1C6E8C22C(v41 + v61, v77, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  sub_1C6E8C22C(v32 + v61, v63 + v62, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  v64 = v76;
  v65 = *(v75 + 48);
  if (v65(v63, 1, v76) != 1)
  {
    sub_1C6E8C22C(v63, v52, &qword_1EC1F7DC0, &qword_1C6EE8B50);
    if (v65(v63 + v62, 1, v64) != 1)
    {
      v68 = v63 + v62;
      v69 = v72;
      sub_1C6E8C1C4(v68, v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
      v70 = sub_1C6E82754(v52, v69);
      sub_1C6E8C164(v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
      sub_1C6E8C164(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
      sub_1C6E8C294(v63, &qword_1EC1F7DC0, &qword_1C6EE8B50);
      if ((v70 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    sub_1C6E8C164(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
    goto LABEL_32;
  }

  if (v65(v63 + v62, 1, v64) != 1)
  {
LABEL_32:
    v34 = &qword_1EC1F8B48;
    v35 = &qword_1C6EF0710;
    v36 = v63;
    goto LABEL_33;
  }

  sub_1C6E8C294(v63, &qword_1EC1F7DC0, &qword_1C6EE8B50);
LABEL_37:
  if (*v41 == *v32 && *(v41 + 8) == *(v32 + 8) || (sub_1C6EE54B0()) && *(v41 + 16) == *(v32 + 16) && *(v41 + 20) == *(v32 + 20))
  {
    sub_1C6EE4430();
    sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v66 = sub_1C6EE4A50();
    return v66 & 1;
  }

LABEL_34:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_1C6E8B274(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v110 = a2;
  v89 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = (&v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v84 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B48, &qword_1C6EF0710);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v84 - v5;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v84 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B50, &qword_1C6EF0718);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v84 - v10;
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v84 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B58, &qword_1C6EF0720);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v84 - v15;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v106 = *(v16 - 8);
  v107 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v104 = &v84 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B60, &unk_1C6EF2360);
  MEMORY[0x1EEE9AC00](v105);
  v21 = &v84 - v20;
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = (&v84 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v84 - v31;
  v108 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v33 = v108[5];
  v34 = *(v30 + 56);
  sub_1C6E8C22C(v109 + v33, v32, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E8C22C(v110 + v33, &v32[v34], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v35 = *(v23 + 48);
  if (v35(v32, 1, v22) == 1)
  {
    if (v35(&v32[v34], 1, v22) == 1)
    {
      sub_1C6E8C294(v32, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1C6E8C22C(v32, v28, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v35(&v32[v34], 1, v22) == 1)
  {
    sub_1C6E8C164(v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v36 = &qword_1EC1F8220;
    v37 = &qword_1C6EEC6E0;
LABEL_7:
    v38 = v32;
LABEL_41:
    sub_1C6E8C294(v38, v36, v37);
    goto LABEL_42;
  }

  sub_1C6E8C1C4(&v32[v34], v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v28 != *v25 || v28[1] != v25[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E8C164(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E8C164(v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v36 = &qword_1EC1F7EF0;
    v37 = &unk_1C6EE9280;
    goto LABEL_7;
  }

  sub_1C6EE4430();
  sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v39 = sub_1C6EE4A50();
  sub_1C6E8C164(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8C164(v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8C294(v32, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v39 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_12:
  v40 = v109;
  v41 = v108[6];
  v42 = *(v105 + 48);
  sub_1C6E8C22C(v109 + v41, v21, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  v43 = v110;
  sub_1C6E8C22C(v110 + v41, &v21[v42], &qword_1EC1F7DD8, &qword_1C6EE8B68);
  v44 = v107;
  v45 = *(v106 + 48);
  if (v45(v21, 1, v107) == 1)
  {
    if (v45(&v21[v42], 1, v44) == 1)
    {
      sub_1C6E8C294(v21, &qword_1EC1F7DD8, &qword_1C6EE8B68);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v46 = v104;
  sub_1C6E8C22C(v21, v104, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if (v45(&v21[v42], 1, v44) == 1)
  {
    sub_1C6E8C164(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
LABEL_17:
    v36 = &qword_1EC1F8B60;
    v37 = &unk_1C6EF2360;
    v38 = v21;
    goto LABEL_41;
  }

  v47 = &v21[v42];
  v48 = v97;
  sub_1C6E8C1C4(v47, v97, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  v49 = sub_1C6E9A8FC(v46, v48);
  sub_1C6E8C164(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E8C164(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E8C294(v21, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if ((v49 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_19:
  v50 = v108[7];
  v51 = *(v98 + 48);
  v52 = v101;
  sub_1C6E8C22C(v40 + v50, v101, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  sub_1C6E8C22C(v43 + v50, v52 + v51, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  v53 = v100;
  v54 = *(v99 + 48);
  if (v54(v52, 1, v100) == 1)
  {
    v55 = v54(v52 + v51, 1, v53);
    v57 = v102;
    v56 = v103;
    if (v55 == 1)
    {
      sub_1C6E8C294(v52, &qword_1EC1F7DD0, &qword_1C6EE8B60);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v58 = v96;
  sub_1C6E8C22C(v52, v96, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  v59 = v54(v52 + v51, 1, v53);
  v57 = v102;
  v56 = v103;
  if (v59 == 1)
  {
    sub_1C6E8C164(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
LABEL_24:
    v36 = &qword_1EC1F8B58;
    v37 = &qword_1C6EF0720;
    v38 = v52;
    goto LABEL_41;
  }

  v60 = v52 + v51;
  v61 = v91;
  sub_1C6E8C1C4(v60, v91, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  v62 = sub_1C6E898A4(v58, v61);
  sub_1C6E8C164(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E8C164(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E8C294(v52, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if ((v62 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  v63 = v108[8];
  v64 = *(v92 + 48);
  v65 = v95;
  sub_1C6E8C22C(v40 + v63, v95, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  v66 = v43 + v63;
  v67 = v65;
  sub_1C6E8C22C(v66, v65 + v64, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  v68 = v94;
  v69 = *(v93 + 48);
  if (v69(v65, 1, v94) != 1)
  {
    sub_1C6E8C22C(v65, v57, &qword_1EC1F7DC8, &qword_1C6EE8B58);
    if (v69(v65 + v64, 1, v68) != 1)
    {
      v70 = v65 + v64;
      v71 = v86;
      sub_1C6E8C1C4(v70, v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
      v72 = sub_1C6E89F5C(v57, v71);
      sub_1C6E8C164(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
      sub_1C6E8C164(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
      sub_1C6E8C294(v65, &qword_1EC1F7DC8, &qword_1C6EE8B58);
      if ((v72 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    sub_1C6E8C164(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
LABEL_32:
    v36 = &qword_1EC1F8B50;
    v37 = &qword_1C6EF0718;
LABEL_40:
    v38 = v67;
    goto LABEL_41;
  }

  if (v69(v65 + v64, 1, v68) != 1)
  {
    goto LABEL_32;
  }

  sub_1C6E8C294(v65, &qword_1EC1F7DC8, &qword_1C6EE8B58);
LABEL_34:
  v73 = v108[9];
  v74 = *(v87 + 48);
  v75 = v90;
  sub_1C6E8C22C(v40 + v73, v90, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  v76 = v43 + v73;
  v67 = v75;
  sub_1C6E8C22C(v76, v75 + v74, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  v77 = *(v88 + 48);
  v78 = v89;
  if (v77(v75, 1, v89) == 1)
  {
    if (v77(v75 + v74, 1, v78) == 1)
    {
      sub_1C6E8C294(v75, &qword_1EC1F7DC0, &qword_1C6EE8B50);
LABEL_45:
      sub_1C6EE4430();
      sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v79 = sub_1C6EE4A50();
      return v79 & 1;
    }

    goto LABEL_39;
  }

  sub_1C6E8C22C(v75, v56, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  if (v77(v75 + v74, 1, v78) == 1)
  {
    sub_1C6E8C164(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
LABEL_39:
    v36 = &qword_1EC1F8B48;
    v37 = &qword_1C6EF0710;
    goto LABEL_40;
  }

  v81 = v75 + v74;
  v82 = v85;
  sub_1C6E8C1C4(v81, v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  v83 = sub_1C6E82754(v56, v82);
  sub_1C6E8C164(v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6E8C164(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6E8C294(v75, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  if (v83)
  {
    goto LABEL_45;
  }

LABEL_42:
  v79 = 0;
  return v79 & 1;
}

uint64_t sub_1C6E8C164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E8C1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E8C22C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E8C294(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C6E8C2F4()
{
  result = qword_1EDEF6A68[0];
  if (!qword_1EDEF6A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF6A68);
  }

  return result;
}

unint64_t sub_1C6E8C348()
{
  result = qword_1EDEF6B18[0];
  if (!qword_1EDEF6B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF6B18);
  }

  return result;
}

void sub_1C6E8C3D8(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E83278(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    if (v2 <= 0x3F)
    {
      sub_1C6E83278(319, &qword_1EC1F8BE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
      if (v3 <= 0x3F)
      {
        sub_1C6E83278(319, qword_1EDEF7078, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
        if (v4 <= 0x3F)
        {
          sub_1C6E83278(319, qword_1EDEF7478, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_64Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_65Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6E8C668(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(uint64_t a1)
{
  result = qword_1EDEF7D18;
  if (!qword_1EDEF7D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E8C8F0(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E8C96C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212CB0);
  __swift_project_value_buffer(v0, qword_1EC212CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6EE6590;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "string_value";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C6EE46F0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C6EE4700();
}

uint64_t sub_1C6E8CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1C6E8CB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E8CBDC@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E8CC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E8CC98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E8CD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8D200(&qword_1EC1F8C20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF0884);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E8CDE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1F7310 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6EE4720();
  v3 = __swift_project_value_buffer(v2, qword_1EC212CB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6E8CE90(uint64_t a1)
{
  v2 = sub_1C6E8D200(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E8CEFC(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E8CF54(uint64_t a1, uint64_t a2)
{
  sub_1C6E8D200(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E8CFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E8D024(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E8D200(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E8D200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C6E8D258@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C6E8D288@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E8D2B0(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E8D31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E91A7C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E8D368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E8D3E4()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212CC8);
  __swift_project_value_buffer(v0, qword_1EC212CC8);
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
  *(v5 + v2) = 3;
  *v10 = "embedding_header";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "strategy";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E8D5FC()
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_1EC1F8C28 = v0;
  return result;
}

uint64_t sub_1C6E8D710(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D40, &qword_1C6EF1168);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-v10];
  v12 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v18, v11, &qword_1EC1F7EF0, &unk_1C6EE9280);
  swift_beginAccess();
  sub_1C6E91440(v11, v1 + v12, &qword_1EC1F7EF0, &unk_1C6EE9280);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v19, v8, &qword_1EC1F89F0, &unk_1C6EF1170);
  swift_beginAccess();
  sub_1C6E91440(v8, v1 + v14, &qword_1EC1F89F0, &unk_1C6EF1170);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v20, v5, &qword_1EC1F8D40, &qword_1C6EF1168);

  swift_beginAccess();
  sub_1C6E91440(v5, v1 + v16, &qword_1EC1F8D40, &qword_1C6EF1168);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C6E8DA68()
{
  sub_1C6E91A1C(v0 + OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E91A1C(v0 + OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader, &qword_1EC1F89F0, &unk_1C6EF1170);
  sub_1C6E91A1C(v0 + OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy, &qword_1EC1F8D40, &qword_1C6EF1168);

  return swift_deallocClassInstance();
}

void sub_1C6E8DB44(uint64_t a1)
{
  sub_1C6E8DC9C(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if (v1 <= 0x3F)
  {
    sub_1C6E8DC9C(319, &qword_1EC1F8A30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
    if (v2 <= 0x3F)
    {
      sub_1C6E8DC9C(319, &qword_1EC1F8C58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C6E8DC9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6EE4FE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6E8DD38(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E8DC9C(319, &qword_1EC1F8C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6E8DE20(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType.Enum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType.Enum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6E8DEEC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E8DF0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1C6E8DF40()
{
  result = qword_1EC1F8C90;
  if (!qword_1EC1F8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8C90);
  }

  return result;
}

unint64_t sub_1C6E8DF98()
{
  result = qword_1EC1F8C98;
  if (!qword_1EC1F8C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F8CA0, qword_1C6EF0B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8C98);
  }

  return result;
}

unint64_t sub_1C6E8E000()
{
  result = qword_1EC1F8CA8;
  if (!qword_1EC1F8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8CA8);
  }

  return result;
}

unint64_t sub_1C6E8E058()
{
  result = qword_1EC1F8CB0;
  if (!qword_1EC1F8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8CB0);
  }

  return result;
}

uint64_t sub_1C6E8E0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C6E8D710(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C6E8E154(v10, a1, a2, a3);
}

uint64_t sub_1C6E8E154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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
        sub_1C6E8E3C4(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C6E8E2E8(a2, a1, a3, a4);
        break;
      case 1:
        sub_1C6E8E20C(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1C6E8E20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E90EE8(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE45A0();
  return swift_endAccess();
}

uint64_t sub_1C6E8E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  sub_1C6E90EE8(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, &unk_1C6EEF1A4);
  sub_1C6EE45A0();
  return swift_endAccess();
}

uint64_t sub_1C6E8E3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  sub_1C6E90EE8(&qword_1EC1F8D00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy, &unk_1C6EF0F88);
  sub_1C6EE45A0();
  return swift_endAccess();
}

uint64_t sub_1C6E8E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec(0);
  result = sub_1C6E8E50C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E8E50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6E8E574(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C6E8E790(a1, a2, a3, a4);
    return sub_1C6E8E9AC(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C6E8E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v12, v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E91A1C(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E91378(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E90EE8(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E913E0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E8E790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v12, v7, &qword_1EC1F89F0, &unk_1C6EF1170);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E91A1C(v7, &qword_1EC1F89F0, &unk_1C6EF1170);
  }

  sub_1C6E91378(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E90EE8(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, &unk_1C6EEF1A4);
  sub_1C6EE46E0();
  return sub_1C6E913E0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
}

uint64_t sub_1C6E8E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D40, &qword_1C6EF1168);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v12, v7, &qword_1EC1F8D40, &qword_1C6EF1168);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E91A1C(v7, &qword_1EC1F8D40, &qword_1C6EF1168);
  }

  sub_1C6E91378(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  sub_1C6E90EE8(&qword_1EC1F8D00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy, &unk_1C6EF0F88);
  sub_1C6EE46E0();
  return sub_1C6E913E0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
}

BOOL sub_1C6E8EBC8(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v71 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D48, &qword_1C6EF1180);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D40, &qword_1C6EF1168);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v67 - v8;
  v77 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v68 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F8, &qword_1C6EEF390);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v67 - v14;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v82 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v74 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = (&v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v67 - v25;
  v27 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v27, v26, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v28 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  v29 = v83;
  swift_beginAccess();
  v30 = *(v18 + 56);
  sub_1C6E919B4(v26, v20, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v31 = v29;
  v32 = v82;
  sub_1C6E919B4(v31 + v28, &v20[v30], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v33 = *(v32 + 48);
  if (v33(v20, 1, v15) == 1)
  {

    sub_1C6E91A1C(v26, &qword_1EC1F7EF0, &unk_1C6EE9280);
    v34 = a1;
    if (v33(&v20[v30], 1, v15) == 1)
    {
      sub_1C6E91A1C(v20, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_11;
    }

LABEL_6:
    v35 = &qword_1EC1F8220;
    v36 = &qword_1C6EEC6E0;
    v37 = v20;
LABEL_25:
    sub_1C6E91A1C(v37, v35, v36);
    goto LABEL_26;
  }

  v34 = a1;
  sub_1C6E919B4(v20, v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v33(&v20[v30], 1, v15) == 1)
  {

    sub_1C6E91A1C(v26, &qword_1EC1F7EF0, &unk_1C6EE9280);
    sub_1C6E913E0(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    goto LABEL_6;
  }

  v82 = v20;
  v38 = v74;
  sub_1C6E91378(&v20[v30], v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v24 != *v38 || v24[1] != v38[1]) && (sub_1C6EE54B0() & 1) == 0)
  {

    sub_1C6E91A1C(v26, &qword_1EC1F7EF0, &unk_1C6EE9280);
    sub_1C6E913E0(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E913E0(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v37 = v82;
    v35 = &qword_1EC1F7EF0;
    v36 = &unk_1C6EE9280;
    goto LABEL_25;
  }

  sub_1C6EE4430();
  sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);

  v39 = sub_1C6EE4A50();
  sub_1C6E91A1C(v26, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E913E0(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E913E0(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E91A1C(v82, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v39 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  v40 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  swift_beginAccess();
  v41 = v81;
  sub_1C6E919B4(v34 + v40, v81, &qword_1EC1F89F0, &unk_1C6EF1170);
  v42 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  v43 = v83;
  swift_beginAccess();
  v44 = *(v75 + 48);
  v45 = v78;
  sub_1C6E919B4(v41, v78, &qword_1EC1F89F0, &unk_1C6EF1170);
  sub_1C6E919B4(v43 + v42, v45 + v44, &qword_1EC1F89F0, &unk_1C6EF1170);
  v46 = *(v76 + 48);
  v47 = v77;
  if (v46(v45, 1, v77) == 1)
  {
    sub_1C6E91A1C(v41, &qword_1EC1F89F0, &unk_1C6EF1170);
    v48 = v46(v45 + v44, 1, v47);
    v49 = v80;
    v50 = v79;
    if (v48 == 1)
    {
      sub_1C6E91A1C(v45, &qword_1EC1F89F0, &unk_1C6EF1170);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v51 = v73;
  sub_1C6E919B4(v45, v73, &qword_1EC1F89F0, &unk_1C6EF1170);
  v52 = v46(v45 + v44, 1, v47);
  v49 = v80;
  v50 = v79;
  if (v52 == 1)
  {
    sub_1C6E91A1C(v81, &qword_1EC1F89F0, &unk_1C6EF1170);
    sub_1C6E913E0(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
LABEL_16:
    v35 = &qword_1EC1F89F8;
    v36 = &qword_1C6EEF390;
    v37 = v45;
    goto LABEL_25;
  }

  v53 = v45 + v44;
  v54 = v68;
  sub_1C6E91378(v53, v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  v55 = sub_1C6E803CC(v51, v54);
  sub_1C6E913E0(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E91A1C(v81, &qword_1EC1F89F0, &unk_1C6EF1170);
  sub_1C6E913E0(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E91A1C(v45, &qword_1EC1F89F0, &unk_1C6EF1170);
  if ((v55 & 1) == 0)
  {
LABEL_26:

    return 0;
  }

LABEL_18:
  v56 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  swift_beginAccess();
  sub_1C6E919B4(v34 + v56, v50, &qword_1EC1F8D40, &qword_1C6EF1168);
  v57 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  v58 = v83;
  swift_beginAccess();
  v59 = *(v69 + 48);
  v60 = v72;
  sub_1C6E919B4(v50, v72, &qword_1EC1F8D40, &qword_1C6EF1168);
  sub_1C6E919B4(v58 + v57, v60 + v59, &qword_1EC1F8D40, &qword_1C6EF1168);
  v61 = *(v70 + 48);
  v62 = v71;
  if (v61(v60, 1, v71) == 1)
  {

    sub_1C6E91A1C(v50, &qword_1EC1F8D40, &qword_1C6EF1168);
    if (v61(v60 + v59, 1, v62) == 1)
    {
      sub_1C6E91A1C(v60, &qword_1EC1F8D40, &qword_1C6EF1168);
      return 1;
    }

    goto LABEL_23;
  }

  sub_1C6E919B4(v60, v49, &qword_1EC1F8D40, &qword_1C6EF1168);
  if (v61(v60 + v59, 1, v62) == 1)
  {

    sub_1C6E91A1C(v50, &qword_1EC1F8D40, &qword_1C6EF1168);
    sub_1C6E913E0(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
LABEL_23:
    sub_1C6E91A1C(v60, &qword_1EC1F8D48, &qword_1C6EF1180);
    return 0;
  }

  v64 = v60 + v59;
  v65 = v67;
  sub_1C6E91378(v64, v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  v66 = sub_1C6E914A8(v49, v65);

  sub_1C6E913E0(v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  sub_1C6E91A1C(v50, &qword_1EC1F8D40, &qword_1C6EF1168);
  sub_1C6E913E0(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  sub_1C6E91A1C(v60, &qword_1EC1F8D40, &qword_1C6EF1168);
  return (v66 & 1) != 0;
}

uint64_t sub_1C6E8F844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  if (qword_1EC1F7320 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EC1F8C28;
}

uint64_t sub_1C6E8F92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E90EE8(&qword_1EC1F8D38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec, &unk_1C6EF10B8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E8F9CC(uint64_t a1)
{
  v2 = sub_1C6E90EE8(&qword_1EC1F8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec, &unk_1C6EF10F0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E8FA38(uint64_t a1, uint64_t a2)
{
  sub_1C6E90EE8(&qword_1EC1F8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec, &unk_1C6EF10F0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E8FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6E8FB44(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E8FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
  sub_1C6E90EE8(&qword_1EC1F8CE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy, &unk_1C6EF0E20);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E8FBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E8FC50(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E8FC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8C60, &unk_1C6EF0950);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  sub_1C6E919B4(a1 + *(v12 + 20), v7, &qword_1EC1F8C60, &unk_1C6EF0950);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E91A1C(v7, &qword_1EC1F8C60, &unk_1C6EF0950);
  }

  sub_1C6E91378(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
  sub_1C6E90EE8(&qword_1EC1F8CE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy, &unk_1C6EF0E20);
  sub_1C6EE46E0();
  return sub_1C6E913E0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
}

uint64_t sub_1C6E8FE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6E8FF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E90EE8(&qword_1EC1F8D58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy, &unk_1C6EF0F50);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E8FFE8(uint64_t a1)
{
  v2 = sub_1C6E90EE8(&qword_1EC1F8D00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy, &unk_1C6EF0F88);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E90054(uint64_t a1, uint64_t a2)
{
  sub_1C6E90EE8(&qword_1EC1F8D00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy, &unk_1C6EF0F88);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E900EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1C6E90258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6E91A7C();
        sub_1C6EE44E0();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E902F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C6E91A7C(), result = sub_1C6EE4660(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E903AC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E903F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E90468(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E90534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E90EE8(&qword_1EC1F8D60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy, &unk_1C6EF0DE8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E905D4(uint64_t a1)
{
  v2 = sub_1C6E90EE8(&qword_1EC1F8CE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy, &unk_1C6EF0E20);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E90640(uint64_t a1, uint64_t a2)
{
  sub_1C6E90EE8(&qword_1EC1F8CE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy, &unk_1C6EF0E20);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E906C0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D10);
  __swift_project_value_buffer(v0, qword_1EC212D10);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E9070C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1C6E90788@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E907F0(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E908AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E90EE8(&qword_1EC1F8D70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType, &unk_1C6EF0C80);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9094C(uint64_t a1)
{
  v2 = sub_1C6E90EE8(&qword_1EC1F8CC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType, &unk_1C6EF0CB8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E909B8(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E90A10(uint64_t a1, uint64_t a2)
{
  sub_1C6E90EE8(&qword_1EC1F8CC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType, &unk_1C6EF0CB8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E90A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E90AE0(uint64_t a1, uint64_t a2)
{
  sub_1C6EE4430();
  sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E90B68()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D28);
  __swift_project_value_buffer(v0, qword_1EC212D28);
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
  *v10 = "AGGREGATE";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DO_NOT_AGGREGATE";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E90D9C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t sub_1C6E90EE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E91268(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E91378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E913E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E91440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E914A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25[0] = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8C60, &unk_1C6EF0950);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v25 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D50, &qword_1C6EF1188);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - v12;
  v14 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0) + 20);
  v15 = *(v11 + 56);
  v25[1] = a1;
  sub_1C6E919B4(a1 + v14, v13, &qword_1EC1F8C60, &unk_1C6EF0950);
  sub_1C6E919B4(a2 + v14, &v13[v15], &qword_1EC1F8C60, &unk_1C6EF0950);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6E919B4(v13, v9, &qword_1EC1F8C60, &unk_1C6EF0950);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6E913E0(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
      goto LABEL_7;
    }

    v20 = v25[0];
    sub_1C6E91378(&v13[v15], v25[0], type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
    v21 = *v9;
    v22 = *v20;
    if (*(v20 + 8) == 1)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          if (v21 != 1)
          {
            goto LABEL_17;
          }
        }

        else if (v21 != 2)
        {
          goto LABEL_17;
        }

LABEL_14:
        sub_1C6EE4430();
        sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = sub_1C6EE4A50();
        sub_1C6E913E0(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
        sub_1C6E913E0(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
        sub_1C6E91A1C(v13, &qword_1EC1F8C60, &unk_1C6EF0950);
        if (v23)
        {
          goto LABEL_4;
        }

LABEL_19:
        v17 = 0;
        return v17 & 1;
      }

      if (!v21)
      {
        goto LABEL_14;
      }
    }

    else if (v21 == v22)
    {
      goto LABEL_14;
    }

LABEL_17:
    sub_1C6E913E0(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
    sub_1C6E913E0(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
    v18 = &qword_1EC1F8C60;
    v19 = &unk_1C6EF0950;
    goto LABEL_18;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_7:
    v18 = &qword_1EC1F8D50;
    v19 = &qword_1C6EF1188;
LABEL_18:
    sub_1C6E91A1C(v13, v18, v19);
    goto LABEL_19;
  }

  sub_1C6E91A1C(v13, &qword_1EC1F8C60, &unk_1C6EF0950);
LABEL_4:
  sub_1C6EE4430();
  sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1C6EE4A50();
  return v17 & 1;
}

uint64_t sub_1C6E918CC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1C6E8EBC8(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1C6EE4430();
  sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E919B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E91A1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C6E91A7C()
{
  result = qword_1EC1F8D68;
  if (!qword_1EC1F8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8D68);
  }

  return result;
}

uint64_t sub_1C6E91AD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
      sub_1C6EE4430();
      sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1C6EE4A50() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1C6E91BD8(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6E91C84(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E91D58()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D40);
  __swift_project_value_buffer(v0, qword_1EC212D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resource_identifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gambit_spec";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E91F20(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6EE4580();
    }

    else if (result == 2)
    {
      sub_1C6E91FB0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E91FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  sub_1C6E94058(&qword_1EC1F8DE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec, &unk_1C6EF1550);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E92064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6EE46C0(), !v4))
  {
    result = sub_1C6E92110(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E92110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E20, &qword_1C6EF1730);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource(0);
  sub_1C6E94DC8(a1 + *(v12 + 24), v7, &qword_1EC1F8E20, &qword_1C6EF1730);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E94E30(v7, &qword_1EC1F8E20, &qword_1C6EF1730);
  }

  sub_1C6E94EF0(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  sub_1C6E94058(&qword_1EC1F8DE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec, &unk_1C6EF1550);
  sub_1C6EE46E0();
  return sub_1C6E94E90(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
}

uint64_t sub_1C6E92320@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6E9241C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E94058(&qword_1EC1F8E18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource, &unk_1C6EF1680);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E924BC(uint64_t a1)
{
  v2 = sub_1C6E94058(&qword_1EC1F8E00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource, &unk_1C6EF16B8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E92528(uint64_t a1, uint64_t a2)
{
  sub_1C6E94058(&qword_1EC1F8E00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource, &unk_1C6EF16B8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E925A8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D58);
  __swift_project_value_buffer(v0, qword_1EC212D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_packages";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "api_spec";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "graph_nodes";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E927BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        sub_1C6E92918(a1, v5, a2, a3);
        goto LABEL_5;
      }

      if (result == 1)
      {
        v11 = v4;
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
        sub_1C6E94058(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4F0);
LABEL_12:
        v4 = v11;
        sub_1C6EE4590();
      }

LABEL_5:
      result = sub_1C6EE44B0();
    }

    v11 = v4;
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
    sub_1C6E94058(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, &unk_1C6EEC658);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C6E92918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
  sub_1C6E94058(&qword_1EC1F8DC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec, &unk_1C6EF13E8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E929CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0), sub_1C6E94058(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4F0), result = sub_1C6EE46D0(), !v4))
  {
    result = sub_1C6E92B40(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[1] + 16))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
        sub_1C6E94058(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, &unk_1C6EEC658);
        sub_1C6EE46D0();
      }

      type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E92B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E30, &qword_1C6EF1740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  sub_1C6E94DC8(a1 + *(v12 + 28), v7, &qword_1EC1F8E30, &qword_1C6EF1740);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E94E30(v7, &qword_1EC1F8E30, &qword_1C6EF1740);
  }

  sub_1C6E94EF0(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  sub_1C6E94058(&qword_1EC1F8DC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec, &unk_1C6EF13E8);
  sub_1C6EE46E0();
  return sub_1C6E94E90(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
}

uint64_t sub_1C6E92D50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  sub_1C6EE4420();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6E92DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E92E6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E92F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E94058(&qword_1EC1F8E40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec, &unk_1C6EF1518);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E92FD8(uint64_t a1)
{
  v2 = sub_1C6E94058(&qword_1EC1F8DE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec, &unk_1C6EF1550);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E93044(uint64_t a1, uint64_t a2)
{
  sub_1C6E94058(&qword_1EC1F8DE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec, &unk_1C6EF1550);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E930C4()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D70);
  __swift_project_value_buffer(v0, qword_1EC212D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6EE6590;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "bindings";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C6EE46F0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C6EE4700();
}

uint64_t sub_1C6E93230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding(0);
        sub_1C6E94058(&qword_1EC1F8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding, &unk_1C6EF1280);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E93310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding(0), sub_1C6E94058(&qword_1EC1F8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding, &unk_1C6EF1280), result = sub_1C6EE46D0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E9343C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E934B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E9357C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E94058(&qword_1EC1F8E48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec, &unk_1C6EF13B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9361C(uint64_t a1)
{
  v2 = sub_1C6E94058(&qword_1EC1F8DC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec, &unk_1C6EF13E8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E93688(uint64_t a1, uint64_t a2)
{
  sub_1C6E94058(&qword_1EC1F8DC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec, &unk_1C6EF13E8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E93704(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5EDF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E937AC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D88);
  __swift_project_value_buffer(v0, qword_1EC212D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "api_name";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "output_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "input_names";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E939BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1C6EE4570();
    }

    else if (result == 2 || result == 1)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E93A58(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!*(v3[4] + 16) || (result = sub_1C6EE46B0(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E93B40@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = MEMORY[0x1E69E7CC0];
  return sub_1C6EE4420();
}

uint64_t sub_1C6E93B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E93C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E93CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E94058(&qword_1EC1F8E50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding, &unk_1C6EF1248);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E93D74@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t sub_1C6E93E10(uint64_t a1)
{
  v2 = sub_1C6E94058(&qword_1EC1F8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding, &unk_1C6EF1280);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E93E7C(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E93ED4(uint64_t a1, uint64_t a2)
{
  sub_1C6E94058(&qword_1EC1F8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding, &unk_1C6EF1280);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E93F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E94058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E94418(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E94528(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding(0);
  sub_1C6EE4430();
  sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E94618(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E20, &qword_1C6EF1730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E28, &qword_1C6EF1738);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1C6E94DC8(a1 + v14, v13, &qword_1EC1F8E20, &qword_1C6EF1730);
  sub_1C6E94DC8(a2 + v14, &v13[v15], &qword_1EC1F8E20, &qword_1C6EF1730);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6E94E30(v13, &qword_1EC1F8E20, &qword_1C6EF1730);
LABEL_11:
      sub_1C6EE4430();
      sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1C6EE4A50();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_1C6E94DC8(v13, v10, &qword_1EC1F8E20, &qword_1C6EF1730);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6E94E90(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
LABEL_8:
    sub_1C6E94E30(v13, &qword_1EC1F8E28, &qword_1C6EF1738);
    goto LABEL_9;
  }

  v18 = v21;
  sub_1C6E94EF0(&v13[v15], v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  v19 = sub_1C6E94998(v10, v18);
  sub_1C6E94E90(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  sub_1C6E94E90(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  sub_1C6E94E30(v13, &qword_1EC1F8E20, &qword_1C6EF1730);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C6E94998(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E30, &qword_1C6EF1740);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E38, &qword_1C6EF1748);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if ((sub_1C6E5CAE8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  v15 = *(v14 + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v26 = v14;
  v27 = v16;
  sub_1C6E94DC8(v16 + v15, v13, &qword_1EC1F8E30, &qword_1C6EF1740);
  v18 = a2 + v15;
  v19 = a2;
  sub_1C6E94DC8(v18, &v13[v17], &qword_1EC1F8E30, &qword_1C6EF1740);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v17], 1, v4) == 1)
    {
      sub_1C6E94E30(v13, &qword_1EC1F8E30, &qword_1C6EF1740);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  sub_1C6E94DC8(v13, v10, &qword_1EC1F8E30, &qword_1C6EF1740);
  if (v20(&v13[v17], 1, v4) == 1)
  {
    sub_1C6E94E90(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
LABEL_9:
    v22 = &qword_1EC1F8E38;
    v23 = &qword_1C6EF1748;
LABEL_10:
    sub_1C6E94E30(v13, v22, v23);
    goto LABEL_11;
  }

  sub_1C6E94EF0(&v13[v17], v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  if ((sub_1C6E5EDF4(*v10, *v7) & 1) == 0)
  {
    sub_1C6E94E90(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
    sub_1C6E94E90(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
    v22 = &qword_1EC1F8E30;
    v23 = &qword_1C6EF1740;
    goto LABEL_10;
  }

  sub_1C6EE4430();
  sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = a2;
  v25 = sub_1C6EE4A50();
  sub_1C6E94E90(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  sub_1C6E94E90(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  sub_1C6E94E30(v13, &qword_1EC1F8E30, &qword_1C6EF1740);
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((sub_1C6E5CA94(v27[1], v19[1]) & 1) == 0)
  {
LABEL_11:
    v21 = 0;
    return v21 & 1;
  }

  sub_1C6EE4430();
  sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = sub_1C6EE4A50();
  return v21 & 1;
}

uint64_t sub_1C6E94DC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E94E30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E94E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E94EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6E94F80(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E951B0(319, &qword_1EC1F8E68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E9506C(uint64_t a1)
{
  sub_1C6E951B0(319, &qword_1EDEF67F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6E951B0(319, &qword_1EDEF67F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C6EE4430();
      if (v3 <= 0x3F)
      {
        sub_1C6E951B0(319, &qword_1EC1F8E80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6E951B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6E9523C(uint64_t a1)
{
  sub_1C6E951B0(319, &qword_1EC1F8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E95318(uint64_t a1)
{
  sub_1C6E953AC();
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E953AC()
{
  if (!qword_1EDEF67D0)
  {
    v0 = sub_1C6EE4D50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEF67D0);
    }
  }
}

__n128 __swift_memcpy149_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1C6E95490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 149))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E954D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 148) = 0;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 149) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 149) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E95554(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v20 = a2;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A70(0, v5, 0);
    v6 = v21;
    v8 = (a1 + 40);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_1C6E95F30(v9, v10);
      if (v4)
      {
        break;
      }

      v13 = sub_1C6E00E34(v11, v12, *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));

      v14 = sub_1C6E957B8(v13);

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C6E15A70((v15 > 1), v16 + 1, 1);
      }

      *(v21 + 16) = v16 + 1;
      *(v21 + 8 * v16 + 32) = v14;
      v8 += 2;
      if (!--v5)
      {
        a2 = v20;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    sub_1C6EDB41C(v6, a2, *(v2 + 96), *(v2 + 120));
    v19 = v18;

    return v19;
  }
}

uint64_t sub_1C6E956F0()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E95764(uint64_t a1)
{
  v2 = *v1;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v2);
  return sub_1C6EE55A0();
}

char *sub_1C6E957B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = a1 + 32;
  v57 = *(v1 + 144);
  v7 = MEMORY[0x1E69E7CC0];
  v52 = *(a1 + 16);
  v53 = a1 + 32;
  while (1)
  {
    v9 = (v6 + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    swift_bridgeObjectRetain_n();
    v12 = sub_1C6EE4B40();
    v59 = v7;
    if (v12)
    {
      v13 = v12;
      if (v12 < 1)
      {
        v14 = v5;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8EC0, &unk_1C6EF18C0);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size_1(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 17;
        }

        v14[2] = v13;
        v14[3] = 2 * (v16 >> 4);
      }

      v17 = HIBYTE(v10) & 0xF;
      *&v61 = v11;
      *(&v61 + 1) = v10;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v17 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v62 = 0;
      v63 = v17;
      if (v13 < 1)
      {
        __break(1u);
        goto LABEL_65;
      }

      v18 = sub_1C6EE4B80();
      if (!v19)
      {
        goto LABEL_70;
      }

      v20 = 4;
      while (1)
      {
        v21 = &v14[v20];
        *v21 = v18;
        v21[1] = v19;
        if (!--v13)
        {
          break;
        }

        v20 += 2;
        v18 = sub_1C6EE4B80();
        if (!v19)
        {
          goto LABEL_70;
        }
      }
    }

    else
    {

      v14 = v5;
    }

    v22 = v14[2];
    if (v22 > v57)
    {

      v23 = v3[13];
      v24 = v3[14];

      v7 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1C6ED8FB0(0, *(v59 + 2) + 1, 1, v59);
      }

      v26 = *(v7 + 2);
      v25 = *(v7 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v7 = sub_1C6ED8FB0((v25 > 1), v26 + 1, 1, v7);
      }

LABEL_4:
      *(v7 + 2) = v27;
      v8 = &v7[16 * v26];
      *(v8 + 4) = v23;
      *(v8 + 5) = v24;
      goto LABEL_5;
    }

    if (v22)
    {
      break;
    }

    v50 = v5;
LABEL_48:

    v41 = v50;
    v42 = *(v50 + 2);
    v7 = v59;
    v43 = *(v59 + 2);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      goto LABEL_66;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v44 > *(v59 + 3) >> 1)
    {
      if (v43 <= v44)
      {
        v46 = v43 + v42;
      }

      else
      {
        v46 = v43;
      }

      v7 = sub_1C6ED8FB0(isUniquelyReferenced_nonNull_native, v46, 1, v59);
    }

    if (*(v41 + 2))
    {
      if ((*(v7 + 3) >> 1) - *(v7 + 2) < v42)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v42)
      {
        v47 = *(v7 + 2);
        v48 = __OFADD__(v47, v42);
        v49 = v47 + v42;
        if (v48)
        {
          goto LABEL_69;
        }

        *(v7 + 2) = v49;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_67;
      }
    }

LABEL_5:
    if (++v4 == v2)
    {
      return v7;
    }
  }

  v54 = v4;
  v28 = v3;
  v29 = v3[12];

  v30 = 0;
  v55 = (2 * v22) | 1;
  v56 = v22;
  v58 = v5;
LABEL_29:
  if (v30 >= v22)
  {
LABEL_43:

    v3 = v28;
    v23 = v28[13];
    v24 = v3[14];

    v7 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1C6ED8FB0(0, *(v59 + 2) + 1, 1, v59);
    }

    v2 = v52;
    v6 = v53;
    v4 = v54;
    v26 = *(v7 + 2);
    v40 = *(v7 + 3);
    v27 = v26 + 1;
    if (v26 >= v40 >> 1)
    {
      v7 = sub_1C6ED8FB0((v40 > 1), v26 + 1, 1, v7);
    }

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_4;
  }

  v32 = v55;
  v31 = v56;
  while (v14[2] >= v31)
  {
    *&v61 = v14;
    *(&v61 + 1) = v14 + 4;
    v62 = v30;
    v63 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8EB0, &qword_1C6EF18B8);
    sub_1C6E95D10();
    v33 = sub_1C6EE4BE0();
    v35 = v34;
    if (v30 >= 1)
    {
      v64 = *(v28 + 8);
      v61 = v64;
      sub_1C6E579D4(&v64, v60);
      MEMORY[0x1CCA57F60](v33, v35);

      v35 = *(&v61 + 1);
      v33 = v61;
    }

    if (*(v29 + 16))
    {
      sub_1C6DEC784(v33, v35);
      if (v36)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1C6ED8FB0(0, *(v58 + 2) + 1, 1, v58);
        }

        v6 = v53;
        v38 = *(v58 + 2);
        v37 = *(v58 + 3);
        if (v38 >= v37 >> 1)
        {
          v58 = sub_1C6ED8FB0((v37 > 1), v38 + 1, 1, v58);
        }

        *(v58 + 2) = v38 + 1;
        v39 = &v58[16 * v38];
        *(v39 + 4) = v33;
        *(v39 + 5) = v35;
        v30 = v31;
        v22 = v56;
        if (v31 >= v56)
        {

          v3 = v28;
          v2 = v52;
          v4 = v54;
          v5 = MEMORY[0x1E69E7CC0];
          v50 = v58;
          goto LABEL_48;
        }

        goto LABEL_29;
      }
    }

    --v31;
    v32 -= 2;
    if (v30 >= v31)
    {
      goto LABEL_43;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:

  __break(1u);
  return result;
}

unint64_t sub_1C6E95D10()
{
  result = qword_1EC1F8EB8;
  if (!qword_1EC1F8EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F8EB0, &qword_1C6EF18B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8EB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WordPieceTokenizerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WordPieceTokenizerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6E95EDC()
{
  result = qword_1EC1F8EC8;
  if (!qword_1EC1F8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8EC8);
  }

  return result;
}

uint64_t sub_1C6E95F30(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v111 = *MEMORY[0x1E69E9840];
  v7 = sub_1C6EE3F70();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v97 = v12;
  v98 = v10;
  v101 = v8;
  v99 = v7;
  v96 = v3;
  v109 = a1;
  v110 = a2;
  v104 = sub_1C6DF0C68();
  v14 = sub_1C6EE5030();
  v16 = v15;
  v100 = v4;
  v17 = *(v4 + 48);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v4 + 48) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v103 = *(v4 + 48);

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_10:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = (v26 << 10) | (16 * v27);
      v29 = (*(v103 + 48) + v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = (*(v103 + 56) + v28);
      v33 = *v32;
      v34 = v32[1];
      v109 = v14;
      v110 = v16;
      v107 = v30;
      v108 = v31;
      v105 = v33;
      v106 = v34;

      v14 = sub_1C6EE5010();
      v36 = v35;

      v16 = v36;
      if (!v23)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_10;
    }
  }

  v37 = v100;
  if (*v100)
  {
    v14 = sub_1C6EE4B00();
    v39 = v38;

    v16 = v39;
  }

  v40 = v102;
  v41 = *(v37 + 1);
  v42 = *(v41 + 16);
  if (!v42)
  {
    v58 = v16;
LABEL_29:
    v109 = v14;
    v110 = v58;

    v63 = v98;
    sub_1C6EE3F40();
    v64 = sub_1C6EE5000();
    v66 = v65;

    v67 = v101 + 8;
    v102 = *(v101 + 8);
    (v102)(v63, v99);

    v68 = v100;
    v69 = v100[16];
    v101 = v67;
    if (v69)
    {
      v64 = sub_1C6E96878(v64, v66);
      v71 = v70;

      v66 = v71;
    }

    v72 = *(v68 + 7);
    v73 = v72 + 64;
    v74 = 1 << *(v72 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & *(v72 + 64);
    v77 = (v74 + 63) >> 6;
    v103 = v72;

    v78 = 0;
    if (v76)
    {
      while (1)
      {
        v79 = v78;
LABEL_39:
        v80 = __clz(__rbit64(v76));
        v76 &= v76 - 1;
        v81 = (v79 << 10) | (16 * v80);
        v82 = (*(v103 + 48) + v81);
        v83 = *v82;
        v84 = v82[1];
        v85 = (*(v103 + 56) + v81);
        v86 = *v85;
        v87 = v85[1];
        v109 = v64;
        v110 = v66;
        v107 = v83;
        v108 = v84;
        v105 = v86;
        v106 = v87;

        v64 = sub_1C6EE5010();
        v89 = v88;

        v66 = v89;
        if (!v76)
        {
          goto LABEL_35;
        }
      }
    }

    while (1)
    {
LABEL_35:
      v79 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        goto LABEL_46;
      }

      if (v79 >= v77)
      {
        break;
      }

      v76 = *(v73 + 8 * v79);
      ++v78;
      if (v76)
      {
        v78 = v79;
        goto LABEL_39;
      }
    }

    v109 = v64;
    v110 = v66;

    v90 = v98;
    sub_1C6EE3F40();
    v91 = sub_1C6EE5000();

    (v102)(v90, v99);

    return v91;
  }

  v43 = v41 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v103 = *(v97 + 72);
  while (1)
  {
    sub_1C6E2D5E8(v43, v40);
    if (v40[8] != 1)
    {
LABEL_42:
      sub_1C6E96764();
      swift_allocError();
      *v92 = 0;
      swift_willThrow();
      goto LABEL_44;
    }

    if ((*v40 - 2) < 2)
    {
      break;
    }

    if (*v40 != 1)
    {
      goto LABEL_42;
    }

    v109 = v14;
    v110 = v16;
    v59 = *(v40 + 3);
    v107 = *(v40 + 2);
    v108 = v59;
    v60 = *(v40 + 5);
    v105 = *(v40 + 4);
    v106 = v60;
    v14 = sub_1C6EE5010();
    v58 = v61;
LABEL_22:
    sub_1C6E967B8(v40);

    v43 += v103;
    v16 = v58;
    if (!--v42)
    {
      goto LABEL_29;
    }
  }

  v44 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  v45 = sub_1C6EE4A60();

  v109 = 0;
  v46 = [v44 initWithPattern:v45 options:0 error:&v109];

  v47 = v109;
  if (v46)
  {
    v48 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v48 = v14;
    }

    v49 = 7;
    if (((v16 >> 60) & ((v14 & 0x800000000000000) == 0)) != 0)
    {
      v49 = 11;
    }

    v109 = 15;
    v110 = v49 | (v48 << 16);
    v107 = v14;
    v108 = v16;

    v50 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8ED8, &qword_1C6EF1990);
    sub_1C6E96814();
    v51 = sub_1C6EE4FA0();
    v53 = v52;
    v54 = sub_1C6EE4A60();
    v55 = sub_1C6EE4A60();
    v56 = [v46 stringByReplacingMatchesInString:v54 options:0 range:v51 withTemplate:{v53, v55}];

    v14 = sub_1C6EE4A90();
    v58 = v57;

    goto LABEL_22;
  }

  v93 = v109;
  v94 = sub_1C6EE4050();

  swift_willThrow();
  sub_1C6E96764();
  swift_allocError();
  *v95 = 2;
  swift_willThrow();

LABEL_44:

  return sub_1C6E967B8(v102);
}

unint64_t sub_1C6E96764()
{
  result = qword_1EC1F8ED0;
  if (!qword_1EC1F8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8ED0);
  }

  return result;
}

uint64_t sub_1C6E967B8(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6E96814()
{
  result = qword_1EC1F8EE0;
  if (!qword_1EC1F8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F8ED8, &qword_1C6EF1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8EE0);
  }

  return result;
}

uint64_t sub_1C6E96878(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C6EE3F70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  sub_1C6DF0C68();
  v8 = sub_1C6EE5020();
  v10 = v9;
  v31 = 0;
  v32 = 0xE000000000000000;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = v8;
    v13 = 0;
    v28 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v29 = v9 & 0xFFFFFFFFFFFFFFLL;
    v14 = (v5 + 8);
    do
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v19 = sub_1C6EE51A0();
        v21 = v20;
      }

      else
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v30[0] = v12;
          v30[1] = v29;
          v18 = v30 + v13;
        }

        else
        {
          v17 = v28;
          if ((v12 & 0x1000000000000000) == 0)
          {
            v17 = sub_1C6EE5240();
          }

          v18 = (v17 + v13);
        }

        v19 = *v18;
        if ((*v18 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v24 = (__clz(v19 ^ 0xFF) - 24);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v19 = ((v19 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3F;
            v21 = 3;
          }

          else
          {
            v19 = ((v19 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3F;
            v21 = 4;
          }

          goto LABEL_18;
        }

        if (v24 == 1)
        {
LABEL_17:
          v21 = 1;
        }

        else
        {
          v19 = v18[1] & 0x3F | ((v19 & 0x1F) << 6);
          v21 = 2;
        }
      }

LABEL_18:
      sub_1C6EE3F50();
      v22 = sub_1C6EE3F60();
      (*v14)(v7, v4);
      if ((v22 & 1) == 0)
      {
        if (v19 <= 0x7F)
        {
          v15 = v19 + 1;
        }

        else
        {
          v23 = (v19 & 0x3F) << 8;
          if (v19 >= 0x800)
          {
            v25 = (v23 | (v19 >> 6) & 0x3F) << 8;
            v26 = (((v25 | (v19 >> 12) & 0x3F) << 8) | (v19 >> 18)) - 2122219023;
            v15 = (v19 >> 12) + v25 + 8487393;
            if (HIWORD(v19))
            {
              v15 = v26;
            }
          }

          else
          {
            v15 = (v19 >> 6) + v23 + 33217;
          }
        }

        v30[0] = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
        v16 = sub_1C6EE4B20();
        MEMORY[0x1CCA57F50](v16);
      }

      v13 += v21;
    }

    while (v13 < v11);
  }

  return v31;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6E96BA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E96BEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E96C4C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212DA0);
  __swift_project_value_buffer(v0, qword_1EC212DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
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

uint64_t sub_1C6E96E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E96E94(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E96F58@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E96FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E97018(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E970E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E975EC(&qword_1EC1F8F08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob, &unk_1C6EF1AB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E97168@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1F7368 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6EE4720();
  v3 = __swift_project_value_buffer(v2, qword_1EC212DA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6E97210(uint64_t a1)
{
  v2 = sub_1C6E975EC(&qword_1EC1F8EF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob, &unk_1C6EF1AF0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9727C(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E972D4(uint64_t a1, uint64_t a2)
{
  sub_1C6E975EC(&qword_1EC1F8EF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob, &unk_1C6EF1AF0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E97350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E973A4(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E975EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob(uint64_t a1)
{
  result = qword_1EC1F8F10;
  if (!qword_1EC1F8F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E975EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E9765C(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E97720(uint64_t a1)
{
  sub_1C6E9784C(319, &qword_1EDEF67E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6E9784C(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E9784C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6E978D8(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType.Enum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType.Enum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6E979B4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E979D4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1C6E97A14(uint64_t a1@<X8>)
{
  sub_1C6E9B04C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1C6E97A60(uint64_t a2@<X8>)
{
  sub_1C6E9B04C();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_1C6E97AA4(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E97B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9AEC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E97B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

unint64_t sub_1C6E97BDC()
{
  result = qword_1EC1F8F20;
  if (!qword_1EC1F8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8F20);
  }

  return result;
}

unint64_t sub_1C6E97C34()
{
  result = qword_1EC1F8F28;
  if (!qword_1EC1F8F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F8F30, qword_1C6EF1D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8F28);
  }

  return result;
}

unint64_t sub_1C6E97C9C()
{
  result = qword_1EC1F8F38;
  if (!qword_1EC1F8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8F38);
  }

  return result;
}

unint64_t sub_1C6E97CF4()
{
  result = qword_1EC1F8F40;
  if (!qword_1EC1F8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8F40);
  }

  return result;
}

uint64_t sub_1C6E97D48()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212DB8);
  __swift_project_value_buffer(v0, qword_1EC212DB8);
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
  *v10 = "should_lower";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "substitutions";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E97F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
          sub_1C6E9A0C8(&qword_1EC1F8F70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution, &unk_1C6EF2018);
          sub_1C6EE4590();
          break;
        case 2:
          sub_1C6EE44D0();
          break;
        case 1:
          sub_1C6E98080(a1, v5, a2, a3);
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E98080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E9A0C8(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E98134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E98258(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_1C6EE4650();
    }

    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
      sub_1C6E9A0C8(&qword_1EC1F8F70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution, &unk_1C6EF2018);
      sub_1C6EE46D0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E98258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  sub_1C6E9AD30(a1 + *(v12 + 28), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E9AD98(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E9AE58(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E9A0C8(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E9ADF8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E98468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6E98514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E98588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E98654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9A0C8(&qword_1EC1F8FB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, &unk_1C6EF22B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E986F4(uint64_t a1)
{
  v2 = sub_1C6E9A0C8(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, &unk_1C6EF22E8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E98760(uint64_t a1, uint64_t a2)
{
  sub_1C6E9A0C8(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, &unk_1C6EF22E8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E987E0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212DD0);
  __swift_project_value_buffer(v0, qword_1EC212DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "normalizer_spec";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strip_accents";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "special_token_padding";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "special_tokens";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E98A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C6EE4580();
      }

      else if (result == 4)
      {
        sub_1C6EE4570();
      }
    }

    else if (result == 1)
    {
      sub_1C6E98B00(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6EE44D0();
    }
  }

  return result;
}

uint64_t sub_1C6E98B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  sub_1C6E9A0C8(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, &unk_1C6EF22E8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E98BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E98CB0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_1C6EE4650();
    }

    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1C6EE46C0();
    }

    if (*(*(v3 + 24) + 16))
    {
      sub_1C6EE46B0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E98CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  sub_1C6E9AD30(a1 + *(v12 + 32), v7, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6E9AD98(v7, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  }

  sub_1C6E9AE58(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E9A0C8(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, &unk_1C6EF22E8);
  sub_1C6EE46E0();
  return sub_1C6E9ADF8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
}

uint64_t sub_1C6E98EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6E98FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9A0C8(&qword_1EC1F8FC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec, &unk_1C6EF2148);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9906C(uint64_t a1)
{
  v2 = sub_1C6E9A0C8(&qword_1EC1F8B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec, &unk_1C6EF2180);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E990D8(uint64_t a1, uint64_t a2)
{
  sub_1C6E9A0C8(&qword_1EC1F8B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec, &unk_1C6EF2180);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E99158()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212DE8);
  __swift_project_value_buffer(v0, qword_1EC212DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "target";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E99368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1C6EE4580();
      }

      else if (result == 1)
      {
        sub_1C6E9AEC0();
        sub_1C6EE44E0();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E99434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C6E9AEC0(), result = sub_1C6EE4660(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C6EE46C0(), !v4))
    {
      v8 = v3[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1C6EE46C0(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E99548@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6E9959C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E99610(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E996DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9A0C8(&qword_1EC1F8FC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution, &unk_1C6EF1FE0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9977C(uint64_t a1)
{
  v2 = sub_1C6E9A0C8(&qword_1EC1F8F70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution, &unk_1C6EF2018);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E997E8(uint64_t a1, uint64_t a2)
{
  sub_1C6E9A0C8(&qword_1EC1F8F70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution, &unk_1C6EF2018);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E99868()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E00);
  __swift_project_value_buffer(v0, qword_1EC212E00);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E998B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1C6E99930@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E99998(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E99A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9A0C8(&qword_1EC1F8FD8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType, &unk_1C6EF1E78);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E99AF4(uint64_t a1)
{
  v2 = sub_1C6E9A0C8(&qword_1EC1F8F50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType, &unk_1C6EF1EB0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E99B60(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E99BB8(uint64_t a1, uint64_t a2)
{
  sub_1C6E9A0C8(&qword_1EC1F8F50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType, &unk_1C6EF1EB0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E99C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E99C88(uint64_t a1, uint64_t a2)
{
  sub_1C6EE4430();
  sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E99D10()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E18);
  __swift_project_value_buffer(v0, qword_1EC212E18);
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
  *v10 = "STRING";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SIMPLE_PATTERN";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TARGET_PATTERN";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E99F7C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t sub_1C6E9A0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E9A328(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E9A558(unsigned __int8 *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B60, &unk_1C6EF2360);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  v14 = *(v23 + 32);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_1C6E9AD30(&a1[v14], v13, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  sub_1C6E9AD30(a2 + v14, &v13[v15], &qword_1EC1F7DD8, &qword_1C6EE8B68);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6E9AD98(v13, &qword_1EC1F7DD8, &qword_1C6EE8B68);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6E9AD30(v13, v9, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6E9ADF8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
LABEL_6:
    sub_1C6E9AD98(v13, &qword_1EC1F8B60, &unk_1C6EF2360);
LABEL_14:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v24;
  sub_1C6E9AE58(&v13[v15], v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  v18 = sub_1C6E9A8FC(v9, v17);
  sub_1C6E9ADF8(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E9ADF8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E9AD98(v13, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v25;
  if (*v25 != *a2 || (*(v25 + 1) != a2[1] || *(v25 + 2) != a2[2]) && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(*(v19 + 3), a2[3]) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C6EE4430();
  sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = sub_1C6EE4A50();
  return v20 & 1;
}

uint64_t sub_1C6E9A8FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v14 = *(v25 + 28);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_1C6E9AD30(&a1[v14], v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E9AD30(&a2[v14], &v13[v15], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6E9AD30(v13, v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v26;
      sub_1C6E9AE58(&v13[v15], v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v20 = *v9 == *v19 && v9[1] == v19[1];
      if (v20 || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v21 = sub_1C6EE4A50();
        sub_1C6E9ADF8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E9ADF8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E9AD98(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if (v21)
        {
          goto LABEL_14;
        }

LABEL_17:
        v22 = 0;
        return v22 & 1;
      }

      sub_1C6E9ADF8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E9ADF8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v17 = &qword_1EC1F7EF0;
      v18 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6E9AD98(v13, v17, v18);
      goto LABEL_17;
    }

    sub_1C6E9ADF8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v17 = &qword_1EC1F8220;
    v18 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E9AD98(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_14:
  if (*v27 != *a2 || (sub_1C6E5E85C(*(v27 + 1), *(a2 + 1)) & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1C6EE4430();
  sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1C6EE4A50();
  return v22 & 1;
}

uint64_t sub_1C6E9AD30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E9AD98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E9ADF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E9AE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6E9AEC0()
{
  result = qword_1EC1F8FD0;
  if (!qword_1EC1F8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8FD0);
  }

  return result;
}

uint64_t sub_1C6E9AF14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
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

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (sub_1C6EE54B0()) && (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (sub_1C6EE54B0()))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
    sub_1C6EE4430();
    sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

void sub_1C6E9B088(uint64_t a1)
{
  sub_1C6E953AC();
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6E9784C(319, qword_1EDEF6D68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6E9B194(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E9B2A8(uint64_t a1)
{
  sub_1C6E9B434(319, &qword_1EDEF67F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6E9B434(319, &qword_1EDEF67F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C6E9B434(319, &qword_1EDEF67E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C6EE4430();
        if (v4 <= 0x3F)
        {
          sub_1C6E9B434(319, qword_1EDEF7318, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6E9B434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6E9B500(uint64_t a1)
{
  sub_1C6E953AC();
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6E9B434(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E9B5F4(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E9B434(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E9B700(uint64_t a1)
{
  sub_1C6E953AC();
  if (v1 <= 0x3F)
  {
    sub_1C6E9B434(319, &qword_1EC1F9000, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C6EE4430();
      if (v3 <= 0x3F)
      {
        sub_1C6E9B434(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C6E9B814()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E30);
  __swift_project_value_buffer(v0, qword_1EC212E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 5;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "graph_nodes";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "model_packages";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "default_features";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9BA68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 3)
      {
        if (result == 4)
        {
          v11 = v4;
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
          sub_1C6E9F550(&qword_1EDEF6300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures, &unk_1C6EF2ACC);
LABEL_5:
          v4 = v11;
          sub_1C6EE4590();
          goto LABEL_6;
        }

        if (result == 5)
        {
          sub_1C6E9BC30(a1, v5, a2, a3);
        }
      }

      else
      {
        if (result == 2)
        {
          v11 = v4;
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
          sub_1C6E9F550(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, &unk_1C6EEC658);
          goto LABEL_5;
        }

        if (result == 3)
        {
          v11 = v4;
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
          sub_1C6E9F550(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4F0);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E9BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  sub_1C6E9F550(qword_1EDEF7368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader, &unk_1C6EF2C34);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9BCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
    sub_1C6E9F550(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, &unk_1C6EEC658);
    result = sub_1C6EE46D0();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
    sub_1C6E9F550(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, &unk_1C6EEC4F0);
    v10 = v5;
    result = sub_1C6EE46D0();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v10 = v5;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0), sub_1C6E9F550(&qword_1EDEF6300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures, &unk_1C6EF2ACC), result = sub_1C6EE46D0(), !v10))
  {
    result = sub_1C6E9BED8(v3, a1, a2, a3);
    if (!v10)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E9BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  sub_1C6EA130C(a1 + *(v12 + 32), v7, &qword_1EC1F7EF8, &unk_1C6EF23C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EA1374(v7, &qword_1EC1F7EF8, &unk_1C6EF23C0);
  }

  sub_1C6E9FD60(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
  sub_1C6E9F550(qword_1EDEF7368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader, &unk_1C6EF2C34);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
}

uint64_t sub_1C6E9C0E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  sub_1C6EE4420();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6E9C1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec, &unk_1C6EF2D64);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9C28C(uint64_t a1)
{
  v2 = sub_1C6E9F550(qword_1EDEF7A60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec, &unk_1C6EF2D9C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9C2F8(uint64_t a1, uint64_t a2)
{
  sub_1C6E9F550(qword_1EDEF7A60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec, &unk_1C6EF2D9C);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9C378()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E48);
  __swift_project_value_buffer(v0, qword_1EC212E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
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
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9C53C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6E9C5CC(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E9C5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6E9F550(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9C680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E9C72C(v3, a1, a2, a3);
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

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E9C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  sub_1C6EA130C(a1 + *(v12 + 24), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EA1374(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E9FD60(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E9F550(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E9C940@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6E9CA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader, &unk_1C6EF2BFC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9CADC(uint64_t a1)
{
  v2 = sub_1C6E9F550(qword_1EDEF7368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader, &unk_1C6EF2C34);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9CB48(uint64_t a1, uint64_t a2)
{
  sub_1C6E9F550(qword_1EDEF7368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader, &unk_1C6EF2C34);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9CBC8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E60);
  __swift_project_value_buffer(v0, qword_1EC212E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applied_to_apis";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaults";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9CD98(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6EE4570();
    }

    else if (result == 2)
    {
      sub_1C6E9CE28(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E9CE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9CEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C6EE46B0(), !v4))
  {
    result = sub_1C6E9CF7C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E9CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  sub_1C6EA130C(a1 + *(v12 + 24), v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EA1374(v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E9FD60(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E9D18C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6E9D28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures, &unk_1C6EF2A94);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9D32C(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EDEF6300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures, &unk_1C6EF2ACC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9D398(uint64_t a1, uint64_t a2)
{
  sub_1C6E9F550(&qword_1EDEF6300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures, &unk_1C6EF2ACC);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9D438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding(0);
        sub_1C6E9F550(&qword_1EC1F9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding, &unk_1C6EF27FC);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E9D518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding(0), sub_1C6E9F550(&qword_1EC1F9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding, &unk_1C6EF27FC), result = sub_1C6EE46D0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiSpec(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E9D644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E9D6B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E9D784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiSpec, &unk_1C6EF292C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9D824(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EC1F9060, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiSpec, &unk_1C6EF2964);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9D890(uint64_t a1, uint64_t a2)
{
  sub_1C6E9F550(&qword_1EC1F9060, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiSpec, &unk_1C6EF2964);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9D90C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5CA54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E9D9B4()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E90);
  __swift_project_value_buffer(v0, qword_1EC212E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "api_name";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "output_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "input_names";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9DBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1C6EE4570();
    }

    else if (result == 2 || result == 1)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E9DC60(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!*(v3[4] + 16) || (result = sub_1C6EE46B0(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E9DD48@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = MEMORY[0x1E69E7CC0];
  return sub_1C6EE4420();
}

uint64_t sub_1C6E9DD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E9DE10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E9DEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90D8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding, &unk_1C6EF27C4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9DF7C(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EC1F9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding, &unk_1C6EF27FC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9DFE8(uint64_t a1, uint64_t a2)
{
  sub_1C6E9F550(&qword_1EC1F9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding, &unk_1C6EF27FC);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9E068()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212EA8);
  __swift_project_value_buffer(v0, qword_1EC212EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requested_api_names";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input_features";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "retention_policy_data";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
          sub_1C6E9F550(&qword_1EC1F8070, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData, &unk_1C6EEADD0);
          sub_1C6EE4590();
          break;
        case 2:
          sub_1C6E9E39C(a1, v5, a2, a3);
          break;
        case 1:
          sub_1C6EE4570();
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E9E39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9E450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C6EE46B0(), !v4))
  {
    result = sub_1C6E9E570(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[1] + 16))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
        sub_1C6E9F550(&qword_1EC1F8070, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData, &unk_1C6EEADD0);
        sub_1C6EE46D0();
      }

      type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E9E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  sub_1C6EA130C(a1 + *(v12 + 28), v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EA1374(v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E9FD60(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E9E780@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  sub_1C6EE4420();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6E9E828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E9E89C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6E9E968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest, &unk_1C6EF26D4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9EA08(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EDEF6330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest, &unk_1C6EF2E14);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9EA74(uint64_t a1, uint64_t a2)
{
  sub_1C6E9F550(&qword_1EDEF6330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest, &unk_1C6EF2E14);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9EB14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
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

uint64_t sub_1C6E9EC84(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6E9ECF8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E9ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E9EE04(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E9EE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse(0);
  sub_1C6EA130C(a1 + *(v12 + 20), v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EA1374(v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E9FD60(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E9F014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6E9F0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E9F110(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E9F1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse, &unk_1C6EF256C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9F26C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t sub_1C6E9F308(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EC1F9010, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse, &unk_1C6EF25A4);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9F374(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E9F3CC(uint64_t a1, uint64_t a2)
{
  sub_1C6E9F550(&qword_1EC1F9010, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse, &unk_1C6EF25A4);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9F448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E9F550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E9F8A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E9FD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E9FDC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E9FE28(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if ((sub_1C6E59BCC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  v23 = a2;
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1C6EA130C(a1 + v14, v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6EA130C(v23 + v14, &v13[v15], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EA130C(v13, v10, &qword_1EC1F7D68, &unk_1C6EE89B0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1C6E9FD60(&v13[v15], v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      if (sub_1C6E227C4(*v10, *v7))
      {
        sub_1C6EE4430();
        sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v21 = sub_1C6EE4A50();
        sub_1C6E9FDC8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E9FDC8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6EA1374(v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
        if (v21)
        {
          goto LABEL_5;
        }

LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

      sub_1C6E9FDC8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E9FDC8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v18 = &qword_1EC1F7D68;
      v19 = &unk_1C6EE89B0;
LABEL_9:
      sub_1C6EA1374(v13, v18, v19);
      goto LABEL_10;
    }

    sub_1C6E9FDC8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_8:
    v18 = &qword_1EC1F7D70;
    v19 = &unk_1C6EF2EA0;
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1C6EA1374(v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
LABEL_5:
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1C6EE4A50();
  return v17 & 1;
}

uint64_t sub_1C6EA023C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding(0);
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EA032C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23[0] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  v14 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse(0) + 20);
  v15 = *(v11 + 56);
  v23[1] = a1;
  sub_1C6EA130C(a1 + v14, v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6EA130C(a2 + v14, &v13[v15], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EA130C(v13, v9, &qword_1EC1F7D68, &unk_1C6EE89B0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v23[0];
      sub_1C6E9FD60(&v13[v15], v23[0], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      if (sub_1C6E227C4(*v9, *v21))
      {
        sub_1C6EE4430();
        sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v22 = sub_1C6EE4A50();
        sub_1C6E9FDC8(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E9FDC8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6EA1374(v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_9:
        v17 = 0;
        return v17 & 1;
      }

      sub_1C6E9FDC8(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E9FDC8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v18 = &qword_1EC1F7D68;
      v19 = &unk_1C6EE89B0;
LABEL_8:
      sub_1C6EA1374(v13, v18, v19);
      goto LABEL_9;
    }

    sub_1C6E9FDC8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_7:
    v18 = &qword_1EC1F7D70;
    v19 = &unk_1C6EF2EA0;
    goto LABEL_8;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1C6EA1374(v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
LABEL_4:
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1C6EE4A50();
  return v17 & 1;
}

uint64_t sub_1C6EA071C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if ((sub_1C6E59BCC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  v15 = *(v14 + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v26 = v14;
  v27 = v16;
  sub_1C6EA130C(v16 + v15, v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v18 = a2 + v15;
  v19 = a2;
  sub_1C6EA130C(v18, &v13[v17], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v17], 1, v4) == 1)
    {
      sub_1C6EA1374(v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  sub_1C6EA130C(v13, v10, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v20(&v13[v17], 1, v4) == 1)
  {
    sub_1C6E9FDC8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_9:
    v22 = &qword_1EC1F7D70;
    v23 = &unk_1C6EF2EA0;
LABEL_10:
    sub_1C6EA1374(v13, v22, v23);
    goto LABEL_11;
  }

  sub_1C6E9FD60(&v13[v17], v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  if ((sub_1C6E227C4(*v10, *v7) & 1) == 0)
  {
    sub_1C6E9FDC8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6E9FDC8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v22 = &qword_1EC1F7D68;
    v23 = &unk_1C6EE89B0;
    goto LABEL_10;
  }

  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = a2;
  v25 = sub_1C6EE4A50();
  sub_1C6E9FDC8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E9FDC8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EA1374(v13, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((sub_1C6E5C428(v27[1], v19[1]) & 1) == 0)
  {
LABEL_11:
    v21 = 0;
    return v21 & 1;
  }

  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = sub_1C6EE4A50();
  return v21 & 1;
}

uint64_t sub_1C6EA0B4C(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v27 = a1;
  v14 = *(v26 + 24);
  v15 = *(v11 + 56);
  sub_1C6EA130C(a1 + v14, v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6EA130C(a2 + v14, &v13[v15], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EA130C(v13, v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v25;
      sub_1C6E9FD60(&v13[v15], v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v21 = *v9 == *v20 && v9[1] == v20[1];
      if (v21 || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v22 = sub_1C6EE4A50();
        sub_1C6E9FDC8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E9FDC8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EA1374(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v22 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }

      sub_1C6E9FDC8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E9FDC8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v17 = &qword_1EC1F7EF0;
      v18 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EA1374(v13, v17, v18);
      goto LABEL_8;
    }

    sub_1C6E9FDC8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v17 = &qword_1EC1F8220;
    v18 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EA1374(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_15:
  if (*v27 == *a2 && v27[1] == a2[1] || (sub_1C6EE54B0() & 1) != 0)
  {
    sub_1C6EE4430();
    sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1C6EE4A50();
    return v19 & 1;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C6EA0F7C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F90B8, &unk_1C6EF2E90);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  v14 = *(v23 + 32);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_1C6EA130C(a1 + v14, v13, &qword_1EC1F7EF8, &unk_1C6EF23C0);
  sub_1C6EA130C(a2 + v14, &v13[v15], &qword_1EC1F7EF8, &unk_1C6EF23C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EA130C(v13, v9, &qword_1EC1F7EF8, &unk_1C6EF23C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_1C6E9FD60(&v13[v15], v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      v18 = sub_1C6EA0B4C(v9, v17);
      sub_1C6E9FDC8(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      sub_1C6E9FDC8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      sub_1C6EA1374(v13, &qword_1EC1F7EF8, &unk_1C6EF23C0);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_12:
      v20 = 0;
      return v20 & 1;
    }

    sub_1C6E9FDC8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
LABEL_6:
    sub_1C6EA1374(v13, &qword_1EC1F90B8, &unk_1C6EF2E90);
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EA1374(v13, &qword_1EC1F7EF8, &unk_1C6EF23C0);
LABEL_8:
  v19 = v25;
  if ((sub_1C6E5CA94(*v25, *a2) & 1) == 0 || (sub_1C6E5CAE8(v19[1], a2[1]) & 1) == 0 || (sub_1C6E5CCDC(v19[2], a2[2]) & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = sub_1C6EE4A50();
  return v20 & 1;
}

uint64_t sub_1C6EA130C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EA1374(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6EA13FC(uint64_t a1)
{
  sub_1C6E9B434(319, &qword_1EC1F90F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EA14D8(uint64_t a1)
{
  sub_1C6E953AC();
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EA1594(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E9B434(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EA17C0(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EA18B4(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    if (v2 <= 0x3F)
    {
      sub_1C6EA18B4(319, qword_1EDEF6C28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EA18B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6EE4FE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6EA1950(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EA18B4(319, qword_1EDEF6878, MEMORY[0x1E69AA900]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}