uint64_t sub_21CFF80C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
  if (!v4)
  {
    sub_21CFF815C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

uint64_t sub_21CFF81DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_21CFF8240(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_21CFF82D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46698, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText, &unk_21D028408);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF8370(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121CA48, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText, &unk_21D028440);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF83DC(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_28121CA48, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText, &unk_21D028440);

  return sub_21D021EF4();
}

uint64_t sub_21CFF8458()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53DB8);
  __swift_project_value_buffer(v0, qword_27CE53DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tokens";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "metadata";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_21CFF88BC(a1, v5, a2, a3);
        break;
      case 2:
        sub_21CFF8810(a1, v5, a2, a3);
        break;
      case 1:
        sub_21CFF8724(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_21CFF88BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, &unk_21D028170);
  return sub_21D021E84();
}

uint64_t sub_21CFF8970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  if ((~v8 & 0x3000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      result = sub_21CFF8AAC(v3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_21CFF8A24(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

  result = sub_21CFF8AF8(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t *sub_21CFF8A24(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    sub_21D00EFFC(*result, v4);
    sub_21D021F54();
    return sub_21CF8F4B4(v5, v4);
  }

  return result;
}

unsigned int *sub_21CFF8AAC(unsigned int *result)
{
  v1 = *(result + 1);
  v2 = ~v1 & 0x3000000000000000;
  v3 = v1 & 0x2000000000000000;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return sub_21D021F74();
  }

  __break(1u);
  return result;
}

uint64_t sub_21CFF8AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C0, &unk_21D023680);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  sub_21CF7F198(a1 + *(v12 + 24), v7, &qword_27CE452C0, &unk_21D023680);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE452C0, &unk_21D023680);
  }

  sub_21D000BB8(v7, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, &unk_21D028170);
  sub_21D021FE4();
  return sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
}

uint64_t sub_21CFF8D18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_21D0235C0;
  sub_21D021CE4();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_21CFF8DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466A0, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData, &unk_21D0282A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF8E90(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData, &unk_21D0282D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF8EFC(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData, &unk_21D0282D8);

  return sub_21D021EF4();
}

uint64_t sub_21CFF8F78()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53DD0);
  __swift_project_value_buffer(v0, qword_27CE53DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_format";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width_in_pixels";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height_in_pixels";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "on_device_ocr";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "on_device_tokenizer";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "transmitted_image_format";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF9280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21D021D74();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        v11 = v4;
        switch(result)
        {
          case 1:
            type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
LABEL_5:
            v4 = v11;
            sub_21D021E44();
            break;
          case 2:
            sub_21CFE4ED0(a1, v5, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, sub_21D00F158, &type metadata for Apple_Cloudml_Inference_Tie_ImageMetadata.ImageFormat);
            break;
          case 3:
            type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
LABEL_20:
            v4 = v11;
            sub_21D021E54();
            break;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_11;
          }

          v11 = v4;
          type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
          goto LABEL_20;
        }

        if (result == 6)
        {
LABEL_11:
          v11 = v4;
          type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_21CFF9430(a1, v5, a2, a3);
        }
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFF9430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  sub_21D00F158();
  return sub_21D021DA4();
}

uint64_t sub_21CFF94A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  if (!v4)
  {
    sub_21CFE5638(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, sub_21D00F158, 2, &type metadata for Apple_Cloudml_Inference_Tie_ImageMetadata.ImageFormat);
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, 3, MEMORY[0x277D21860]);
    sub_21CFE6378(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, MEMORY[0x277D21860]);
    sub_21CFEFFD4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    sub_21CFF963C(v3, a1, a2, a3);
    sub_21CFF96B4(v3, a1, a2, a3);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFF96B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  if ((*(a1 + *(result + 44) + 9) & 1) == 0)
  {
    sub_21D00F158();
    return sub_21D021F44();
  }

  return result;
}

uint64_t sub_21CFF975C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 8) = 256;
  return result;
}

uint64_t sub_21CFF9830(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466A8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, &unk_21D028138);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF98D0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, &unk_21D028170);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF993C(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, &unk_21D028170);

  return sub_21D021EF4();
}

uint64_t sub_21CFF99BC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53DE8);
  __swift_project_value_buffer(v0, qword_27CE53DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21D026270;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "NOT_SET";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PNG";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "JPEG";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "HEIF";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "BMP";
  *(v14 + 8) = 3;
  *(v14 + 16) = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFF9C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466B8, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig, &unk_21D027FA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF9D28(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D78, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig, &unk_21D027FE0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF9D94(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE45D78, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig, &unk_21D027FE0);

  return sub_21D021EF4();
}

uint64_t sub_21CFF9E1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21D022024();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21D022014();
}

uint64_t sub_21CFF9E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_21D021D74();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_21CFF9EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466C0, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd, &unk_21D027E40);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF9F7C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D58, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd, &unk_21D027E78);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF9FE8(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE45D58, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd, &unk_21D027E78);

  return sub_21D021EF4();
}

uint64_t sub_21CFFA064(uint64_t a1, uint64_t a2)
{
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21CFFA0EC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53E30);
  __swift_project_value_buffer(v0, qword_27CE53E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21D026270;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "media_id";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "total_chunks";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "total_size";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 10;
  *v13 = "image_metadata";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 11;
  *v14 = "audio_metadata";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFFA374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
        sub_21D021E44();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
        sub_21D021DF4();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
          sub_21D021E04();
          break;
        case 10:
          sub_21CFFA4B4(v5, a1, a2, a3);
          break;
        case 11:
          sub_21CFFAA70(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_21CFFA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C0, &unk_21D023680);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_21CF7F198(a1, v12, &qword_27CE45538, &qword_21D024220);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE45538, &qword_21D024220);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
      v29 = v44;
    }

    else
    {
      sub_21CF7F200(v24, &qword_27CE452C0, &unk_21D023680);
      v31 = v40;
      sub_21D000BB8(v17, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      sub_21D000BB8(v31, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, &unk_21D028170);
  v33 = v43;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v24, &qword_27CE452C0, &unk_21D023680);
  }

  sub_21CF7F198(v24, v32, &qword_27CE452C0, &unk_21D023680);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE452C0, &unk_21D023680);
    return sub_21CF7F200(v32, &qword_27CE452C0, &unk_21D023680);
  }

  else
  {
    v35 = v39;
    sub_21D000BB8(v32, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    if (v28 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE452C0, &unk_21D023680);
    v36 = v38;
    sub_21CF7F200(v38, &qword_27CE45538, &qword_21D024220);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_21CFFAA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE466D0, &qword_21D02CD08);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_21CF7F198(a1, v12, &qword_27CE45538, &qword_21D024220);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE45538, &qword_21D024220);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v24, &qword_27CE466D0, &qword_21D02CD08);
      v31 = v40;
      sub_21D000BB8(v17, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
      sub_21D000BB8(v31, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_21CFFCB6C(&qword_27CE45CF8, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata, &unk_21D027A40);
  v33 = v43;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v24, &qword_27CE466D0, &qword_21D02CD08);
  }

  sub_21CF7F198(v24, v32, &qword_27CE466D0, &qword_21D02CD08);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE466D0, &qword_21D02CD08);
    return sub_21CF7F200(v32, &qword_27CE466D0, &qword_21D02CD08);
  }

  else
  {
    v35 = v39;
    sub_21D000BB8(v32, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
    if (v28 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE466D0, &qword_21D02CD08);
    v36 = v38;
    sub_21CF7F200(v38, &qword_27CE45538, &qword_21D024220);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_21CFFB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  result = sub_21CFDA0E4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, 1);
  if (!v4)
  {
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, 2, MEMORY[0x277D21848]);
    sub_21CFE8B40(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, 3, MEMORY[0x277D21850]);
    sub_21CF7F198(v3, v10, &qword_27CE45538, &qword_21D024220);
    v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CFFB4B4(v3, a1, a2, a3);
      }

      else
      {
        sub_21CFFB27C(v3, a1, a2, a3);
      }

      sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    }

    type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFFB27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v7, &qword_27CE45538, &qword_21D024220);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE45538, &qword_21D024220);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, &unk_21D028170);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  __break(1u);
  return result;
}

uint64_t sub_21CFFB4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v7, &qword_27CE45538, &qword_21D024220);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE45538, &qword_21D024220);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
    sub_21CFFCB6C(&qword_27CE45CF8, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata, &unk_21D027A40);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  __break(1u);
  return result;
}

uint64_t sub_21CFFB6F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  result = sub_21D021CE4();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + a1[8];
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_21CFFB7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466C8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, &unk_21D027CD8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFFB880(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, &unk_21D027D10);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFFB8EC(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, &unk_21D027D10);

  return sub_21D021EF4();
}

uint64_t sub_21CFFB968()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53E48);
  __swift_project_value_buffer(v0, qword_27CE53E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "media_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunk_index";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "chunk_data";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_last_chunk";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFFBBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_21D021D74();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
        sub_21D021DD4();
      }

      else if (result == 4)
      {
        type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
        sub_21D021D94();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
      sub_21D021E44();
    }

    else if (result == 2)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
      sub_21D021DF4();
    }
  }

  return result;
}

uint64_t sub_21CFFBCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
  if (!v4)
  {
    sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk, 2, MEMORY[0x277D21848]);
    sub_21CFFBDBC(v3, a1, a2, a3);
    sub_21CFFBE5C(v3, a1, a2, a3);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFFBDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v6 = a1 + *(result + 28);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21CF8F3E0(*v6, *(v6 + 8));
    sub_21D021F54();
    return sub_21CF94FCC(v8, v7);
  }

  return result;
}

uint64_t sub_21CFFBE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

double sub_21CFFBED8@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D021CE4();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  result = 0.0;
  v8 = a1[8];
  *(a2 + a1[7]) = xmmword_21D024230;
  *(a2 + v8) = 2;
  return result;
}

uint64_t sub_21CFFBF50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21D021CF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21CFFBFB8(uint64_t a1)
{
  v3 = sub_21D021CF4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21CFFC050(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466D8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk, &unk_21D027B70);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFFC0F0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk, &unk_21D027BA8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFFC15C(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk, &unk_21D027BA8);

  return sub_21D021EF4();
}

uint64_t sub_21CFFC1F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_21D022024();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21D0238C0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_21D021FF4();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_21D022004();
}

uint64_t sub_21CFFC368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D021D74();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_21D00F1AC();
        sub_21D021DB4();
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFFC408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_21D00F1AC(), result = sub_21D021F44(), !v4))
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFFC4BC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  return sub_21D021CE4();
}

uint64_t sub_21CFFC504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21D021CF4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21CFFC578(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21D021CF4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21CFFC61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466E0, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata, &unk_21D027A08);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFFC6BC(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45CF8, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata, &unk_21D027A40);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFFC728(uint64_t a1, uint64_t a2)
{
  sub_21D022C04();
  sub_21D022554();
  return sub_21D022C24();
}

uint64_t sub_21CFFC780(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE45CF8, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata, &unk_21D027A40);

  return sub_21D021EF4();
}

uint64_t sub_21CFFC7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D022C04();
  sub_21D022554();
  return sub_21D022C24();
}

uint64_t sub_21CFFC854()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53E78);
  __swift_project_value_buffer(v0, qword_27CE53E78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PCM_24K";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFFCA40@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_21D022024();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_21CFFCB6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21D000A74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21D000B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D000BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D000C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  MEMORY[0x28223BE20](v70);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463F0, &qword_21D02CB90);
  MEMORY[0x28223BE20](v71);
  v81 = &v63 - v8;
  v77 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  v9 = *(v77 - 8);
  v10 = MEMORY[0x28223BE20](v77);
  v68 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v75 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v63 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463F8, &qword_21D02CB98);
  MEMORY[0x28223BE20](v76);
  v19 = &v63 - v18;
  v74 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0);
  v20 = MEMORY[0x28223BE20](v74);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v25 = &v63 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v26 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v72 = v17;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v30 = (v9 + 48);
  v69 = *(v23 + 72);
  v66 = v22;
  v67 = &v63 - v24;
  v63 = v6;
  v64 = v30;
  v65 = v19;
  while (1)
  {
    v78 = v28;
    sub_21D00BC48(v28, v25, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
    v80 = v26;
    sub_21D00BC48(v29, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
    v31 = *(v76 + 48);
    sub_21CF7F198(v25, v19, &qword_27CE452A0, &qword_21D023660);
    sub_21CF7F198(v22, &v19[v31], &qword_27CE452A0, &qword_21D023660);
    v32 = *v30;
    v33 = v77;
    if ((*v30)(v19, 1, v77) != 1)
    {
      break;
    }

    v34 = v32(&v19[v31], 1, v33);
    v35 = v80;
    if (v34 != 1)
    {
      goto LABEL_36;
    }

LABEL_29:
    sub_21CF7F200(v19, &qword_27CE452A0, &qword_21D023660);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v56 = sub_21D022574();
    sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
    sub_21D000B58(v25, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
    if (v56)
    {
      v29 += v69;
      v28 = v78 + v69;
      v26 = v35 - 1;
      if (v26)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  v36 = v72;
  sub_21CF7F198(v19, v72, &qword_27CE452A0, &qword_21D023660);
  if (v32(&v19[v31], 1, v33) == 1)
  {
    sub_21D000B58(v36, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    v22 = v66;
LABEL_36:
    v57 = &qword_27CE463F8;
    v58 = &qword_21D02CB98;
    goto LABEL_41;
  }

  v37 = v79;
  v38 = v75;
  sub_21D000BB8(&v19[v31], v75, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  v39 = *(v71 + 48);
  v40 = v36;
  v41 = v81;
  sub_21D00BC48(v40, v81, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21D00BC48(v38, v41 + v39, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D00BC48(v81, v37, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v35 = v80;
    if (EnumCaseMultiPayload == 1)
    {
      v59 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText;
      v60 = v79;
      goto LABEL_39;
    }

    v47 = v73;
    sub_21D000BB8(v81 + v39, v73, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    v48 = *(v70 + 20);
    v49 = (v79 + v48);
    v50 = *(v79 + v48 + 8);
    v51 = (v47 + v48);
    v52 = v51[1];
    v19 = v65;
    v22 = v66;
    if (v50)
    {
      v25 = v67;
      v30 = v64;
      if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_21D022B24() & 1) == 0)
      {
LABEL_33:
        sub_21D000B58(v73, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
        sub_21D000B58(v79, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
LABEL_34:
        sub_21D000B58(v81, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
        goto LABEL_40;
      }
    }

    else
    {
      v25 = v67;
      v30 = v64;
      if (v52)
      {
        goto LABEL_33;
      }
    }

    v53 = *(v70 + 24);
    v54 = *(v79 + v53);
    v55 = *(v73 + v53);
    if (v54 == 2)
    {
      if (v55 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v55 == 2 || ((v54 ^ v55) & 1) != 0)
    {
      goto LABEL_33;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if ((sub_21D022574() & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_21D000B58(v73, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    sub_21D000B58(v79, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    goto LABEL_28;
  }

  v42 = v68;
  sub_21D00BC48(v81, v68, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  v43 = swift_getEnumCaseMultiPayload();
  v35 = v80;
  if (v43 == 1)
  {
    v44 = v63;
    sub_21D000BB8(v81 + v39, v63, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    v45 = sub_21D00C3A4(v42, v44);
    sub_21D000B58(v44, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    v22 = v66;
    v25 = v67;
    v30 = v64;
    v19 = v65;
    if ((v45 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_28:
    sub_21D000B58(v81, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    sub_21D000B58(v75, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    sub_21D000B58(v72, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    goto LABEL_29;
  }

  v59 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData;
  v60 = v42;
LABEL_39:
  sub_21D000B58(v60, v59);
  v19 = v65;
  v22 = v66;
  sub_21CF7F200(v81, &qword_27CE463F0, &qword_21D02CB90);
LABEL_40:
  v61 = v72;
  sub_21D000B58(v75, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21D000B58(v61, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  v57 = &qword_27CE452A0;
  v58 = &qword_21D023660;
LABEL_41:
  sub_21CF7F200(v19, v57, v58);
  sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
  sub_21D000B58(v67, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
LABEL_42:
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_21D0015EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_21D00BC48(v13, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
        sub_21D00BC48(v14, v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_21D022B24() & 1) == 0))
          {
LABEL_27:
            sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
            sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
            goto LABEL_28;
          }
        }

        else if (v20)
        {
          goto LABEL_27;
        }

        v22 = *(v4 + 24);
        v23 = &v10[v22];
        v24 = *&v10[v22 + 8];
        v25 = &v7[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_27;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_21D022B24() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v26)
        {
          goto LABEL_27;
        }

        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = sub_21D022574();
        sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
        sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
        if (v28)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_28:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_21D0018B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v42 - v9);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463E8, &qword_21D02CB88);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - v11;
  v53 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
  v12 = MEMORY[0x28223BE20](v53);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_28;
  }

  if (!v18 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v48 = (v5 + 48);
  v49 = v4;
  v22 = *(v15 + 72);
  v45 = v10;
  v46 = v22;
  v43 = v7;
  v44 = v14;
  v47 = &v42 - v16;
  while (1)
  {
    sub_21D00BC48(v20, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    sub_21D00BC48(v21, v14, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    v23 = *(v53 + 20);
    v24 = &v17[v23];
    v25 = *&v17[v23 + 8];
    v26 = &v14[v23];
    v27 = *(v26 + 1);
    if (v25)
    {
      if (!v27)
      {
        goto LABEL_27;
      }

      v28 = *v24 == *v26 && v25 == v27;
      if (!v28 && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v27)
    {
      goto LABEL_27;
    }

    v52 = v20;
    v29 = *(v53 + 24);
    v30 = v50;
    v31 = *(v51 + 48);
    sub_21CF7F198(&v17[v29], v50, &qword_27CE45298, &qword_21D023658);
    sub_21CF7F198(&v14[v29], v30 + v31, &qword_27CE45298, &qword_21D023658);
    v32 = v49;
    v33 = *v48;
    if ((*v48)(v30, 1, v49) != 1)
    {
      break;
    }

    v34 = v33(v30 + v31, 1, v32);
    v17 = v47;
    if (v34 != 1)
    {
      goto LABEL_25;
    }

    sub_21CF7F200(v30, &qword_27CE45298, &qword_21D023658);
    v35 = v52;
LABEL_20:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v40 = sub_21D022574();
    sub_21D000B58(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    if (v40)
    {
      v21 += v46;
      v20 = v35 + v46;
      if (--v18)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  v36 = v45;
  sub_21CF7F198(v30, v45, &qword_27CE45298, &qword_21D023658);
  if (v33(v30 + v31, 1, v32) == 1)
  {
    sub_21D000B58(v36, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    v14 = v44;
    v17 = v47;
LABEL_25:
    sub_21CF7F200(v30, &qword_27CE463E8, &qword_21D02CB88);
    goto LABEL_27;
  }

  v37 = v43;
  sub_21D000BB8(v30 + v31, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  v38 = sub_21D000C20(*v36, *v37);
  v17 = v47;
  if (v38)
  {
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = sub_21D022574();
    sub_21D000B58(v37, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    sub_21D000B58(v36, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    sub_21CF7F200(v30, &qword_27CE45298, &qword_21D023658);
    v14 = v44;
    v35 = v52;
    if ((v39 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_21D000B58(v37, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  sub_21D000B58(v36, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  sub_21CF7F200(v30, &qword_27CE45298, &qword_21D023658);
  v14 = v44;
LABEL_27:
  sub_21D000B58(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
  sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
LABEL_28:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_21D001EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v29 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_21D00BC48(v13, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        sub_21D00BC48(v14, v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        v16 = *(v4 + 24);
        v17 = (v10 + v16);
        v18 = *(v10 + v16 + 8);
        v19 = (v7 + v16);
        v20 = v19[1];
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_25;
          }

          v21 = *v17 == *v19 && v18 == v20;
          if (!v21 && (sub_21D022B24() & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v20)
        {
          goto LABEL_25;
        }

        v22 = *(v4 + 28);
        v23 = (v10 + v22);
        v24 = *(v10 + v22 + 8);
        v25 = (v7 + v22);
        v26 = *(v7 + v22 + 8);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*v23 != *v25)
          {
            LOBYTE(v26) = 1;
          }

          if (v26)
          {
LABEL_25:
            sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            goto LABEL_26;
          }
        }

        if ((sub_21D001EE0(*v10, *v7) & 1) == 0)
        {
          goto LABEL_25;
        }

        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v27 = sub_21D022574();
        sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        if (v27)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v27 & 1;
      }
    }

    v27 = 1;
  }

  else
  {
LABEL_26:
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_21D0021AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21D022B24() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21D00223C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_21D00BC48(v13, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
        sub_21D00BC48(v14, v7, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
        v16 = sub_21D00D2C0(v10, v7);
        sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
        sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_21D0023F4(uint64_t result, uint64_t a2)
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

uint64_t sub_21D002450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452E0, &qword_21D0236A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46430, &qword_21D02CBD0);
  MEMORY[0x28223BE20](v51);
  v50 = &v45 - v10;
  v54 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  v11 = MEMORY[0x28223BE20](v54);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_31;
  }

  if (!v17 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v47 = (v5 + 48);
  v48 = v4;
  v45 = *(v14 + 72);
  v46 = &v45 - v15;
  while (1)
  {
    sub_21D00BC48(v19, v16, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    v52 = v20;
    v53 = v19;
    v21 = v9;
    sub_21D00BC48(v20, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    v22 = *(v54 + 20);
    v23 = v50;
    v24 = *(v51 + 48);
    sub_21CF7F198(&v16[v22], v50, &qword_27CE452E0, &qword_21D0236A0);
    sub_21CF7F198(&v13[v22], v23 + v24, &qword_27CE452E0, &qword_21D0236A0);
    v25 = v48;
    v26 = *v47;
    if ((*v47)(v23, 1, v48) == 1)
    {
      break;
    }

    sub_21CF7F198(v23, v21, &qword_27CE452E0, &qword_21D0236A0);
    if (v26(v23 + v24, 1, v25) == 1)
    {
      sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
      sub_21D000B58(v46, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
      v42 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken;
      v43 = v21;
      goto LABEL_30;
    }

    v27 = v23 + v24;
    v28 = v49;
    sub_21D000BB8(v27, v49, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    v29 = *(v25 + 20);
    v30 = (v21 + v29);
    v31 = *(v21 + v29 + 8);
    v32 = (v28 + v29);
    v33 = v32[1];
    v9 = v21;
    v16 = v46;
    if (v31)
    {
      if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_21D022B24() & 1) == 0)
      {
LABEL_26:
        sub_21D000B58(v49, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
        sub_21D000B58(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
        sub_21CF7F200(v23, &qword_27CE452E0, &qword_21D0236A0);
LABEL_27:
        sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
        sub_21D000B58(v16, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
        goto LABEL_31;
      }
    }

    else if (v33)
    {
      goto LABEL_26;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = v23;
    v35 = v49;
    v36 = sub_21D022574();
    sub_21D000B58(v35, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    sub_21CF7F200(v34, &qword_27CE452E0, &qword_21D0236A0);
    if ((v36 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    v37 = *(v54 + 24);
    v38 = &v16[v37];
    v39 = v16[v37 + 4];
    v40 = &v13[v37];
    if (v39)
    {
      if ((v40[4] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v40[4] & 1) != 0 || *v38 != *v40)
    {
      goto LABEL_27;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = sub_21D022574();
    sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    sub_21D000B58(v16, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    if (v41)
    {
      v20 = v52 + v45;
      v19 = v53 + v45;
      if (--v17)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  if (v26(v23 + v24, 1, v25) == 1)
  {
    sub_21CF7F200(v23, &qword_27CE452E0, &qword_21D0236A0);
    v9 = v21;
    v16 = v46;
    goto LABEL_17;
  }

  sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
  v43 = v46;
  v42 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter;
LABEL_30:
  sub_21D000B58(v43, v42);
  sub_21CF7F200(v23, &qword_27CE46430, &qword_21D02CBD0);
LABEL_31:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_21D002ADC(uint64_t a1, uint64_t a2)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46420, &qword_21D02CBC0);
  MEMORY[0x28223BE20](v60);
  v5 = (&v52 - v4);
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45AC8, &qword_21D026570);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46428, &qword_21D02CBC8);
  MEMORY[0x28223BE20](v62);
  v61 = &v52 - v13;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
  v15 = MEMORY[0x28223BE20](v14);
  v65 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v20 = &v52 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_23;
  }

  if (!v21 || a1 == a2)
  {
    v48 = 1;
    return v48 & 1;
  }

  v59 = v17;
  v52 = v9;
  v53 = v6;
  v54 = v5;
  v55 = &v52 - v19;
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (v7 + 48);
  v26 = *(v18 + 72);
  v56 = v12;
  v57 = v26;
  v27 = &qword_27CE45AC8;
  v28 = &qword_21D026570;
  v29 = v65;
  v58 = v25;
  v30 = v61;
  while (1)
  {
    v63 = v23;
    sub_21D00BC48(v23, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
    v64 = v21;
    sub_21D00BC48(v24, v29, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
    v31 = *(v62 + 48);
    sub_21CF7F198(v20, v30, v27, v28);
    sub_21CF7F198(v29, v30 + v31, v27, v28);
    v32 = v28;
    v33 = v27;
    v34 = *v25;
    if ((*v25)(v30, 1, v6) != 1)
    {
      break;
    }

    if (v34(v30 + v31, 1, v6) != 1)
    {
      sub_21D000B58(v29, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
      v49 = v20;
      v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment;
      goto LABEL_22;
    }

    v27 = v33;
    v35 = v33;
    v28 = v32;
    sub_21CF7F200(v30, v35, v32);
LABEL_10:
    v43 = *(v59 + 24);
    v44 = &v20[v43];
    v45 = v20[v43 + 4];
    v46 = v29 + v43;
    if (v45)
    {
      v47 = v64;
      if ((*(v46 + 4) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v47 = v64;
      if ((*(v46 + 4) & 1) != 0 || *v44 != *v46)
      {
LABEL_19:
        sub_21D000B58(v29, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
        sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
        goto LABEL_23;
      }
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v29 = v65;
    v48 = sub_21D022574();
    sub_21D000B58(v29, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
    sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
    if (v48)
    {
      v25 = v58;
      v24 += v57;
      v23 = v63 + v57;
      v21 = v47 - 1;
      if (v21)
      {
        continue;
      }
    }

    return v48 & 1;
  }

  v36 = v56;
  sub_21CF7F198(v30, v56, v33, v32);
  if (v34(v30 + v31, 1, v6) != 1)
  {
    v37 = v52;
    sub_21D000BB8(v30 + v31, v52, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    v38 = *(v60 + 48);
    v39 = v54;
    sub_21D00BC48(v36, v54, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    sub_21D00BC48(v37, v39 + v38, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    v40 = sub_21D00C3A4(v39, (v39 + v38));
    sub_21D000B58(v37, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    v41 = v39 + v38;
    v29 = v65;
    sub_21D000B58(v41, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    v42 = v39;
    v6 = v53;
    sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    sub_21D000B58(v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    sub_21CF7F200(v30, v33, v32);
    v20 = v55;
    v27 = v33;
    v28 = v32;
    if ((v40 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_21D000B58(v29, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
  sub_21D000B58(v55, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
  v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content;
  v49 = v36;
LABEL_22:
  sub_21D000B58(v49, v50);
  sub_21CF7F200(v30, &qword_27CE46428, &qword_21D02CBC8);
LABEL_23:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_21D003168@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
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
    v10 = sub_21D021934();
    if (v10)
    {
      v11 = sub_21D021954();
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
      result = sub_21D021944();
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
  v10 = sub_21D021934();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21D021954();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21D021944();
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

uint64_t sub_21D003398(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
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
    v10 = sub_21D003528(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21CF8F460(a3, a4);
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
  sub_21D003168(v13, a3, a4, &v12);
  v10 = v4;
  sub_21CF8F460(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_21D003528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21D021934();
  v11 = result;
  if (result)
  {
    result = sub_21D021954();
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

  sub_21D021944();
  sub_21D003168(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_21D0035E0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_21CF8F3E0(a3, a4);
          return sub_21D003398(v13, a2, a3, a4) & 1;
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

uint64_t sub_21D003748(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[11];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[12];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[13];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[14];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  if (sub_21D0023F4(*a1, *a2))
  {
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D0039D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46458, &qword_21D02CBE0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_21CF7F198(a1, &v20 - v13, &qword_27CE455F8, &qword_21D0246F0);
  sub_21CF7F198(a2, &v14[v15], &qword_27CE455F8, &qword_21D0246F0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_21CF7F200(v14, &qword_27CE455F8, &qword_21D0246F0);
LABEL_9:
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse(0);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_21D022574();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v14, v10, &qword_27CE455F8, &qword_21D0246F0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
LABEL_6:
    sub_21CF7F200(v14, &qword_27CE46458, &qword_21D02CBE0);
    goto LABEL_7;
  }

  sub_21D000BB8(&v14[v15], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  v18 = sub_21D005270(v10, v7);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  sub_21CF7F200(v14, &qword_27CE455F8, &qword_21D0246F0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21D003D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46468, &qword_21D02CBF0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_21CF7F198(a1 + v14, v13, &qword_27CE455F0, &unk_21D026C00);
  sub_21CF7F198(a2 + v14, &v13[v15], &qword_27CE455F0, &unk_21D026C00);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21CF7F200(v13, &qword_27CE455F0, &unk_21D026C00);
LABEL_9:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_21D022574();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v13, v9, &qword_27CE455F0, &unk_21D026C00);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
LABEL_6:
    sub_21CF7F200(v13, &qword_27CE46468, &qword_21D02CBF0);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_21D000BB8(&v13[v15], v21[0], type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  v19 = sub_21D00D9DC(v9, v18);
  sub_21D000B58(v18, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21CF7F200(v13, &qword_27CE455F0, &unk_21D026C00);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21D004070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45540, &qword_21D024228);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464E0, &qword_21D02CC80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_21CF7F198(a1, &v20 - v13, &qword_27CE45540, &qword_21D024228);
  sub_21CF7F198(a2, &v14[v15], &qword_27CE45540, &qword_21D024228);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_21CF7F200(v14, &qword_27CE45540, &qword_21D024228);
LABEL_9:
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_21D022574();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v14, v10, &qword_27CE45540, &qword_21D024228);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
LABEL_6:
    sub_21CF7F200(v14, &qword_27CE464E0, &qword_21D02CC80);
    goto LABEL_7;
  }

  sub_21D000BB8(&v14[v15], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  v18 = sub_21D0043B4(v10, v7);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  sub_21CF7F200(v14, &qword_27CE45540, &qword_21D024228);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21D0043B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464E8, &qword_21D02CC88);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_21D00BC48(a1, &v27 - v18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  sub_21D00BC48(a2, &v19[v20], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D00BC48(v19, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D000BB8(&v19[v20], v6, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v21 = sub_21D00BE38(v13, v6);
      sub_21D000B58(v6, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v22 = v13;
      v23 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk;
LABEL_9:
      sub_21D000B58(v22, v23);
      sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
      return v21 & 1;
    }

    v24 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk;
    v25 = v13;
  }

  else
  {
    sub_21D00BC48(v19, v15, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D000BB8(&v19[v20], v9, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      v21 = sub_21D00A608(v15, v9);
      sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      v22 = v15;
      v23 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader;
    v25 = v15;
  }

  sub_21D000B58(v25, v24);
  sub_21CF7F200(v19, &qword_27CE464E8, &qword_21D02CC88);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_21D004720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464D0, &qword_21D02CC70);
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - v5;
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464D8, &qword_21D02CC78);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 9);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 9);
  if (v20)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_35;
    }

    v30 = *v19;
    v31 = *v21;
    if (v21[1])
    {
      if (v31)
      {
        if (v31 == 1)
        {
          if (v30 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (v30 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v30)
      {
        goto LABEL_35;
      }
    }

    else if (v30 != v31)
    {
      goto LABEL_35;
    }
  }

  v23 = v17[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_35;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v54 = v8;
      v28 = v17;
      v29 = sub_21D022B24();
      v17 = v28;
      v8 = v54;
      if ((v29 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_35;
  }

  v32 = v17[8];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_35;
    }

    if (*v33 != *v35 || v34 != v36)
    {
      v54 = v8;
      v37 = v17;
      v38 = sub_21D022B24();
      v17 = v37;
      v8 = v54;
      if ((v38 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v36)
  {
    goto LABEL_35;
  }

  v39 = v17[9];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 4);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 4);
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      goto LABEL_35;
    }
  }

  v53 = v17;
  v46 = *(v14 + 48);
  sub_21CF7F198(a1, v16, &qword_27CE455D8, &qword_21D0246C0);
  v54 = v46;
  sub_21CF7F198(a2, &v16[v46], &qword_27CE455D8, &qword_21D0246C0);
  v47 = *(v8 + 48);
  if (v47(v16, 1, v7) == 1)
  {
    if (v47(&v16[v54], 1, v7) == 1)
    {
      sub_21CF7F200(v16, &qword_27CE455D8, &qword_21D0246C0);
      goto LABEL_44;
    }

LABEL_42:
    sub_21CF7F200(v16, &qword_27CE464D8, &qword_21D02CC78);
    v44 = 0;
    return v44 & 1;
  }

  sub_21CF7F198(v16, v13, &qword_27CE455D8, &qword_21D0246C0);
  if (v47(&v16[v54], 1, v7) == 1)
  {
    sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
    goto LABEL_42;
  }

  sub_21D000BB8(&v16[v54], v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  v48 = *(v4 + 48);
  sub_21D00BC48(v13, v6, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  sub_21D00BC48(v10, &v6[v48], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  v49 = sub_21D004CDC(v6, &v6[v48]);
  sub_21D000B58(&v6[v48], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  sub_21D000B58(v6, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  sub_21CF7F200(v16, &qword_27CE455D8, &qword_21D0246C0);
  if (v49)
  {
LABEL_44:
    v50 = v53[10];
    v51 = *(a1 + v50);
    v52 = *(a2 + v50);
    if (v51 == 2)
    {
      if (v52 == 2)
      {
LABEL_49:
        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v44 = sub_21D022574();
        return v44 & 1;
      }
    }

    else if (v52 != 2 && ((v51 ^ v52) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

LABEL_35:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_21D004CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D004E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46468, &qword_21D02CBF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v19)
  {
    goto LABEL_25;
  }

  v21 = v14[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = *v22 == *v24 && v23 == v25;
    if (!v26 && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v25)
  {
    goto LABEL_25;
  }

  v27 = v14[7];
  v28 = *(v11 + 48);
  sub_21CF7F198(a1 + v27, v13, &qword_27CE455F0, &unk_21D026C00);
  v29 = a2 + v27;
  v30 = a2;
  v31 = v28;
  sub_21CF7F198(v29, &v13[v28], &qword_27CE455F0, &unk_21D026C00);
  v32 = *(v5 + 48);
  if (v32(v13, 1, v4) != 1)
  {
    sub_21CF7F198(v13, v10, &qword_27CE455F0, &unk_21D026C00);
    if (v32(&v13[v31], 1, v4) != 1)
    {
      sub_21D000BB8(&v13[v31], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
      v35 = sub_21D00D9DC(v10, v7);
      sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
      sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
      sub_21CF7F200(v13, &qword_27CE455F0, &unk_21D026C00);
      if ((v35 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
LABEL_24:
    sub_21CF7F200(v13, &qword_27CE46468, &qword_21D02CBF0);
    goto LABEL_25;
  }

  if (v32(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_24;
  }

  sub_21CF7F200(v13, &qword_27CE455F0, &unk_21D026C00);
LABEL_28:
  v36 = v14[8];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (v30 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (v40 && (*v37 == *v39 && v38 == v40 || (sub_21D022B24() & 1) != 0))
    {
      goto LABEL_35;
    }
  }

  else if (!v40)
  {
LABEL_35:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_21D022574();
    return v33 & 1;
  }

LABEL_25:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_21D005270(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v68 = a2;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse(0);
  MEMORY[0x28223BE20](v63);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v66 = &v59 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v59 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v59 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46460, &qword_21D02CBE8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v59 - v33;
  v35 = *(v32 + 56);
  sub_21D00BC48(v67, &v59 - v33, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  sub_21D00BC48(v68, &v34[v35], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_21D00BC48(v34, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = &v34[v35];
          v38 = v60;
          sub_21D000BB8(v37, v60, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
          v39 = sub_21D005B64(v28, v38);
          v40 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse;
          sub_21D000B58(v38, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
          v41 = v28;
LABEL_31:
          v57 = v40;
          goto LABEL_32;
        }

        v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse;
        v51 = v28;
      }

      else
      {
        sub_21D00BC48(v34, v25, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v54 = &v34[v35];
          v55 = v61;
          sub_21D000BB8(v54, v61, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          v39 = sub_21D004720(v25, v55);
          v40 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse;
          sub_21D000B58(v55, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          v41 = v25;
          goto LABEL_31;
        }

        v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse;
        v51 = v25;
      }
    }

    else
    {
      sub_21D00BC48(v34, v30, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_21D000BB8(&v34[v35], v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
        v39 = sub_21D004E40(v30, v13);
        v40 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse;
        sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
        v41 = v30;
        goto LABEL_31;
      }

      v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse;
      v51 = v30;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_21D00BC48(v34, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v52 = &v34[v35];
      v53 = v62;
      sub_21D000BB8(v52, v62, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v39 = sub_21D003D14(v22, v53);
      v40 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse;
      sub_21D000B58(v53, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v41 = v22;
      goto LABEL_31;
    }

    v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse;
    v51 = v22;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v42 = v66;
    sub_21D00BC48(v34, v66, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v43 = &v34[v35];
      v44 = v65;
      sub_21D000BB8(v43, v65, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
      v45 = *(v63 + 20);
      v46 = (v42 + v45);
      v47 = *(v42 + v45 + 8);
      v48 = (v44 + v45);
      v49 = v48[1];
      if (v47)
      {
        if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_21D022B24() & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (v49)
      {
LABEL_37:
        sub_21D000B58(v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
        sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
        sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
        goto LABEL_29;
      }

      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_21D022574())
      {
        sub_21D000B58(v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
        sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
        sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
        v39 = 1;
        return v39 & 1;
      }

      goto LABEL_37;
    }

    v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse;
    v51 = v42;
  }

  else
  {
    sub_21D00BC48(v34, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v56 = v64;
      sub_21D000BB8(&v34[v35], v64, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
      v39 = sub_21D004070(v17, v56);
      sub_21D000B58(v56, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
      v41 = v17;
      v57 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse;
LABEL_32:
      sub_21D000B58(v41, v57);
      sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      return v39 & 1;
    }

    v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse;
    v51 = v17;
  }

LABEL_28:
  sub_21D000B58(v51, v50);
  sub_21CF7F200(v34, &qword_27CE46460, &qword_21D02CBE8);
LABEL_29:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_21D005B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v56 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46480, &qword_21D02CC08);
  MEMORY[0x28223BE20](v63);
  v10 = &v56 - v9;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46488, &qword_21D02CC10);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v21 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  v22 = a1;
  v23 = v21;
  v24 = *(v21 + 24);
  v25 = (v22 + v24);
  v26 = *(v22 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_25;
    }

    v61 = v17;
    if (*v25 != *v27 || v26 != v28)
    {
      v29 = v14;
      v30 = v22;
      v31 = sub_21D022B24();
      v22 = v30;
      v14 = v29;
      if ((v31 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v61 = v17;
    if (v28)
    {
      goto LABEL_25;
    }
  }

  v58 = v23;
  v59 = v10;
  v57 = v6;
  v32 = a2;
  v33 = *(v23 + 28);
  v34 = *(v18 + 48);
  v60 = v22;
  sub_21CF7F198(v22 + v33, v20, &qword_27CE455E8, &unk_21D0246D0);
  sub_21CF7F198(v32 + v33, &v20[v34], &qword_27CE455E8, &unk_21D0246D0);
  v35 = *(v12 + 48);
  if (v35(v20, 1, v11) != 1)
  {
    v36 = v61;
    sub_21CF7F198(v20, v61, &qword_27CE455E8, &unk_21D0246D0);
    if (v35(&v20[v34], 1, v11) != 1)
    {
      sub_21D000BB8(&v20[v34], v14, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      v40 = *(v11 + 20);
      v41 = v36;
      v42 = *(v36 + v40);
      v43 = *&v14[v40];
      if (v42 == v43 || (, , v44 = sub_21CFE2928(v42, v43), , , v44))
      {
        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v45 = sub_21D022574();
        sub_21D000B58(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
        sub_21D000B58(v41, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
        sub_21CF7F200(v20, &qword_27CE455E8, &unk_21D0246D0);
        if ((v45 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

      sub_21D000B58(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      sub_21D000B58(v41, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      v37 = &qword_27CE455E8;
      v38 = &unk_21D0246D0;
LABEL_14:
      v39 = v20;
LABEL_24:
      sub_21CF7F200(v39, v37, v38);
      goto LABEL_25;
    }

    sub_21D000B58(v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
LABEL_13:
    v37 = &qword_27CE46488;
    v38 = &qword_21D02CC10;
    goto LABEL_14;
  }

  if (v35(&v20[v34], 1, v11) != 1)
  {
    goto LABEL_13;
  }

  sub_21CF7F200(v20, &qword_27CE455E8, &unk_21D0246D0);
LABEL_18:
  v46 = *(v63 + 48);
  v47 = v59;
  sub_21CF7F198(v60, v59, &qword_27CE455E0, &qword_21D0246C8);
  sub_21CF7F198(v32, v47 + v46, &qword_27CE455E0, &qword_21D0246C8);
  v48 = v65;
  v49 = *(v64 + 48);
  if (v49(v47, 1, v65) == 1)
  {
    if (v49(v47 + v46, 1, v48) == 1)
    {
      sub_21CF7F200(v47, &qword_27CE455E0, &qword_21D0246C8);
LABEL_28:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v51 = sub_21D022574();
      return v51 & 1;
    }

    goto LABEL_23;
  }

  v50 = v62;
  sub_21CF7F198(v47, v62, &qword_27CE455E0, &qword_21D0246C8);
  if (v49(v47 + v46, 1, v48) == 1)
  {
    sub_21D000B58(v50, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
LABEL_23:
    v37 = &qword_27CE46480;
    v38 = &qword_21D02CC08;
    v39 = v47;
    goto LABEL_24;
  }

  v53 = v47 + v46;
  v54 = v57;
  sub_21D000BB8(v53, v57, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  v55 = sub_21D0064F8(v50, v54);
  sub_21D000B58(v54, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  sub_21D000B58(v50, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  sub_21CF7F200(v47, &qword_27CE455E0, &qword_21D0246C8);
  if (v55)
  {
    goto LABEL_28;
  }

LABEL_25:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_21D0062C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D0064F8(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence(0);
  MEMORY[0x28223BE20](v44);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken(0);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464C8, &qword_21D02CC68);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v43 - v25;
  v27 = *(v24 + 56);
  sub_21D00BC48(a1, &v43 - v25, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  sub_21D00BC48(v48, &v26[v27], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_21D00BC48(v26, v14, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v29 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation;
        v30 = v14;
        goto LABEL_20;
      }

      v41 = v46;
      sub_21D000BB8(&v26[v27], v46, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_21D022574();
      v39 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation;
      sub_21D000B58(v41, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
      v40 = v14;
      goto LABEL_23;
    }

    sub_21D00BC48(v26, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v29 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence;
      v30 = v17;
      goto LABEL_20;
    }

    v31 = v47;
    sub_21D000BB8(&v26[v27], v47, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
    v32 = *(v44 + 20);
    v33 = &v17[v32];
    v34 = *&v17[v32 + 8];
    v35 = (v31 + v32);
    v36 = v35[1];
    if (v34)
    {
      if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v36)
    {
LABEL_28:
      sub_21D000B58(v31, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      goto LABEL_21;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_21D022574())
    {
      sub_21D000B58(v31, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      v38 = 1;
      return v38 & 1;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D00BC48(v26, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken;
      v30 = v20;
      goto LABEL_20;
    }

    v37 = v45;
    sub_21D000BB8(&v26[v27], v45, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v38 = sub_21D022574();
    v39 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken;
    sub_21D000B58(v37, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
    v40 = v20;
LABEL_23:
    sub_21D000B58(v40, v39);
    sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    return v38 & 1;
  }

  sub_21D00BC48(v26, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(&v26[v27], v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v38 = sub_21D022574();
    v39 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached;
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
    v40 = v22;
    goto LABEL_23;
  }

  v29 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached;
  v30 = v22;
LABEL_20:
  sub_21D000B58(v30, v29);
  sub_21CF7F200(v26, &qword_27CE464C8, &qword_21D02CC68);
LABEL_21:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_21D006C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21D022B24();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_21D022B24();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_21D022B24();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_21D022B24();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (sub_21D022B24() & 1) != 0))
    {
      goto LABEL_42;
    }
  }

  else if (!v41)
  {
LABEL_42:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D006EB0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D006F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452E0, &qword_21D0236A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46430, &qword_21D02CBD0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v36 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  v37 = a1;
  v14 = *(v36 + 20);
  v15 = *(v11 + 56);
  sub_21CF7F198(a1 + v14, v13, &qword_27CE452E0, &qword_21D0236A0);
  sub_21CF7F198(a2 + v14, &v13[v15], &qword_27CE452E0, &qword_21D0236A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21CF7F200(v13, &qword_27CE452E0, &qword_21D0236A0);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_21CF7F198(v13, v9, &qword_27CE452E0, &qword_21D0236A0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
LABEL_9:
    v22 = &qword_27CE46430;
    v23 = &qword_21D02CBD0;
LABEL_25:
    sub_21CF7F200(v13, v22, v23);
LABEL_26:
    v32 = 0;
    return v32 & 1;
  }

  v24 = v35;
  sub_21D000BB8(&v13[v15], v35, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  v25 = *(v4 + 20);
  v26 = &v9[v25];
  v27 = *&v9[v25 + 8];
  v28 = (v24 + v25);
  v29 = v28[1];
  if (!v27)
  {
    if (!v29)
    {
      goto LABEL_17;
    }

LABEL_24:
    sub_21D000B58(v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    v22 = &qword_27CE452E0;
    v23 = &qword_21D0236A0;
    goto LABEL_25;
  }

  if (!v29)
  {
    goto LABEL_24;
  }

  v30 = *v26 == *v28 && v27 == v29;
  if (!v30 && (sub_21D022B24() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_21D022574();
  sub_21D000B58(v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  sub_21CF7F200(v13, &qword_27CE452E0, &qword_21D0236A0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  v17 = *(v36 + 24);
  v18 = (v37 + v17);
  v19 = *(v37 + v17 + 4);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 4);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      goto LABEL_26;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v32 = sub_21D022574();
  return v32 & 1;
}

uint64_t sub_21D0073CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_21D022B24() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D0074A8(uint64_t a1, uint64_t a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46420, &qword_21D02CBC0);
  MEMORY[0x28223BE20](v29);
  v5 = (&v29 - v4);
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45AC8, &qword_21D026570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46428, &qword_21D02CBC8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = *(v13 + 56);
  v31 = a1;
  sub_21CF7F198(a1, &v29 - v14, &qword_27CE45AC8, &qword_21D026570);
  v32 = a2;
  sub_21CF7F198(a2, &v15[v16], &qword_27CE45AC8, &qword_21D026570);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) != 1)
  {
    sub_21CF7F198(v15, v11, &qword_27CE45AC8, &qword_21D026570);
    if (v17(&v15[v16], 1, v6) != 1)
    {
      v20 = &v15[v16];
      v21 = v30;
      sub_21D000BB8(v20, v30, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      v22 = *(v29 + 48);
      sub_21D00BC48(v11, v5, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      sub_21D00BC48(v21, v5 + v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      v23 = sub_21D00C3A4(v5, (v5 + v22));
      sub_21D000B58(v5 + v22, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      sub_21D000B58(v5, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      sub_21D000B58(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      sub_21CF7F200(v15, &qword_27CE45AC8, &qword_21D026570);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
LABEL_6:
    sub_21CF7F200(v15, &qword_27CE46428, &qword_21D02CBC8);
    goto LABEL_7;
  }

  if (v17(&v15[v16], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_21CF7F200(v15, &qword_27CE45AC8, &qword_21D026570);
LABEL_10:
  v24 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0) + 24);
  v25 = (v31 + v24);
  v26 = *(v31 + v24 + 4);
  v27 = (v32 + v24);
  v28 = *(v32 + v24 + 4);
  if (v26)
  {
    if (v28)
    {
LABEL_16:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_21D022574();
      return v18 & 1;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_21D0078F4(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd(0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46408, &qword_21D02CBA8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v40 - v26;
  v28 = *(v25 + 56);
  sub_21D00BC48(v42, &v40 - v26, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  sub_21D00BC48(v43, &v27[v28], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D00BC48(v27, v18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk;
        v31 = v18;
        goto LABEL_15;
      }

      v32 = &v27[v28];
      v33 = v40;
      sub_21D000BB8(v32, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v34 = sub_21D00BE38(v18, v33);
      sub_21D000B58(v33, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v35 = v18;
      v36 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk;
LABEL_18:
      sub_21D000B58(v35, v36);
      sub_21D000B58(v27, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
      return v34 & 1;
    }

    sub_21D00BC48(v27, v15, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd;
      v31 = v15;
      goto LABEL_15;
    }

    v38 = v41;
    sub_21D000BB8(&v27[v28], v41, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = sub_21D022574();
    v37 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd;
    sub_21D000B58(v38, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    v35 = v15;
LABEL_17:
    v36 = v37;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D00BC48(v27, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader;
      v31 = v21;
      goto LABEL_15;
    }

    sub_21D000BB8(&v27[v28], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    v34 = sub_21D00A608(v21, v8);
    v37 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader;
    sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    v35 = v21;
    goto LABEL_17;
  }

  sub_21D00BC48(v27, v23, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(&v27[v28], v11, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = sub_21D022574();
    v37 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig;
    sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    v35 = v23;
    goto LABEL_17;
  }

  v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig;
  v31 = v23;
LABEL_15:
  sub_21D000B58(v31, v30);
  sub_21CF7F200(v27, &qword_27CE46408, &qword_21D02CBA8);
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_21D007F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463E0, &qword_21D02CB80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v17 - v6);
  v8 = (&v17 + *(v5 + 56) - v6);
  sub_21D00BC48(a1, &v17 - v6, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  sub_21D00BC48(a2, v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0) + 28);
  v10 = (v7 + v9);
  v11 = *(v7 + v9 + 8);
  v12 = (v8 + v9);
  v13 = v12[1];
  if (v11)
  {
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = *v10 == *v12 && v11 == v13;
    if (!v14 && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v13)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if ((sub_21D0015EC(*v7, *v8) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_21D0018B4(v7[1], v8[1]) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if ((sub_21D022574() & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = 1;
LABEL_15:
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  return v15;
}

uint64_t sub_21D0080E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C8, &unk_21D026890);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463D8, &qword_21D02CB78);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_21CF7F198(a1, &v20 - v13, &qword_27CE452C8, &unk_21D026890);
  sub_21CF7F198(a2, &v14[v15], &qword_27CE452C8, &unk_21D026890);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_21CF7F200(v14, &qword_27CE452C8, &unk_21D026890);
LABEL_9:
      type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_21D022574();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v14, v10, &qword_27CE452C8, &unk_21D026890);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
LABEL_6:
    sub_21CF7F200(v14, &qword_27CE463D8, &qword_21D02CB78);
    goto LABEL_7;
  }

  sub_21D000BB8(&v14[v15], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  v18 = sub_21D007F20(v10, v7);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  sub_21CF7F200(v14, &qword_27CE452C8, &unk_21D026890);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21D00842C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v33 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463E8, &qword_21D02CB88);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_18;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_21D022B24();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_18;
  }

  v23 = a1;
  v24 = a2;
  v25 = *(v14 + 24);
  v26 = *(v11 + 48);
  v33[1] = v23;
  sub_21CF7F198(v23 + v25, v13, &qword_27CE45298, &qword_21D023658);
  sub_21CF7F198(v24 + v25, &v13[v26], &qword_27CE45298, &qword_21D023658);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) != 1)
  {
    sub_21CF7F198(v13, v10, &qword_27CE45298, &qword_21D023658);
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      goto LABEL_16;
    }

    sub_21D000BB8(&v13[v26], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    if ((sub_21D000C20(*v10, *v7) & 1) == 0)
    {
      sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      v29 = &qword_27CE45298;
      v30 = &qword_21D023658;
      goto LABEL_17;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_21D022574();
    sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    sub_21CF7F200(v13, &qword_27CE45298, &qword_21D023658);
    if (v32)
    {
      goto LABEL_13;
    }

LABEL_18:
    v28 = 0;
    return v28 & 1;
  }

  if (v27(&v13[v26], 1, v4) != 1)
  {
LABEL_16:
    v29 = &qword_27CE463E8;
    v30 = &qword_21D02CB88;
LABEL_17:
    sub_21CF7F200(v13, v29, v30);
    goto LABEL_18;
  }

  sub_21CF7F200(v13, &qword_27CE45298, &qword_21D023658);
LABEL_13:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v28 = sub_21D022574();
  return v28 & 1;
}

uint64_t sub_21D008884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463F8, &qword_21D02CB98);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_21CF7F198(a1, &v20 - v13, &qword_27CE452A0, &qword_21D023660);
  sub_21CF7F198(a2, &v14[v15], &qword_27CE452A0, &qword_21D023660);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_21CF7F200(v14, &qword_27CE452A0, &qword_21D023660);
LABEL_9:
      type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_21D022574();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v14, v10, &qword_27CE452A0, &qword_21D023660);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
LABEL_6:
    sub_21CF7F200(v14, &qword_27CE463F8, &qword_21D02CB98);
    goto LABEL_7;
  }

  sub_21D000BB8(&v14[v15], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  v18 = sub_21D008BC8(v10, v7);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21CF7F200(v14, &qword_27CE452A0, &qword_21D023660);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21D008BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463F0, &qword_21D02CB90);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_21D00BC48(a1, &v27 - v18, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21D00BC48(a2, &v19[v20], type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D00BC48(v19, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D000BB8(&v19[v20], v6, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v21 = sub_21D00C3A4(v13, v6);
      sub_21D000B58(v6, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v22 = v13;
      v23 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData;
LABEL_9:
      sub_21D000B58(v22, v23);
      sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
      return v21 & 1;
    }

    v24 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData;
    v25 = v13;
  }

  else
  {
    sub_21D00BC48(v19, v15, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D000BB8(&v19[v20], v9, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
      v21 = sub_21D008F34(v15, v9);
      sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
      v22 = v15;
      v23 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText;
    v25 = v15;
  }

  sub_21D000B58(v25, v24);
  sub_21CF7F200(v19, &qword_27CE463F0, &qword_21D02CB90);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_21D008F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21D022B24();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 2)
  {
    if (v15 != 2 && ((v14 ^ v15) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v15 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D009050(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0) + 28);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_21D0015EC(*a1, *a2) & 1) != 0 && (sub_21D0018B4(a1[1], a2[1]))
  {
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D009154(uint64_t *a1, uint64_t *a2)
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

  type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D009234(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

unint64_t sub_21D0092FC()
{
  result = qword_27CE46310;
  if (!qword_27CE46310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46310);
  }

  return result;
}

uint64_t sub_21D009350(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(v4 + 28);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (sub_21D001EE0(*a1, *a2))
  {
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D009478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00956C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 9);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 9);
  if (v12)
  {
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else if ((v14 & 1) == 0)
  {
    v20 = *v11;
    v21 = *v13;
    if (v13[1])
    {
      if (v21)
      {
        if (v21 == 1)
        {
          if (v20 != 1)
          {
            return 0;
          }
        }

        else if (v20 != 2)
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }
    }

    else if (v20 != v21)
    {
      return 0;
    }

LABEL_9:
    v15 = v4[7];
    v16 = (a1 + v15);
    v17 = *(a1 + v15 + 4);
    v18 = (a2 + v15);
    v19 = *(a2 + v15 + 4);
    if (v17)
    {
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      if (*v16 != *v18)
      {
        LOBYTE(v19) = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    v22 = v4[8];
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 4);
    v25 = (a2 + v22);
    v26 = *(a2 + v22 + 4);
    if (v24)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (*v23 != *v25)
      {
        LOBYTE(v26) = 1;
      }

      if (v26)
      {
        return 0;
      }
    }

    v27 = v4[9];
    v28 = (a1 + v27);
    v29 = *(a1 + v27 + 4);
    v30 = (a2 + v27);
    v31 = *(a2 + v27 + 4);
    if (v29)
    {
      if (!v31)
      {
        return 0;
      }
    }

    else
    {
      if (*v28 != *v30)
      {
        LOBYTE(v31) = 1;
      }

      if (v31)
      {
        return 0;
      }
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D009738(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v103 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v102 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452D8, "ҷ");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v100 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46328, &qword_21D02CAF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v100 - v10;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  v105 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v100 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46330, &qword_21D02CAF8);
  MEMORY[0x28223BE20](v17);
  v19 = &v100 - v18;
  v20 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v21 = v20[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_80;
    }
  }

  v26 = v20[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_80;
    }
  }

  v31 = v20[9];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_80;
    }
  }

  v36 = v20[10];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_80;
    }
  }

  v41 = v20[11];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 4);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_80;
    }
  }

  v46 = v20[12];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_80;
    }
  }

  v51 = v20[13];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 8);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_80;
    }
  }

  v56 = v20[14];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      goto LABEL_80;
    }
  }

  v61 = v20[15];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_80;
    }
  }

  v101 = v20;
  if ((sub_21D0021AC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_80;
  }

  v66 = v101[16];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 4);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_80;
    }
  }

  v71 = v101[17];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 4);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 4);
  if (v73)
  {
    if (!v75)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      goto LABEL_80;
    }
  }

  v76 = v101[18];
  v77 = *(a1 + v76);
  v78 = *(a2 + v76);
  if (v77 == 2)
  {
    if (v78 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v78 == 2 || ((v77 ^ v78) & 1) != 0)
  {
    goto LABEL_80;
  }

  v100 = v101[5];
  v79 = *(v17 + 48);
  sub_21CF7F198(a1 + v100, v19, &qword_27CE452B8, &qword_21D023678);
  v80 = a2 + v100;
  v100 = v79;
  sub_21CF7F198(v80, &v19[v79], &qword_27CE452B8, &qword_21D023678);
  v105 = *(v105 + 48);
  if ((v105)(v19, 1, v11) != 1)
  {
    sub_21CF7F198(v19, v16, &qword_27CE452B8, &qword_21D023678);
    if ((v105)(&v19[v100], 1, v11) != 1)
    {
      sub_21D000BB8(&v19[v100], v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      v86 = sub_21D00A044(v16, v13);
      sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      sub_21D000B58(v16, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      sub_21CF7F200(v19, &qword_27CE452B8, &qword_21D023678);
      if ((v86 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_83;
    }

    sub_21D000B58(v16, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
LABEL_78:
    v81 = &qword_27CE46330;
    v82 = &qword_21D02CAF8;
    v83 = v19;
LABEL_79:
    sub_21CF7F200(v83, v81, v82);
    goto LABEL_80;
  }

  if ((v105)(&v19[v100], 1, v11) != 1)
  {
    goto LABEL_78;
  }

  sub_21CF7F200(v19, &qword_27CE452B8, &qword_21D023678);
LABEL_83:
  v87 = v101[19];
  v88 = (a1 + v87);
  v89 = *(a1 + v87 + 4);
  v90 = (a2 + v87);
  v91 = *(a2 + v87 + 4);
  if (v89)
  {
    if (!v91)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v88 != *v90)
    {
      LOBYTE(v91) = 1;
    }

    if (v91)
    {
      goto LABEL_80;
    }
  }

  v92 = v101[20];
  v93 = *(v9 + 48);
  v94 = v104;
  sub_21CF7F198(a1 + v92, v104, &qword_27CE452D8, "ҷ");
  sub_21CF7F198(a2 + v92, v94 + v93, &qword_27CE452D8, "ҷ");
  v95 = *(v103 + 48);
  if (v95(v94, 1, v4) == 1)
  {
    if (v95(v104 + v93, 1, v4) == 1)
    {
      sub_21CF7F200(v104, &qword_27CE452D8, "ҷ");
LABEL_96:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v84 = sub_21D022574();
      return v84 & 1;
    }

    goto LABEL_94;
  }

  v96 = v104;
  sub_21CF7F198(v104, v8, &qword_27CE452D8, "ҷ");
  if (v95(v96 + v93, 1, v4) == 1)
  {
    sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
LABEL_94:
    v81 = &qword_27CE46328;
    v82 = &qword_21D02CAF0;
    v83 = v104;
    goto LABEL_79;
  }

  v97 = v104;
  v98 = v102;
  sub_21D000BB8(v104 + v93, v102, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  v99 = sub_21D00AEC0(v8, v98);
  sub_21D000B58(v98, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  sub_21CF7F200(v97, &qword_27CE452D8, "ҷ");
  if (v99)
  {
    goto LABEL_96;
  }

LABEL_80:
  v84 = 0;
  return v84 & 1;
}

uint64_t sub_21D00A044(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
  MEMORY[0x28223BE20](v46);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  MEMORY[0x28223BE20](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46338, &qword_21D02CB00);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - v18;
  v20 = *(v17 + 56);
  sub_21D00BC48(a1, &v45 - v18, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  sub_21D00BC48(a2, &v19[v20], type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D00BC48(v19, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = v47;
        sub_21D000BB8(&v19[v20], v47, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
        v23 = *(v5 + 20);
        v24 = &v13[v23];
        v25 = v13[v23 + 8];
        v26 = (v22 + v23);
        v27 = *(v22 + v23 + 8);
        if (v25)
        {
          if (!v27)
          {
LABEL_6:
            sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
LABEL_22:
            v41 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling;
            v42 = v13;
LABEL_30:
            sub_21D000B58(v42, v41);
            sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
            goto LABEL_31;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
            goto LABEL_6;
          }
        }

        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v38 = sub_21D022574();
        sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
        if ((v38 & 1) == 0)
        {
          goto LABEL_22;
        }

        v39 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling;
        v40 = v13;
        goto LABEL_28;
      }

      v36 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling;
      v37 = v13;
      goto LABEL_15;
    }

    sub_21D00BC48(v19, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v36 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling;
      v37 = v10;
LABEL_15:
      sub_21D000B58(v37, v36);
      goto LABEL_16;
    }

    v30 = v48;
    sub_21D000BB8(&v19[v20], v48, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    v31 = *(v46 + 20);
    v32 = &v10[v31];
    v33 = v10[v31 + 4];
    v34 = (v30 + v31);
    v35 = *(v30 + v31 + 4);
    if (v33)
    {
      if (!v35)
      {
LABEL_12:
        sub_21D000B58(v30, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
        goto LABEL_29;
      }
    }

    else
    {
      if (*v32 != *v34)
      {
        LOBYTE(v35) = 1;
      }

      if (v35)
      {
        goto LABEL_12;
      }
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v43 = sub_21D022574();
    sub_21D000B58(v30, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    if (v43)
    {
      v39 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling;
      v40 = v10;
LABEL_28:
      sub_21D000B58(v40, v39);
      sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      v29 = 1;
      return v29 & 1;
    }

LABEL_29:
    v41 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling;
    v42 = v10;
    goto LABEL_30;
  }

  sub_21D00BC48(v19, v15, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_16:
    sub_21CF7F200(v19, &qword_27CE46338, &qword_21D02CB00);
LABEL_31:
    v29 = 0;
    return v29 & 1;
  }

  v28 = *v15 ^ v19[v20];
  sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  v29 = v28 ^ 1;
  return v29 & 1;
}

uint64_t sub_21D00A608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46410, &qword_21D02CBB0);
  MEMORY[0x28223BE20](v11);
  v13 = v38 - v12;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_28;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_21D022B24();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_28;
  }

  v23 = v14[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_28;
    }
  }

  v28 = v14[8];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_28;
    }
  }

  v38[1] = v14;
  v33 = *(v11 + 48);
  sub_21CF7F198(a1, v13, &qword_27CE45538, &qword_21D024220);
  sub_21CF7F198(a2, &v13[v33], &qword_27CE45538, &qword_21D024220);
  v34 = *(v5 + 48);
  if (v34(v13, 1, v4) == 1)
  {
    if (v34(&v13[v33], 1, v4) == 1)
    {
      sub_21CF7F200(v13, &qword_27CE45538, &qword_21D024220);
LABEL_31:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = sub_21D022574();
      return v35 & 1;
    }

    goto LABEL_27;
  }

  sub_21CF7F198(v13, v10, &qword_27CE45538, &qword_21D024220);
  if (v34(&v13[v33], 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
LABEL_27:
    sub_21CF7F200(v13, &qword_27CE46410, &qword_21D02CBB0);
    goto LABEL_28;
  }

  sub_21D000BB8(&v13[v33], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  v37 = sub_21D00AA24(v10, v7);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  sub_21CF7F200(v13, &qword_27CE45538, &qword_21D024220);
  if (v37)
  {
    goto LABEL_31;
  }

LABEL_28:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_21D00AA24(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46418, &qword_21D02CBB8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = *(v16 + 56);
  sub_21D00BC48(a1, &v27 - v17, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  sub_21D00BC48(a2, &v18[v19], type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D00BC48(v18, v14, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D000BB8(&v18[v19], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      v24 = sub_21D00C080(v14, v8);
      sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      sub_21D000B58(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      sub_21D000B58(v18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
      return v24 & 1;
    }

    v22 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata;
    v23 = v14;
LABEL_12:
    sub_21D000B58(v23, v22);
    sub_21CF7F200(v18, &qword_27CE46418, &qword_21D02CBB8);
LABEL_18:
    v24 = 0;
    return v24 & 1;
  }

  sub_21D00BC48(v18, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata;
    v23 = v12;
    goto LABEL_12;
  }

  sub_21D000BB8(&v18[v19], v5, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  v20 = *v12;
  v21 = *v5;
  if (v12[8])
  {
    v20 = *v12 != 0;
  }

  if (v5[8] == 1)
  {
    if (v21)
    {
      if (v20 != 1)
      {
LABEL_8:
        sub_21D000B58(v5, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
LABEL_17:
        sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
        sub_21D000B58(v18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
        goto LABEL_18;
      }
    }

    else if (v20)
    {
      goto LABEL_8;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_8;
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v25 = sub_21D022574();
  sub_21D000B58(v5, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  sub_21D000B58(v18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_21D00AEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46340, &qword_21D02CB08);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_21CF7F198(a1, &v20 - v13, &qword_27CE45420, &qword_21D023BE0);
  sub_21CF7F198(a2, &v14[v15], &qword_27CE45420, &qword_21D023BE0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_21CF7F200(v14, &qword_27CE45420, &qword_21D023BE0);
LABEL_9:
      type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_21D022574();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v14, v10, &qword_27CE45420, &qword_21D023BE0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
LABEL_6:
    sub_21CF7F200(v14, &qword_27CE46340, &qword_21D02CB08);
    goto LABEL_7;
  }

  sub_21D000BB8(&v14[v15], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  v18 = sub_21D00B204(v10, v7);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  sub_21CF7F200(v14, &qword_27CE45420, &qword_21D023BE0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21D00B204(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v57 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID(0);
  MEMORY[0x28223BE20](v57);
  v60 = (&v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID(0);
  MEMORY[0x28223BE20](v56);
  v59 = (&v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar(0);
  MEMORY[0x28223BE20](v55);
  v58 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v63 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v62 = (&v54 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = (&v54 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v54 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v54 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46348, &qword_21D02CB10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v54 - v25;
  v27 = *(v24 + 56);
  sub_21D00BC48(v64, &v54 - v25, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  sub_21D00BC48(v65, &v26[v27], type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v29 = v62;
        sub_21D00BC48(v26, v62, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v30 = v59;
          sub_21D000BB8(&v26[v27], v59, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
          v31 = v29[1];
          v32 = v30[1];
          if (v31)
          {
            if (!v32 || (*v29 != *v30 || v31 != v32) && (sub_21D022B24() & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (v32)
          {
            goto LABEL_54;
          }

          sub_21D021CF4();
          sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          if (sub_21D022574())
          {
            v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
            v47 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
            v48 = v30;
LABEL_59:
            sub_21D000B58(v48, v45);
            v51 = v29;
LABEL_70:
            sub_21D000B58(v51, v47);
            sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
            return 1;
          }

LABEL_54:
          v46 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
          v49 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
          v50 = v30;
LABEL_62:
          sub_21D000B58(v50, v46);
          v52 = v29;
LABEL_72:
          sub_21D000B58(v52, v49);
          sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
          return 0;
        }

        v42 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
        goto LABEL_38;
      }

      v29 = v63;
      sub_21D00BC48(v26, v63, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v35 = v60;
        sub_21D000BB8(&v26[v27], v60, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
        v38 = v29[1];
        v39 = v35[1];
        if (v38)
        {
          if (!v39 || (*v29 != *v35 || v38 != v39) && (sub_21D022B24() & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else if (v39)
        {
          goto LABEL_60;
        }

        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_21D022574())
        {
          v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID;
          goto LABEL_58;
        }

LABEL_60:
        v46 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID;
        goto LABEL_61;
      }

      v42 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID;
LABEL_38:
      v33 = v42;
      v34 = v29;
      goto LABEL_40;
    }

    v29 = v61;
    sub_21D00BC48(v26, v61, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v42 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar;
      goto LABEL_38;
    }

    v35 = v58;
    sub_21D000BB8(&v26[v27], v58, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
    v36 = v29[1];
    v37 = v35[1];
    if (v36)
    {
      if (!v37 || (*v29 != *v35 || v36 != v37) && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v37)
    {
      goto LABEL_50;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_21D022574())
    {
      v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar;
LABEL_58:
      v47 = v45;
      v48 = v35;
      goto LABEL_59;
    }

LABEL_50:
    v46 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar;
LABEL_61:
    v49 = v46;
    v50 = v35;
    goto LABEL_62;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D00BC48(v26, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v33 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar;
      v34 = v20;
      goto LABEL_40;
    }

    sub_21D000BB8(&v26[v27], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
    v40 = v20[1];
    v41 = v7[1];
    if (v40)
    {
      if (!v41 || (*v20 != *v7 || v40 != v41) && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (v41)
    {
      goto LABEL_66;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_21D022574())
    {
      v47 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar;
      sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
      v51 = v20;
      goto LABEL_70;
    }

LABEL_66:
    v49 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar;
    sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
    v52 = v20;
    goto LABEL_72;
  }

  sub_21D00BC48(v26, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(&v26[v27], v10, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    v43 = v22[1];
    v44 = v10[1];
    if (v43)
    {
      if (!v44 || (*v22 != *v10 || v43 != v44) && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (v44)
    {
      goto LABEL_71;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_21D022574())
    {
      v47 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema;
      sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
      v51 = v22;
      goto LABEL_70;
    }

LABEL_71:
    v49 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema;
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    v52 = v22;
    goto LABEL_72;
  }

  v33 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema;
  v34 = v22;
LABEL_40:
  sub_21D000B58(v34, v33);
  sub_21CF7F200(v26, &qword_27CE46348, &qword_21D02CB10);
  return 0;
}

uint64_t sub_21D00BC48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D00BCB0()
{
  result = qword_27CE46370;
  if (!qword_27CE46370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46370);
  }

  return result;
}

unint64_t sub_21D00BD04()
{
  result = qword_27CE46388;
  if (!qword_27CE46388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46388);
  }

  return result;
}

uint64_t sub_21D00BD58(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      if (*a1 == *a2 && v4 == v5)
      {
        goto LABEL_8;
      }

      v7 = a3;
      v8 = sub_21D022B24();
      a3 = v7;
      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v5)
  {
LABEL_8:
    a3(0);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D00BE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21D022B24();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      v24 = v4;
      sub_21CF9EDB8(v20, v19);
      sub_21CF9EDB8(v23, v22);
      sub_21CF94FCC(v20, v19);
      v25 = v24;
      goto LABEL_23;
    }

LABEL_20:
    sub_21CF9EDB8(v20, v19);
    sub_21CF9EDB8(v23, v22);
    sub_21CF94FCC(v20, v19);
    sub_21CF94FCC(v23, v22);
    return 0;
  }

  if (v22 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v25 = v4;
  sub_21CF9EDB8(v20, v19);
  sub_21CF9EDB8(v23, v22);
  v27 = sub_21D0035E0(v20, v19, v23, v22);
  sub_21CF94FCC(v23, v22);
  sub_21CF94FCC(v20, v19);
  if (!v27)
  {
    return 0;
  }

LABEL_23:
  v28 = v25[8];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 2)
  {
    if (v30 == 2)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    return 0;
  }

LABEL_28:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00C080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21D022B24();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 9);
  v16 = a2 + v13;
  v17 = *(a2 + v13 + 9);
  if (v15)
  {
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v23 = *v14;
    v24 = *v16;
    if (*(v16 + 8))
    {
      if (v24 <= 1)
      {
        if (v24)
        {
          if (v23 != 1)
          {
            return 0;
          }
        }

        else if (v23)
        {
          return 0;
        }
      }

      else if (v24 == 2)
      {
        if (v23 != 2)
        {
          return 0;
        }
      }

      else if (v24 == 3)
      {
        if (v23 != 3)
        {
          return 0;
        }
      }

      else if (v23 != 4)
      {
        return 0;
      }
    }

    else if (v23 != v24)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v25 = v4[8];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[9];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }

    if (*v31 != *v33 || v32 != v34)
    {
      v35 = v4;
      v36 = sub_21D022B24();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  v37 = v4[10];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_21D022B24();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[11];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 9);
  v47 = a2 + v44;
  v48 = *(a2 + v44 + 9);
  if ((v46 & 1) == 0)
  {
    if (v48)
    {
      return 0;
    }

    v50 = *v45;
    v51 = *v47;
    if (*(v47 + 8))
    {
      if (v51 <= 1)
      {
        if (!v51)
        {
          if (!v50)
          {
            goto LABEL_58;
          }

          return 0;
        }

        if (v50 != 1)
        {
          return 0;
        }
      }

      else if (v51 == 2)
      {
        if (v50 != 2)
        {
          return 0;
        }
      }

      else if (v51 == 3)
      {
        if (v50 != 3)
        {
          return 0;
        }
      }

      else if (v50 != 4)
      {
        return 0;
      }
    }

    else if (v50 != v51)
    {
      return 0;
    }

LABEL_58:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  if (v48)
  {
    goto LABEL_58;
  }

  return 0;
}

uint64_t sub_21D00C3A4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C0, &unk_21D023680);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46400, &qword_21D02CBA0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28[-v10];
  v12 = *a1;
  v13 = a1[1];
  v15 = *a2;
  v14 = a2[1];
  v16 = v14 & 0x3000000000000000;
  if ((~v13 & 0x3000000000000000) != 0)
  {
    if (v16 != 0x3000000000000000)
    {
      v24 = *a1;
      v25 = a1[1];
      if ((v13 & 0x2000000000000000) != 0)
      {
        if ((v14 & 0x2000000000000000) != 0)
        {
          sub_21D00EFE8(v24, v25);
          sub_21D00EFE8(v15, v14);
          sub_21CF8F4B4(v12, v13);
          if (v12 != v15)
          {
            goto LABEL_10;
          }

          goto LABEL_4;
        }

        sub_21D00EFE8(v24, v25);
        sub_21D00EFE8(v15, v14);
        sub_21CF8F4B4(v15, v14);
      }

      else
      {
        sub_21D00EFE8(v24, v25);
        sub_21D00EFE8(v15, v14);
        if ((v14 & 0x2000000000000000) == 0)
        {
          v29 = sub_21D0035E0(v12, v13, v15, v14);
          sub_21CF8F4B4(v15, v14);
          sub_21CF8F4B4(v12, v13);
          if (!v29)
          {
            goto LABEL_10;
          }

          goto LABEL_4;
        }
      }

      v20 = v12;
      v21 = v13;
LABEL_9:
      sub_21CF8F4B4(v20, v21);
      goto LABEL_10;
    }

LABEL_8:
    sub_21D00EFE8(*a1, a1[1]);
    sub_21D00EFE8(v15, v14);
    sub_21CF8F4B4(v12, v13);
    v20 = v15;
    v21 = v14;
    goto LABEL_9;
  }

  if (v16 != 0x3000000000000000)
  {
    goto LABEL_8;
  }

  sub_21D00EFE8(*a1, a1[1]);
  sub_21D00EFE8(v15, v14);
  sub_21CF8F4B4(v12, v13);
LABEL_4:
  v17 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0) + 24);
  v18 = *(v9 + 48);
  sub_21CF7F198(a1 + v17, v11, &qword_27CE452C0, &unk_21D023680);
  sub_21CF7F198(a2 + v17, &v11[v18], &qword_27CE452C0, &unk_21D023680);
  v19 = *(v31 + 48);
  if (v19(v11, 1, v4) == 1)
  {
    if (v19(&v11[v18], 1, v4) == 1)
    {
      sub_21CF7F200(v11, &qword_27CE452C0, &unk_21D023680);
LABEL_23:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_21D022574();
      return v22 & 1;
    }

    goto LABEL_18;
  }

  sub_21CF7F198(v11, v8, &qword_27CE452C0, &unk_21D023680);
  if (v19(&v11[v18], 1, v4) == 1)
  {
    sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
LABEL_18:
    sub_21CF7F200(v11, &qword_27CE46400, &qword_21D02CBA0);
    goto LABEL_10;
  }

  v26 = v30;
  sub_21D000BB8(&v11[v18], v30, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  v27 = sub_21D00C080(v8, v26);
  sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  sub_21CF7F200(v11, &qword_27CE452C0, &unk_21D023680);
  if (v27)
  {
    goto LABEL_23;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_21D00C840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 9);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 9);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v15 = *v6;
    v16 = *v8;
    if (v8[1])
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (v15 != 1)
          {
            return 0;
          }
        }

        else if (v15 != 2)
        {
          return 0;
        }
      }

      else if (v15)
      {
        return 0;
      }
    }

    else if (v15 != v16)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v17 = v4[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 8);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = v4[8];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 8);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = v4[9];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = v4[10];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = v4[11];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 == 2)
  {
    if (v39 == 2)
    {
      goto LABEL_51;
    }

    return 0;
  }

  if (v39 == 2 || ((v38 ^ v39) & 1) != 0)
  {
    return 0;
  }

LABEL_51:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00CA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 9);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 9);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v15 = *v6;
    v16 = *v8;
    if (v8[1])
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (v15 != 1)
          {
            return 0;
          }
        }

        else if (v15 != 2)
        {
          return 0;
        }
      }

      else if (v15)
      {
        return 0;
      }
    }

    else if (v15 != v16)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v17 = v4[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 9);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 9);
  if (v19)
  {
    if (v21)
    {
      goto LABEL_17;
    }
  }

  else if ((v21 & 1) == 0)
  {
    v27 = *v18;
    v28 = *v20;
    if (v20[1])
    {
      if (v28)
      {
        if (v28 == 1)
        {
          if (v27 != 1)
          {
            return 0;
          }
        }

        else if (v27 != 2)
        {
          return 0;
        }
      }

      else if (v27)
      {
        return 0;
      }
    }

    else if (v27 != v28)
    {
      return 0;
    }

LABEL_17:
    v22 = v4[8];
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 4);
    v25 = (a2 + v22);
    v26 = *(a2 + v22 + 4);
    if (v24)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (*v23 != *v25)
      {
        LOBYTE(v26) = 1;
      }

      if (v26)
      {
        return 0;
      }
    }

    v29 = v4[9];
    v30 = (a1 + v29);
    v31 = *(a1 + v29 + 4);
    v32 = (a2 + v29);
    v33 = *(a2 + v29 + 4);
    if (v31)
    {
      if (!v33)
      {
        return 0;
      }
    }

    else
    {
      if (*v30 != *v32)
      {
        LOBYTE(v33) = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D00CC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    return 0;
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00CE40(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464C0, &qword_21D02CC60);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_21D00BC48(a1, &v33 - v22, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  sub_21D00BC48(v34, &v23[v24], type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D00BC48(v23, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D000BB8(&v23[v24], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
        v26 = sub_21D00C840(v17, v7);
        v27 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics;
        sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
        v28 = v17;
LABEL_13:
        sub_21D000B58(v28, v27);
        sub_21D000B58(v23, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
        return v26 & 1;
      }

      v29 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics;
      v30 = v17;
    }

    else
    {
      sub_21D00BC48(v23, v14, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_21D000BB8(&v23[v24], v33, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
        v26 = sub_21D00CA74(v14, v31);
        v27 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics;
        sub_21D000B58(v31, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
        v28 = v14;
        goto LABEL_13;
      }

      v29 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics;
      v30 = v14;
    }
  }

  else
  {
    sub_21D00BC48(v23, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21D000BB8(&v23[v24], v10, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
      v26 = sub_21D00CC74(v19, v10);
      v27 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics;
      sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics;
    v30 = v19;
  }

  sub_21D000B58(v30, v29);
  sub_21CF7F200(v23, &qword_27CE464C0, &qword_21D02CC60);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_21D00D2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464B8, &qword_21D02CC58);
  MEMORY[0x28223BE20](v11);
  v13 = v58 - v12;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0);
  v15 = v14[6];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_54;
  }

  v18 = v14[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_54;
    }
  }

  v23 = v14[8];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_54;
    }
  }

  v28 = v14[9];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_54;
    }
  }

  v33 = v14[10];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_54;
    }
  }

  v38 = v14[11];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      goto LABEL_54;
    }
  }

  v43 = v14[12];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_54;
    }
  }

  v48 = v14[13];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_54;
    }
  }

  v58[1] = v14;
  v53 = *(v11 + 48);
  sub_21CF7F198(a1, v13, &qword_27CE45A68, &unk_21D026440);
  sub_21CF7F198(a2, &v13[v53], &qword_27CE45A68, &unk_21D026440);
  v54 = *(v5 + 48);
  if (v54(v13, 1, v4) == 1)
  {
    if (v54(&v13[v53], 1, v4) == 1)
    {
      sub_21CF7F200(v13, &qword_27CE45A68, &unk_21D026440);
LABEL_57:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v55 = sub_21D022574();
      return v55 & 1;
    }

    goto LABEL_53;
  }

  sub_21CF7F198(v13, v10, &qword_27CE45A68, &unk_21D026440);
  if (v54(&v13[v53], 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
LABEL_53:
    sub_21CF7F200(v13, &qword_27CE464B8, &qword_21D02CC58);
    goto LABEL_54;
  }

  sub_21D000BB8(&v13[v53], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  v57 = sub_21D00CE40(v10, v7);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  sub_21CF7F200(v13, &qword_27CE45A68, &unk_21D026440);
  if (v57)
  {
    goto LABEL_57;
  }

LABEL_54:
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_21D00D7BC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4;
  if ((sub_21D00223C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v31 = v30[11];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  v36 = v30[12];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00D9DC(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v3 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = (&v77 - v6);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46470, &qword_21D02CBF8);
  MEMORY[0x28223BE20](v79);
  v82 = &v77 - v7;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v89 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v77 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v77 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46478, &qword_21D02CC00);
  v21 = MEMORY[0x28223BE20](v20);
  v84 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v86 = &v77 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v77 - v28;
  v88 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v30 = *(v88 + 20);
  v90 = v20;
  v91 = a1;
  v31 = *(v20 + 48);
  sub_21CF7F198(a1 + v30, v29, &qword_27CE45208, &qword_21D023520);
  sub_21CF7F198(v92 + v30, &v29[v31], &qword_27CE45208, &qword_21D023520);
  v32 = *(v9 + 48);
  if (v32(v29, 1, v8) == 1)
  {
    if (v32(&v29[v31], 1, v8) == 1)
    {
      sub_21CF7F200(v29, &qword_27CE45208, &qword_21D023520);
      goto LABEL_8;
    }

LABEL_6:
    v33 = &qword_27CE46478;
    v34 = &qword_21D02CC00;
    v35 = v29;
LABEL_26:
    sub_21CF7F200(v35, v33, v34);
    goto LABEL_27;
  }

  sub_21CF7F198(v29, v19, &qword_27CE45208, &qword_21D023520);
  if (v32(&v29[v31], 1, v8) == 1)
  {
    sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    goto LABEL_6;
  }

  v36 = v89;
  sub_21D000BB8(&v29[v31], v89, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  v37 = sub_21D00E794(v19, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D000B58(v36, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21CF7F200(v29, &qword_27CE45208, &qword_21D023520);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  v38 = v88;
  v39 = *(v88 + 24);
  v40 = *(v90 + 48);
  sub_21CF7F198(v91 + v39, v27, &qword_27CE45208, &qword_21D023520);
  sub_21CF7F198(v92 + v39, &v27[v40], &qword_27CE45208, &qword_21D023520);
  if (v32(v27, 1, v8) == 1)
  {
    if (v32(&v27[v40], 1, v8) == 1)
    {
      sub_21CF7F200(v27, &qword_27CE45208, &qword_21D023520);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v41 = v87;
  sub_21CF7F198(v27, v87, &qword_27CE45208, &qword_21D023520);
  if (v32(&v27[v40], 1, v8) == 1)
  {
    sub_21D000B58(v41, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
LABEL_13:
    v33 = &qword_27CE46478;
    v34 = &qword_21D02CC00;
    v35 = v27;
    goto LABEL_26;
  }

  v42 = v89;
  sub_21D000BB8(&v27[v40], v89, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  v43 = v41;
  v44 = sub_21D00E794(v41, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D000B58(v43, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21CF7F200(v27, &qword_27CE45208, &qword_21D023520);
  if ((v44 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  v45 = v38[7];
  v46 = *(v90 + 48);
  v47 = v86;
  sub_21CF7F198(v91 + v45, v86, &qword_27CE45208, &qword_21D023520);
  sub_21CF7F198(v92 + v45, v47 + v46, &qword_27CE45208, &qword_21D023520);
  if (v32(v47, 1, v8) == 1)
  {
    if (v32((v47 + v46), 1, v8) != 1)
    {
LABEL_25:
      v33 = &qword_27CE46478;
      v34 = &qword_21D02CC00;
      v35 = v47;
      goto LABEL_26;
    }

    sub_21CF7F200(v47, &qword_27CE45208, &qword_21D023520);
  }

  else
  {
    v48 = v85;
    sub_21CF7F198(v47, v85, &qword_27CE45208, &qword_21D023520);
    if (v32((v47 + v46), 1, v8) == 1)
    {
LABEL_24:
      sub_21D000B58(v48, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      goto LABEL_25;
    }

    v49 = v47 + v46;
    v50 = v89;
    sub_21D000BB8(v49, v89, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    v51 = sub_21D00E794(v48, v50, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    sub_21D000B58(v50, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    sub_21D000B58(v48, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    sub_21CF7F200(v47, &qword_27CE45208, &qword_21D023520);
    if ((v51 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v52 = v38[8];
  v53 = *(v90 + 48);
  v47 = v84;
  sub_21CF7F198(v91 + v52, v84, &qword_27CE45208, &qword_21D023520);
  v54 = v92;
  sub_21CF7F198(v92 + v52, v47 + v53, &qword_27CE45208, &qword_21D023520);
  if (v32(v47, 1, v8) != 1)
  {
    v48 = v83;
    sub_21CF7F198(v47, v83, &qword_27CE45208, &qword_21D023520);
    if (v32((v47 + v53), 1, v8) != 1)
    {
      v57 = v47 + v53;
      v58 = v89;
      sub_21D000BB8(v57, v89, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      v59 = sub_21D00E794(v48, v58, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      sub_21D000B58(v58, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      sub_21D000B58(v48, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      sub_21CF7F200(v47, &qword_27CE45208, &qword_21D023520);
      if ((v59 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v32((v47 + v53), 1, v8) != 1)
  {
    goto LABEL_25;
  }

  sub_21CF7F200(v47, &qword_27CE45208, &qword_21D023520);
LABEL_30:
  v60 = v38[9];
  v61 = v91;
  v62 = (v91 + v60);
  v63 = *(v91 + v60 + 8);
  v64 = (v54 + v60);
  v65 = v64[1];
  if (v63)
  {
    if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v65)
  {
    goto LABEL_27;
  }

  v66 = v38[10];
  v67 = *(v79 + 48);
  v68 = v82;
  sub_21CF7F198(v61 + v66, v82, &qword_27CE45200, &qword_21D023518);
  v69 = v54 + v66;
  v70 = v68;
  sub_21CF7F198(v69, v68 + v67, &qword_27CE45200, &qword_21D023518);
  v71 = v81;
  v72 = *(v80 + 48);
  if (v72(v68, 1, v81) == 1)
  {
    if (v72(v68 + v67, 1, v71) == 1)
    {
      sub_21CF7F200(v68, &qword_27CE45200, &qword_21D023518);
LABEL_44:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v55 = sub_21D022574();
      return v55 & 1;
    }

    goto LABEL_42;
  }

  v73 = v78;
  sub_21CF7F198(v70, v78, &qword_27CE45200, &qword_21D023518);
  if (v72(v70 + v67, 1, v71) == 1)
  {
    sub_21D000B58(v73, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
LABEL_42:
    v33 = &qword_27CE46470;
    v34 = &qword_21D02CBF8;
    v35 = v70;
    goto LABEL_26;
  }

  v74 = v70 + v67;
  v75 = v77;
  sub_21D000BB8(v74, v77, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  v76 = sub_21D00E628(v73, v75);
  sub_21D000B58(v75, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  sub_21D000B58(v73, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  sub_21CF7F200(v70, &qword_27CE45200, &qword_21D023518);
  if (v76)
  {
    goto LABEL_44;
  }

LABEL_27:
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_21D00E628(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(v4 + 32);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 9);
  v14 = a2 + v11;
  v15 = *(a2 + v11 + 9);
  if (v13)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15)
    {
      return 0;
    }

    v17 = *v12;
    v18 = *v14;
    if (v14[8])
    {
      if (v18)
      {
        if (v18 == 1)
        {
          if (v17 != 1)
          {
            return 0;
          }
        }

        else if (v17 != 2)
        {
          return 0;
        }
      }

      else if (v17)
      {
        return 0;
      }
    }

    else if (v17 != v18)
    {
      return 0;
    }
  }

  if (sub_21D0023F4(*a1, *a2) & 1) != 0 && (sub_21D0021AC(a1[1], a2[1]))
  {
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D00E794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_21D022B24();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (v18)
    {
      v19 = *v15 == *v17 && v16 == v18;
      if (v19 || (sub_21D022B24() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v18)
  {
LABEL_17:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21D022574() & 1;
  }

  return 0;
}

char *sub_21D00E8C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46390, &qword_21D02CB30);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v55 - v10;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = 0;
  *(v1 + 5) = 0xF000000000000000;
  v11 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  v56 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
  v14 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts] = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics] = 2;
  v16 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  v58 = v15;
  v59 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v60 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
  *&v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters] = v14;
  v18 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  v61 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  v19 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  (*(*(v19 - 8) + 56))(&v1[v18], 1, 1, v19);
  v62 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
  *&v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment] = v14;
  v20 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  v64 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  v21 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  (*(*(v21 - 8) + 56))(&v1[v20], 1, 1, v21);
  v22 = &v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode];
  v65 = &v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode];
  *v22 = 0;
  *(v22 + 4) = 256;
  swift_beginAccess();
  v23 = a1[2];
  v24 = a1[3];
  swift_beginAccess();
  *(v1 + 2) = v23;
  *(v1 + 3) = v24;
  swift_beginAccess();
  v25 = a1[4];
  v26 = a1[5];
  swift_beginAccess();
  v27 = *(v1 + 4);
  v28 = *(v1 + 5);
  *(v1 + 4) = v25;
  *(v1 + 5) = v26;

  sub_21CF9EDB8(v25, v26);
  sub_21CF94FCC(v27, v28);
  v29 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v30 = v57;
  sub_21CF7F198(a1 + v29, v57, &qword_27CE452B0, &qword_21D023670);
  v31 = v56;
  swift_beginAccess();
  sub_21CF8F4D4(v30, &v1[v31], &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
  swift_beginAccess();
  v33 = *(a1 + v32);
  swift_beginAccess();
  *&v1[v13] = v33;

  v34 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v58;
  swift_beginAccess();
  v1[v35] = v34;
  v36 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  v37 = v63;
  sub_21CF7F198(a1 + v36, v63, &qword_27CE45290, &qword_21D023650);
  v38 = v59;
  swift_beginAccess();
  sub_21CF8F4D4(v37, &v1[v38], &qword_27CE45290, &qword_21D023650);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = v60;
  swift_beginAccess();
  *&v1[v41] = v40;

  v42 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  v43 = v66;
  sub_21CF7F198(a1 + v42, v66, &qword_27CE46390, &qword_21D02CB30);
  v44 = v61;
  swift_beginAccess();
  sub_21CF8F4D4(v43, &v1[v44], &qword_27CE46390, &qword_21D02CB30);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = v62;
  swift_beginAccess();
  *&v1[v47] = v46;

  v48 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v49 = v67;
  sub_21CF7F198(a1 + v48, v67, &qword_27CE46380, &qword_21D02CB28);
  v50 = v64;
  swift_beginAccess();
  sub_21CF8F4D4(v49, &v1[v50], &qword_27CE46380, &qword_21D02CB28);
  swift_endAccess();
  v51 = a1 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode;
  swift_beginAccess();
  v52 = *v51;
  LOBYTE(v35) = v51[8];
  LOBYTE(v51) = v51[9];
  v53 = v65;
  swift_beginAccess();
  *v53 = v52;
  v53[8] = v35;
  v53[9] = v51;
  return v1;
}

uint64_t sub_21D00EFE8(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_21D00EFFC(result, a2);
  }

  return result;
}

uint64_t sub_21D00EFFC(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_21CF8F3E0(result, a2);
  }

  return result;
}

unint64_t sub_21D00F008()
{
  result = qword_27CE46560;
  if (!qword_27CE46560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46560);
  }

  return result;
}

unint64_t sub_21D00F05C()
{
  result = qword_27CE465C8;
  if (!qword_27CE465C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE465C8);
  }

  return result;
}

unint64_t sub_21D00F0B0()
{
  result = qword_27CE465D8;
  if (!qword_27CE465D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE465D8);
  }

  return result;
}

unint64_t sub_21D00F104()
{
  result = qword_28121DFE0[0];
  if (!qword_28121DFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28121DFE0);
  }

  return result;
}

unint64_t sub_21D00F158()
{
  result = qword_27CE466B0;
  if (!qword_27CE466B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE466B0);
  }

  return result;
}

unint64_t sub_21D00F1AC()
{
  result = qword_27CE466E8;
  if (!qword_27CE466E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE466E8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_167Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D021CF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_168Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D021CF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D00F314(uint64_t a1)
{
  result = sub_21D021CF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21D00F384()
{
  result = qword_27CE46700;
  if (!qword_27CE46700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46700);
  }

  return result;
}

unint64_t sub_21D00F3DC()
{
  result = qword_27CE46708;
  if (!qword_27CE46708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46708);
  }

  return result;
}

unint64_t sub_21D00F434()
{
  result = qword_27CE46710;
  if (!qword_27CE46710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46710);
  }

  return result;
}

unint64_t sub_21D00F488()
{
  result = qword_27CE46718;
  if (!qword_27CE46718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46718);
  }

  return result;
}

uint64_t type metadata accessor for PrivateMLClientAlertService(uint64_t a1)
{
  result = qword_28121D900;
  if (!qword_28121D900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D00F628(uint64_t a1)
{
  result = sub_21D0224A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21D00F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21CF7F198(a3, v25 - v10, &qword_27CE45310, &qword_21D0236E0);
  v12 = sub_21D022774();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21CF7F200(v11, &qword_27CE45310, &qword_21D0236E0);
  }

  else
  {
    sub_21D022764();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21D022734();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21D0225E4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21CF7F200(a3, &qword_27CE45310, &qword_21D0236E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21CF7F200(a3, &qword_27CE45310, &qword_21D0236E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_21D00F99C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a5;
  v11 = type metadata accessor for PrivateMLClientAlertService(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6B0 == 1)
  {
    v63 = a1;

    v15 = sub_21D022484();
    v16 = sub_21D0228B4();

    v17 = os_log_type_enabled(v15, v16);
    v64 = a3;
    v62 = v12;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v67[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_21CF9703C(v63, a2, v67);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_21CF9703C(a3, a4, v67);
      _os_log_impl(&dword_21CF72000, v15, v16, "displayPrivateMLClientFailedDialogIfInternal: %s RequestID:%s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v19, -1, -1);
      MEMORY[0x223D3ADE0](v18, -1, -1);
    }

    v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v21 = sub_21D022584();
    v22 = [v20 initWithSuiteName_];

    if (v22)
    {
      v23 = sub_21D022584();
      v24 = sub_21D022584();
      [v22 setObject:v23 forKey:v24];

      if (qword_27CE45188 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v67[0] = xmmword_27CE467C0;
      v67[1] = unk_27CE467D0;
      v68 = byte_27CE467E0;
      sub_21CF7F198(v67, v66, &qword_27CE45288, &qword_21D023970);
      v25 = sub_21D01561C();
      sub_21CF7F200(v67, &qword_27CE45288, &qword_21D023970);
      if (v25)
      {
        v26 = sub_21D022484();
        v27 = sub_21D0228A4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_21CF72000, v26, v27, "Ignore tap to radar per user default settings", v28, 2u);
          MEMORY[0x223D3ADE0](v28, -1, -1);
        }
      }

      else
      {
        v61 = v22;
        type metadata accessor for PrivateMLClientAlert(0);
        v32 = swift_allocObject();
        sub_21D022494();
        *(v32 + 16) = 0xD00000000000001DLL;
        *(v32 + 24) = 0x800000021D02FDE0;
        *(v32 + 32) = 0xD00000000000002DLL;
        *(v32 + 40) = 0x800000021D02FE00;
        strcpy((v32 + 48), "File a Radar");
        *(v32 + 61) = 0;
        *(v32 + 62) = -5120;
        *(v32 + 64) = 0x7373696D736944;
        *(v32 + 72) = 0xE700000000000000;
        v60 = v32;
        v59 = type metadata accessor for PrivateMLClientAlertService;
        sub_21D0114F8(v6, &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrivateMLClientAlertService);
        v33 = *(v62 + 80);
        v58 = a4;
        v34 = (v33 + 16) & ~v33;
        v62 = v6;
        v35 = (v34 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
        v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
        v37 = a2;
        v38 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
        v39 = swift_allocObject();
        sub_21D010EA0(&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v34);
        v40 = (v39 + v35);
        v41 = v62;
        *v40 = v63;
        v40[1] = v37;
        v42 = (v39 + v36);
        v43 = v65;
        v44 = v58;
        *v42 = v64;
        v42[1] = v44;
        *(v39 + v38) = v43;
        sub_21D0114F8(v41, v14, v59);
        v45 = swift_allocObject();
        sub_21D010EA0(v14, v45 + v34);

        v46 = sub_21D022484();
        v47 = sub_21D0228B4();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_21CF72000, v46, v47, "Display Alert Box started", v48, 2u);
          MEMORY[0x223D3ADE0](v48, -1, -1);
        }

        v49 = v60;
        sub_21CF980B0(sub_21D010F04, v39, sub_21D010FC0, v45);

        v50 = sub_21D022484();
        v51 = sub_21D0228B4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_21CF72000, v50, v51, "Display Alert Box finished", v52, 2u);
          MEMORY[0x223D3ADE0](v52, -1, -1);

          swift_setDeallocating();
          v53 = OBJC_IVAR____TtC15PrivateMLClient20PrivateMLClientAlert_logger;
          v54 = sub_21D0224A4();
          (*(*(v54 - 8) + 8))(v49 + v53, v54);
          swift_deallocClassInstance();
        }

        else
        {

          swift_setDeallocating();
          v55 = OBJC_IVAR____TtC15PrivateMLClient20PrivateMLClientAlert_logger;
          v56 = sub_21D0224A4();
          (*(*(v56 - 8) + 8))(v49 + v55, v56);
          swift_deallocClassInstance();
        }
      }
    }

    else
    {
      v29 = sub_21D022484();
      v30 = sub_21D0228C4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21CF72000, v29, v30, "Failed to write requestID to userdefaults", v31, 2u);
        MEMORY[0x223D3ADE0](v31, -1, -1);
      }
    }
  }
}

uint64_t sub_21D010228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v58 = a4;
  v59 = a5;
  v57 = a3;
  v66 = a2;
  v7 = type metadata accessor for PrivateMLClientAlertService(0);
  v8 = v7 - 8;
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v64 = v9;
  v65 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45730, &qword_21D0253D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v55 - v13;
  v15 = type metadata accessor for TapToRadarDraft(0);
  v67 = swift_allocBox();
  v17 = v16;
  *v16 = 0x4449656C646E7542;
  *(v16 + 8) = 0xE800000000000000;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  strcpy((v16 + 72), "Classification");
  *(v16 + 87) = -18;
  *(v16 + 88) = 10;
  *(v16 + 96) = 0x6375646F72706552;
  *(v16 + 104) = 0xEF7974696C696269;
  *(v16 + 112) = 6;
  *(v16 + 120) = 0x656C746954;
  *(v16 + 128) = 0xE500000000000000;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 152) = 0x7470697263736544;
  *(v16 + 160) = 0xEB000000006E6F69;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 184) = 0x7364726F7779654BLL;
  *(v16 + 192) = 0xE800000000000000;
  v18 = MEMORY[0x277D84F90];
  *(v16 + 200) = MEMORY[0x277D84F90];
  v19 = (v16 + v15[11]);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE45738, &qword_21D0253D8) + 36);
  v56 = v20;
  v21 = sub_21D021A34();
  v22 = *(v21 - 8);
  v55[0] = *(v22 + 56);
  v55[1] = v22 + 56;
  (v55[0])(v19 + v20, 1, 1, v21);
  *v19 = 0x7349664F656D6954;
  v19[1] = 0xEB00000000657573;
  v23 = (v17 + v15[12]);
  *v23 = 0x656D686361747441;
  v23[1] = 0xEB0000000073746ELL;
  v23[2] = v18;
  v24 = (v17 + v15[13]);
  *v24 = 0xD000000000000011;
  v24[1] = 0x800000021D02FE30;
  v24[2] = v18;
  v25 = (v17 + v15[14]);
  *v25 = 0xD000000000000014;
  v25[1] = 0x800000021D02FE50;
  v25[2] = v18;
  v26 = (v17 + v15[15]);
  strcpy(v26, "DeleteOnAttach");
  v26[15] = -18;
  v26[16] = 0;
  v27 = (v17 + v15[16]);
  *v27 = 0x4449656369766544;
  v27[1] = 0xE900000000000073;
  v27[2] = v18;
  v28 = v17 + v15[17];
  strcpy(v28, "DeviceClasses");
  *(v28 + 14) = -4864;
  *(v28 + 16) = v18;
  v29 = v17 + v15[18];
  strcpy(v29, "DeviceModels");
  *(v29 + 13) = 0;
  *(v29 + 14) = -5120;
  *(v29 + 16) = v18;
  v30 = (v17 + v15[19]);
  *v30 = 0xD000000000000016;
  v30[1] = 0x800000021D02FE70;
  v30[2] = 0;
  v31 = v17 + v15[20];
  *v31 = 0xD00000000000001ALL;
  *(v31 + 8) = 0x800000021D02FE90;
  *(v31 + 16) = 0;
  v32 = v17 + v15[21];
  *v32 = 0x676169446F747541;
  *(v32 + 8) = 0xEF73636974736F6ELL;
  *(v32 + 16) = 0;
  v33 = (v17 + v15[22]);
  *v33 = 0xD00000000000001BLL;
  v33[1] = 0x800000021D02FEB0;
  v33[2] = v18;
  v34 = (v17 + v15[23]);
  *v34 = 0xD000000000000018;
  v34[1] = 0x800000021D02FED0;
  v34[2] = 0;
  v34[3] = 0;
  v35 = (v17 + v15[24]);
  *v35 = 0xD000000000000012;
  v35[1] = 0x800000021D02FEF0;
  v35[2] = 0;
  v35[3] = 0;
  *(v17 + 32) = *(v66 + *(v8 + 28));
  *(v17 + 40) = xmmword_21D02CE70;
  *(v17 + 56) = xmmword_21D02CE80;
  *(v17 + 88) = 6;
  *(v17 + 112) = 5;
  v37 = v57;
  v36 = v58;
  *(v17 + 136) = v57;
  *(v17 + 144) = v36;
  v68 = 0;
  v69 = 0xE000000000000000;

  sub_21D0229A4();
  MEMORY[0x223D3A110](0xD000000000000084, 0x800000021D02FF10);
  MEMORY[0x223D3A110](v59, v60);
  MEMORY[0x223D3A110](0xD000000000000020, 0x800000021D02FFA0);
  MEMORY[0x223D3A110](v37, v36);
  MEMORY[0x223D3A110](10, 0xE100000000000000);
  v38 = v69;
  *(v17 + 168) = v68;
  *(v17 + 176) = v38;

  sub_21D021A24();
  (v55[0])(v14, 0, 1, v21);
  sub_21D011220(v14, v19 + v56);
  if (*(v61 + 16))
  {
    v25[2] = v61;
  }

  else
  {
    v25[2] = &unk_282E91E30;
  }

  v39 = v66;
  v40 = sub_21D022484();
  v41 = sub_21D0228B4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v70 = v43;
    *v42 = 136315138;
    swift_beginAccess();

    v45 = MEMORY[0x223D3A1D0](v44, MEMORY[0x277D837D0]);
    v47 = v46;

    v48 = sub_21CF9703C(v45, v47, &v70);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_21CF72000, v40, v41, "Using DiagnosticExtension: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x223D3ADE0](v43, -1, -1);
    MEMORY[0x223D3ADE0](v42, -1, -1);
  }

  v49 = sub_21D022774();
  v50 = v62;
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  v51 = v65;
  sub_21D0114F8(v39, v65, type metadata accessor for PrivateMLClientAlertService);
  v52 = (*(v63 + 80) + 40) & ~*(v63 + 80);
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v67;
  sub_21D010EA0(v51, v53 + v52);

  sub_21D00F69C(0, 0, v50, &unk_21D02CEC8, v53);
}